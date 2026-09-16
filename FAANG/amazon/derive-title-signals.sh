#!/usr/bin/env sh
set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
repo_root=$(git -C "$script_dir" rev-parse --show-toplevel)
input="$repo_root/FAANG/amazon/inventory/2026-09-16T155726Z/jobs.tsv"
out_dir="$repo_root/FAANG/amazon/demand/2026-09-16-title-signals"

mkdir -p "$out_dir"

awk -F '\t' -v OFS='\t' -v out_dir="$out_dir" '
function lower(s) {
    return tolower(s)
}
function is_ml_title(s, x) {
    x = lower(s)
    return x ~ /machine learning/ || x ~ /(^|[^[:alnum:]_])ml([^[:alnum:]_]|$)/ || x ~ /(^|[^[:alnum:]_])aiml([^[:alnum:]_]|$)/
}
function is_ai_title(s, x) {
    x = lower(s)
    return x ~ /artificial intelligence/ || x ~ /generative[ -]?ai/ || x ~ /gen[ -]?ai/ || x ~ /genai/ || x ~ /agentic[ -]?ai/ || x ~ /(^|[^[:alnum:]_])ai([^[:alnum:]_]|$)/ || x ~ /(^|[^[:alnum:]_])aiml([^[:alnum:]_]|$)/
}
function is_software_ic_title(s, x) {
    x = lower(s)
    if (x ~ /(manager|director|head of)/) return 0
    return x ~ /software development engineer/ || x ~ /software dev engineer/ || x ~ /software developer/ || x ~ /software engineer/ || x ~ /software builder/ || x ~ /(^|[^[:alnum:]_])sde([^[:alnum:]_]|$)/
}
NR == 1 {
    sub(/\r$/, "", $0)
    header = $0
    print header > (out_dir "/explicit-ml-title.tsv")
    print header > (out_dir "/explicit-ai-title.tsv")
    print header > (out_dir "/explicit-ml-or-ai-title.tsv")
    print header > (out_dir "/explicit-software-ic-title.tsv")
    next
}
{
    sub(/\r$/, "", $0)
    title = $4
    ml = is_ml_title(title)
    ai = is_ai_title(title)
    software_ic = is_software_ic_title(title)

    total++
    if (ml) {
        ml_count++
        print $0 > (out_dir "/explicit-ml-title.tsv")
    }
    if (ai) {
        ai_count++
        print $0 > (out_dir "/explicit-ai-title.tsv")
    }
    if (ml || ai) {
        ml_ai_count++
        print $0 > (out_dir "/explicit-ml-or-ai-title.tsv")
    }
    if (software_ic) {
        software_ic_count++
        print $0 > (out_dir "/explicit-software-ic-title.tsv")
    }
    if ((ml || ai) && software_ic) ml_ai_software_ic_count++
}
END {
    print "signal", "requisitions" > (out_dir "/counts.tsv")
    print "population", total >> (out_dir "/counts.tsv")
    print "explicit_ml_title", ml_count + 0 >> (out_dir "/counts.tsv")
    print "explicit_ai_title", ai_count + 0 >> (out_dir "/counts.tsv")
    print "explicit_ml_or_ai_title", ml_ai_count + 0 >> (out_dir "/counts.tsv")
    print "explicit_software_ic_title", software_ic_count + 0 >> (out_dir "/counts.tsv")
    print "explicit_ml_or_ai_and_software_ic_title", ml_ai_software_ic_count + 0 >> (out_dir "/counts.tsv")
}
' "$input"

population=$(awk -F '\t' '$1 == "population" {print $2}' "$out_dir/counts.tsv")
ml=$(awk -F '\t' '$1 == "explicit_ml_title" {print $2}' "$out_dir/counts.tsv")
ai=$(awk -F '\t' '$1 == "explicit_ai_title" {print $2}' "$out_dir/counts.tsv")
ml_ai=$(awk -F '\t' '$1 == "explicit_ml_or_ai_title" {print $2}' "$out_dir/counts.tsv")
software_ic=$(awk -F '\t' '$1 == "explicit_software_ic_title" {print $2}' "$out_dir/counts.tsv")
ml_ai_software_ic=$(awk -F '\t' '$1 == "explicit_ml_or_ai_and_software_ic_title" {print $2}' "$out_dir/counts.tsv")

cat > "$out_dir/README.md" <<EOF
# Amazon title signals — 2026-09-16 snapshot

This is a deterministic derivation from the already preserved 2,613-requisition Amazon Software Development snapshot. It does **not** re-fetch Amazon Jobs and therefore keeps the original timestamp and denominator fixed.

## Counts

- population: **$population** requisitions
- title explicitly says machine learning / ML / AIML: **$ml**
- title explicitly says AI / artificial intelligence / GenAI / agentic AI / AIML: **$ai**
- title explicitly says either ML or AI: **$ml_ai**
- title explicitly identifies a non-management software-development/software-engineering/SDE role: **$software_ic**
- title has explicit ML/AI language and also matches the software-IC title screen: **$ml_ai_software_ic**

These are **title signals**, not occupational classifications. They provide a conservative lower bound on requisitions whose public title itself foregrounds ML/AI. They will miss ML-centered work with generic titles, and they can include software/infrastructure jobs whose title contains AI/ML because of the product or team rather than because the employee is an ML researcher or model developer.

The earlier body-wide screening tag matched **836** requisitions for ML/AI language. That is an upper retrieval queue, not 836 ML jobs. The gap between body-wide mentions and explicit-title signals is exactly what the next manual/body-aware classification has to resolve.

Files in this directory preserve the matching requisitions so the screen can be audited rather than trusted from the count alone.
EOF

cat "$out_dir/counts.tsv"
