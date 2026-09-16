#!/usr/bin/env bash
set -euo pipefail

script_dir="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
repo_root="$(git -C "$script_dir" rev-parse --show-toplevel)"
endpoint='https://www.amazon.jobs/en/search.json'
category='software-development'
page_size=100
started_at="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
snapshot_key="$(date -u +%Y-%m-%dT%H%M%SZ)"
out_dir="$repo_root/FAANG/amazon/inventory/$snapshot_key"
temporary="$(mktemp -d "${TMPDIR:-/tmp}/blackball-amazon-jobs.XXXXXX")"

cleanup() {
    rm -rf "$temporary"
}
trap cleanup EXIT HUP INT TERM

mkdir -p "$out_dir"

fetch_page() {
    local offset="$1"
    local target="$temporary/page-$offset.json"
    curl --fail --location --silent --show-error \
        --retry 4 --retry-delay 2 \
        "$endpoint?offset=$offset&result_limit=$page_size&sort=relevant&category%5B%5D=$category" \
        -o "$target"

    jq -e '(.hits | type) == "number" and (.jobs | type) == "array"' "$target" >/dev/null
}

fetch_page 0
hits="$(jq -r '.hits' "$temporary/page-0.json")"
first_count="$(jq -r '.jobs | length' "$temporary/page-0.json")"

if [ "$hits" -lt 0 ]; then
    echo "invalid negative hit count: $hits" >&2
    exit 2
fi
if [ "$hits" -gt 0 ] && [ "$first_count" -eq 0 ]; then
    echo "Amazon reported $hits hits but returned no first-page jobs" >&2
    exit 3
fi

offset="$first_count"
pages=1
while [ "$offset" -lt "$hits" ]; do
    fetch_page "$offset"
    count="$(jq -r '.jobs | length' "$temporary/page-$offset.json")"
    if [ "$count" -eq 0 ]; then
        echo "pagination stopped early at offset $offset of $hits" >&2
        exit 4
    fi
    offset=$((offset + count))
    pages=$((pages + 1))
    if [ "$pages" -gt 100 ]; then
        echo "pagination safety limit exceeded" >&2
        exit 5
    fi
done

python3 - "$temporary" "$out_dir" "$started_at" "$endpoint" "$category" "$hits" "$pages" <<'PY'
import csv
import hashlib
import html
import json
import pathlib
import re
import sys
from collections import Counter
from datetime import datetime, timezone

page_dir = pathlib.Path(sys.argv[1])
out_dir = pathlib.Path(sys.argv[2])
started_at = sys.argv[3]
endpoint = sys.argv[4]
category = sys.argv[5]
initial_hits = int(sys.argv[6])
pages = int(sys.argv[7])

rules = [
    ("compiler", r"\bcompiler(s| engineering)?\b|\bllvm\b|\bmlir\b|\bopenxla\b|\bstablehlo\b|\bcode[- ]?gen(eration)?\b|\btoolchain\b"),
    ("machine_learning", r"\bmachine learning\b|\bartificial intelligence\b|\bgenerative ai\b|\blarge language model(s)?\b|\bllm(s)?\b|\bpytorch\b|\btensorflow\b|\bjax\b"),
    ("distributed_systems", r"\bdistributed system(s)?\b|\bdistributed computing\b|\bfault[- ]tolerant\b|\bhighly available\b|\bmulti[- ]tier(ed)?\b"),
    ("cloud_infrastructure", r"\bcloud\b|\binfrastructure\b|\baws\b|\bec2\b|\bs3\b|\becs\b|\blambda\b|\bkubernetes\b|\bcontainer(s|ized)?\b"),
    ("networking", r"\bnetwork(s|ing)?\b|\brouting\b|\brdma\b|\btcp\b|\budp\b|\bsdn\b|\bswitch(es|ing)?\b"),
    ("database_search", r"\bdatabase(s)?\b|\bstorage\b|\bquery\b|\bsearch\b|\bopensearch\b|\bdynamodb\b|\bsql\b|\bnosql\b"),
    ("security_identity", r"\bsecurity\b|\bidentity\b|\bauthentication\b|\bauthorization\b|\biam\b|\bvulnerabilit(y|ies)\b|\bthreat(s)?\b"),
    ("embedded_systems", r"\bembedded\b|\bfirmware\b|\brtos\b|\bkernel\b|\bdevice driver(s)?\b|\bdriver development\b"),
    ("frontend_mobile", r"\bfront[- ]?end\b|\breact\b|\btypescript\b|\bandroid\b|\bios\b|\bmobile development\b"),
    ("graphics_media", r"\bgraphics\b|\bvideo processing\b|\bstreaming\b|\brender(ing|er)?\b|\bcomputer vision\b|\bgpu\b"),
    ("application_backend", r"\bback[- ]?end\b|\bmicroservice(s)?\b|\bweb service(s)?\b|\bapi(s)?\b|\bservice-oriented\b"),
    ("operations_observability", r"\bon[- ]call\b|\bmonitoring\b|\bobservability\b|\bincident(s)?\b|\blivesite\b|\bproduction issue(s)?\b"),
]
compiled_rules = [(tag, re.compile(pattern, re.I)) for tag, pattern in rules]
degree_re = re.compile(r"\b(bachelor'?s|bachelors|master'?s|masters|ph\.?d\.?|degree)\b", re.I)
manager_title_re = re.compile(r"\b(manager|director|head of)\b", re.I)


