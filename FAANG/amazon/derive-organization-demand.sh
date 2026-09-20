#!/usr/bin/env sh
set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
repo_root=$(git -C "$script_dir" rev-parse --show-toplevel)
input="$repo_root/FAANG/amazon/inventory/2026-09-16T155726Z/jobs.tsv"
out_dir="$repo_root/FAANG/amazon/org-tree/2026-09-16-demand-map"

mkdir -p "$out_dir"

python3 - "$input" "$out_dir" <<'PY'
import csv
import pathlib
import sys
from collections import Counter, defaultdict

input_path = pathlib.Path(sys.argv[1])
out_dir = pathlib.Path(sys.argv[2])

rows = []
with input_path.open(encoding="utf-8", newline="") as f:
    reader = csv.DictReader(f, delimiter="\t")
    for row in reader:
        rows.append(row)


def clean(value, missing):
    value = (value or "").strip()
    return value if value else missing


def is_management(row):
    status = clean(row.get("manager_status"), "not_identified")
    return status not in {"not_identified", "source_false"}

business = defaultdict(lambda: {
    "requisitions": 0,
    "management": 0,
    "countries": set(),
    "team_labels": set(),
    "titles": set(),
})
team = defaultdict(lambda: {
    "requisitions": 0,
    "management": 0,
    "countries": set(),
    "business_categories": set(),
    "titles": set(),
})
business_team = defaultdict(lambda: {
    "requisitions": 0,
    "management": 0,
    "countries": set(),
    "titles": set(),
})

for row in rows:
    b = clean(row.get("business_category"), "[business category not stated]")
    t = clean(row.get("team"), "[team label not stated]")
    country = clean(row.get("country"), "[country not stated]")
    title = clean(row.get("title"), "[title not stated]")
    manager = is_management(row)

    business[b]["requisitions"] += 1
    business[b]["management"] += int(manager)
    business[b]["countries"].add(country)
    business[b]["team_labels"].add(t)
    business[b]["titles"].add(title)

    team[t]["requisitions"] += 1
    team[t]["management"] += int(manager)
    team[t]["countries"].add(country)
    team[t]["business_categories"].add(b)
    team[t]["titles"].add(title)

    key = (b, t)
    business_team[key]["requisitions"] += 1
    business_team[key]["management"] += int(manager)
    business_team[key]["countries"].add(country)
    business_team[key]["titles"].add(title)


def write_tsv(path, fieldnames, records):
    with path.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, delimiter="\t", fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(records)

business_records = []
for name, data in sorted(business.items(), key=lambda item: (-item[1]["requisitions"], item[0])):
    business_records.append({
        "business_category": name,
        "requisitions": data["requisitions"],
        "management_requisitions": data["management"],
        "ic_or_unidentified_requisitions": data["requisitions"] - data["management"],
        "distinct_team_labels": len(data["team_labels"]),
        "distinct_titles": len(data["titles"]),
        "countries": len(data["countries"]),
    })
write_tsv(
    out_dir / "business-category-counts.tsv",
    ["business_category", "requisitions", "management_requisitions", "ic_or_unidentified_requisitions", "distinct_team_labels", "distinct_titles", "countries"],
    business_records,
)

team_records = []
for name, data in sorted(team.items(), key=lambda item: (-item[1]["requisitions"], item[0])):
    team_records.append({
        "team_label": name,
        "requisitions": data["requisitions"],
        "management_requisitions": data["management"],
        "ic_or_unidentified_requisitions": data["requisitions"] - data["management"],
        "distinct_business_categories": len(data["business_categories"]),
        "business_categories": ",".join(sorted(data["business_categories"])),
        "distinct_titles": len(data["titles"]),
        "countries": len(data["countries"]),
    })
write_tsv(
    out_dir / "team-label-counts.tsv",
    ["team_label", "requisitions", "management_requisitions", "ic_or_unidentified_requisitions", "distinct_business_categories", "business_categories", "distinct_titles", "countries"],
    team_records,
)

business_team_records = []
for (b, t), data in sorted(business_team.items(), key=lambda item: (-item[1]["requisitions"], item[0][0], item[0][1])):
    business_team_records.append({
        "business_category": b,
        "team_label": t,
        "requisitions": data["requisitions"],
        "management_requisitions": data["management"],
        "ic_or_unidentified_requisitions": data["requisitions"] - data["management"],
        "distinct_titles": len(data["titles"]),
        "countries": len(data["countries"]),
    })
write_tsv(
    out_dir / "business-team-counts.tsv",
    ["business_category", "team_label", "requisitions", "management_requisitions", "ic_or_unidentified_requisitions", "distinct_titles", "countries"],
    business_team_records,
)

# A compact top-title view helps identify named products/services inside each
# business category without pretending title strings are formal org nodes.
title_counts = Counter((clean(r.get("business_category"), "[business category not stated]"), clean(r.get("title"), "[title not stated]")) for r in rows)
ranked_by_business = defaultdict(list)
for (b, title), count in title_counts.items():
    ranked_by_business[b].append((count, title))

top_title_records = []
for b, items in sorted(ranked_by_business.items()):
    for rank, (count, title) in enumerate(sorted(items, key=lambda x: (-x[0], x[1]))[:25], start=1):
        top_title_records.append({
            "business_category": b,
            "rank_within_business": rank,
            "requisitions": count,
            "title": title,
        })
write_tsv(
    out_dir / "top-titles-by-business.tsv",
    ["business_category", "rank_within_business", "requisitions", "title"],
    top_title_records,
)

with (out_dir / "receipt.tsv").open("w", encoding="utf-8", newline="") as f:
    writer = csv.writer(f, delimiter="\t")
    writer.writerow(["field", "value"])
    writer.writerow(["source_snapshot", "FAANG/amazon/inventory/2026-09-16T155726Z/jobs.tsv"])
    writer.writerow(["population", len(rows)])
    writer.writerow(["distinct_business_categories", len(business)])
    writer.writerow(["distinct_team_labels", len(team)])
    writer.writerow(["distinct_business_team_pairs", len(business_team)])
    writer.writerow(["method", "exact metadata grouping; no inferred reporting edges"])

print(f"population\t{len(rows)}")
print(f"business_categories\t{len(business)}")
print(f"team_labels\t{len(team)}")
print(f"business_team_pairs\t{len(business_team)}")
PY