def flatten(value):
    if value is None:
        return ""
    if isinstance(value, (str, int, float, bool)):
        return str(value)
    if isinstance(value, list):
        return "; ".join(flatten(x) for x in value if flatten(x))
    if isinstance(value, dict):
        return "; ".join(f"{k}={flatten(v)}" for k, v in sorted(value.items()) if flatten(v))
    return str(value)


def clean_text(value):
    text = flatten(value)
    text = re.sub(r"<[^>]+>", " ", text)
    text = html.unescape(text)
    return re.sub(r"\s+", " ", text).strip()


def first(job, *keys):
    for key in keys:
        if key in job and job[key] not in (None, "", []):
            return job[key]
    return ""

raw_jobs = []
for page in sorted(page_dir.glob("page-*.json"), key=lambda p: int(p.stem.split("-")[1])):
    payload = json.loads(page.read_text(encoding="utf-8"))
    raw_jobs.extend(payload["jobs"])

by_id = {}
missing_id = 0
for job in raw_jobs:
    job_id = first(job, "id", "job_id", "icims_id")
    if job_id == "":
        missing_id += 1
        continue
    key = str(job_id)
    if key not in by_id:
        by_id[key] = job

if missing_id:
    raise SystemExit(f"{missing_id} jobs lacked a stable job id")

retrieved_at = datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
rows = []
tag_counts = Counter()
degree_counts = Counter()
manager_counts = Counter()
title_counts = Counter()
country_counts = Counter()
compiler_rows = []

for job_id in sorted(by_id, key=lambda x: (len(x), x)):
    job = by_id[job_id]
    canonical = json.dumps(job, ensure_ascii=False, sort_keys=True, separators=(",", ":"))
    record_hash = hashlib.sha256(canonical.encode("utf-8")).hexdigest()

    title = clean_text(first(job, "title", "job_title"))
    location = clean_text(first(job, "location", "normalized_location"))
    city = clean_text(first(job, "city"))
    state = clean_text(first(job, "state", "region"))
    country = clean_text(first(job, "country_code", "country"))
    posted = clean_text(first(job, "posted_date", "posted_at", "publication_date"))
    updated = clean_text(first(job, "updated_at", "updated_date"))
    job_category = clean_text(first(job, "job_category", "category"))
    business_category = clean_text(first(job, "business_category", "business_categories"))
    team = clean_text(first(job, "team", "team_name"))
    schedule_type = clean_text(first(job, "schedule_type", "job_type"))
    path = clean_text(first(job, "job_path", "url"))
    if path.startswith("/"):
        source_url = "https://www.amazon.jobs" + path
    elif path.startswith("http://") or path.startswith("https://"):
        source_url = path
    else:
        source_url = f"https://www.amazon.jobs/en/jobs/{job_id}"

    description = clean_text(first(job, "description"))
    basic = clean_text(first(job, "basic_qualifications", "basicQualifications"))
    preferred = clean_text(first(job, "preferred_qualifications", "preferredQualifications"))
    haystack = "\n".join((title, description, basic, preferred))

    tags = []
    for tag, pattern in compiled_rules:
        if pattern.search(haystack):
            tags.append(tag)
            tag_counts[tag] += 1
    if not tags:
        tag_counts["untagged"] += 1

    if degree_re.search(basic):
        degree_status = "basic_qualifications"
    elif degree_re.search(preferred):
        degree_status = "preferred_only"
    else:
        degree_status = "not_stated"
    degree_counts[degree_status] += 1

    source_manager = first(job, "is_manager")
    if source_manager is True or str(source_manager).lower() == "true":
        manager_status = "source_true"
    elif source_manager is False or str(source_manager).lower() == "false":
        manager_status = "source_false"
    elif manager_title_re.search(title):
        manager_status = "title_inferred"
    else:
        manager_status = "not_identified"
    manager_counts[manager_status] += 1

    title_counts[title or "[missing title]"] += 1
    country_counts[country or "[missing country]"] += 1

    row = {
        "retrieved_at": retrieved_at,
        "job_id": job_id,
        "title": title,
        "location": location,
        "city": city,
        "state": state,
        "country": country,
        "posted": posted,
        "updated": updated,
        "job_category": job_category,
        "business_category": business_category,
        "team": team,
        "schedule_type": schedule_type,
        "manager_status": manager_status,
        "degree_status": degree_status,
        "domain_tags": ",".join(tags),
        "source_url": source_url,
        "source_record_sha256": record_hash,
    }
    rows.append(row)
    if "compiler" in tags:
        compiler_rows.append(row)

fields = [
    "retrieved_at", "job_id", "title", "location", "city", "state", "country",
    "posted", "updated", "job_category", "business_category", "team", "schedule_type",
    "manager_status", "degree_status", "domain_tags", "source_url", "source_record_sha256",
]

def write_tsv(path, records, fieldnames):
    with path.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, delimiter="\t", fieldnames=fieldnames, extrasaction="ignore")
        writer.writeheader()
        writer.writerows(records)

write_tsv(out_dir / "jobs.tsv", rows, fields)
write_tsv(out_dir / "compiler-jobs.tsv", compiler_rows, fields)

with (out_dir / "classification-rules.tsv").open("w", encoding="utf-8", newline="") as f:
    writer = csv.writer(f, delimiter="\t")
    writer.writerow(["tag", "case_insensitive_regex"])
    writer.writerows(rules)

with (out_dir / "tag-counts.tsv").open("w", encoding="utf-8", newline="") as f:
    writer = csv.writer(f, delimiter="\t")
    writer.writerow(["tag", "requisitions"])
    for tag, count in sorted(tag_counts.items(), key=lambda x: (-x[1], x[0])):
        writer.writerow([tag, count])

with (out_dir / "degree-counts.tsv").open("w", encoding="utf-8", newline="") as f:
    writer = csv.writer(f, delimiter="\t")
    writer.writerow(["degree_status", "requisitions"])
    for status, count in sorted(degree_counts.items(), key=lambda x: (-x[1], x[0])):
        writer.writerow([status, count])

with (out_dir / "manager-counts.tsv").open("w", encoding="utf-8", newline="") as f:
    writer = csv.writer(f, delimiter="\t")
    writer.writerow(["manager_status", "requisitions"])
    for status, count in sorted(manager_counts.items(), key=lambda x: (-x[1], x[0])):
        writer.writerow([status, count])

with (out_dir / "country-counts.tsv").open("w", encoding="utf-8", newline="") as f:
    writer = csv.writer(f, delimiter="\t")
    writer.writerow(["country", "requisitions"])
    for country, count in sorted(country_counts.items(), key=lambda x: (-x[1], x[0])):
        writer.writerow([country, count])

with (out_dir / "title-counts.tsv").open("w", encoding="utf-8", newline="") as f:
    writer = csv.writer(f, delimiter="\t")
    writer.writerow(["title", "requisitions"])
    for title, count in sorted(title_counts.items(), key=lambda x: (-x[1], x[0])):
        writer.writerow([title, count])

raw_count = len(raw_jobs)
unique_count = len(rows)
duplicates = raw_count - unique_count
receipt = [
    ("retrieval_started_at", started_at),
    ("retrieval_finished_at", retrieved_at),
    ("endpoint", endpoint),
    ("category_parameter", category),
    ("sort", "relevant"),
    ("page_size", "100"),
    ("pages_fetched", str(pages)),
    ("initial_hits", str(initial_hits)),
    ("raw_records", str(raw_count)),
    ("unique_job_ids", str(unique_count)),
    ("duplicate_records", str(duplicates)),
    ("compiler_tagged", str(tag_counts.get("compiler", 0))),
    ("full_posting_bodies_committed", "no"),
]
with (out_dir / "receipt.tsv").open("w", encoding="utf-8", newline="") as f:
    writer = csv.writer(f, delimiter="\t")
    writer.writerow(["field", "value"])
    writer.writerows(receipt)

summary = f"""# Amazon Software Development snapshot\n\nRetrieval started: `{started_at}`  \nRetrieval finished: `{retrieved_at}`\n\n- Amazon `/en/search.json` initial hit count: **{initial_hits}**\n- Raw records fetched across {pages} pages: **{raw_count}**\n- Unique job IDs after deduplication: **{unique_count}**\n- Duplicate page records removed: **{duplicates}**\n- Requisitions tagged `compiler` by the checked-in snapshot rules: **{tag_counts.get('compiler', 0)}**\n\nThis is a requisition inventory, not a count of hires or employees. Amazon's search index can change during pagination, so `initial_hits` and the deduplicated count are preserved separately rather than forced to agree. Classification is multi-label and regex-based; counts are descriptive screening results that require audit before interpretation. Full posting bodies were used transiently for classification but are not committed. `source_record_sha256` hashes the canonical source record seen during acquisition.\n"""
(out_dir / "README.md").write_text(summary, encoding="utf-8")
PY

printf 'wrote %s\n' "$out_dir"
cat "$out_dir/receipt.tsv"
