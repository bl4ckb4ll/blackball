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
function is_management_title(s, x) {
    x = lower(s)
    return x ~ /(manager|director|head of)/
}
function is_software_ic_title(s, x) {
    x = lower(s)
    if (is_management_title(s)) return 0
    return x ~ /software development engineer/ || x ~ /software dev engineer/ || x ~ /software developer/ || x ~ /software engineer/ || x ~ /software builder/ || x ~ /(^|[^[:alnum:]_])sde([^[:alnum:]_]|$)/
}
function ml_ai_title_family(s, x) {
    x = lower(s)

    # This is only a title taxonomy. Priority is deliberate so each title lands
    # in one bucket and the counts add back to the ML/AI-title union.
    if (is_management_title(s)) return "management"
    if (x ~ /(asic|soc|firmware|hardware|chip|silicon|fpga|physical design|verification|dft|post-silicon|pre-silicon|electrical|rf engineer|architecture modeling)/) return "hardware_firmware"
    if (x ~ /compiler/) return "compiler"
    if (x ~ /(machine learning engineer|(^|[^[:alnum:]_])ml engineer([^[:alnum:]_]|$)|applied scientist|research scientist|data scientist|machine learning scientist|ai scientist)/) return "model_science"
    if (is_software_ic_title(s) || x ~ /(runtime|kernel|systems|infrastructure|platform|distributed training|performance optimization|inference|serving)/) return "software_systems"
    return "other"
}
NR == 1 {
    sub(/\r$/, "", $0)
    header = $0
    print header > (out_dir "/explicit-ml-title.tsv")
    print header > (out_dir "/explicit-ai-title.tsv")
    print header > (out_dir "/explicit-ml-or-ai-title.tsv")
    print header > (out_dir "/explicit-software-ic-title.tsv")
    print header, "title_signal_family" > (out_dir "/ml-ai-title-families.tsv")
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
    if (ml && ai) ml_ai_intersection_count++
    if (ml || ai) {
        ml_ai_count++
        family = ml_ai_title_family(title)
        family_count[family]++
        print $0 > (out_dir "/explicit-ml-or-ai-title.tsv")
        print $0, family > (out_dir "/ml-ai-title-families.tsv")
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
    print "explicit_ml_and_ai_title", ml_ai_intersection_count + 0 >> (out_dir "/counts.tsv")
    print "explicit_ml_or_ai_title", ml_ai_count + 0 >> (out_dir "/counts.tsv")
    print "explicit_software_ic_title", software_ic_count + 0 >> (out_dir "/counts.tsv")
    print "explicit_ml_or_ai_and_software_ic_title", ml_ai_software_ic_count + 0 >> (out_dir "/counts.tsv")

    print "title_signal_family", "requisitions" > (out_dir "/ml-ai-title-family-counts.tsv")
    print "software_systems", family_count["software_systems"] + 0 >> (out_dir "/ml-ai-title-family-counts.tsv")
    print "model_science", family_count["model_science"] + 0 >> (out_dir "/ml-ai-title-family-counts.tsv")
    print "hardware_firmware", family_count["hardware_firmware"] + 0 >> (out_dir "/ml-ai-title-family-counts.tsv")
    print "compiler", family_count["compiler"] + 0 >> (out_dir "/ml-ai-title-family-counts.tsv")
    print "management", family_count["management"] + 0 >> (out_dir "/ml-ai-title-family-counts.tsv")
    print "other", family_count["other"] + 0 >> (out_dir "/ml-ai-title-family-counts.tsv")
}
' "$input"

population=$(awk -F '\t' '$1 == "population" {print $2}' "$out_dir/counts.tsv")
ml=$(awk -F '\t' '$1 == "explicit_ml_title" {print $2}' "$out_dir/counts.tsv")
ai=$(awk -F '\t' '$1 == "explicit_ai_title" {print $2}' "$out_dir/counts.tsv")
ml_and_ai=$(awk -F '\t' '$1 == "explicit_ml_and_ai_title" {print $2}' "$out_dir/counts.tsv")
ml_ai=$(awk -F '\t' '$1 == "explicit_ml_or_ai_title" {print $2}' "$out_dir/counts.tsv")
software_ic=$(awk -F '\t' '$1 == "explicit_software_ic_title" {print $2}' "$out_dir/counts.tsv")
ml_ai_software_ic=$(awk -F '\t' '$1 == "explicit_ml_or_ai_and_software_ic_title" {print $2}' "$out_dir/counts.tsv")
software_systems=$(awk -F '\t' '$1 == "software_systems" {print $2}' "$out_dir/ml-ai-title-family-counts.tsv")
model_science=$(awk -F '\t' '$1 == "model_science" {print $2}' "$out_dir/ml-ai-title-family-counts.tsv")
hardware_firmware=$(awk -F '\t' '$1 == "hardware_firmware" {print $2}' "$out_dir/ml-ai-title-family-counts.tsv")
compiler=$(awk -F '\t' '$1 == "compiler" {print $2}' "$out_dir/ml-ai-title-family-counts.tsv")
management=$(awk -F '\t' '$1 == "management" {print $2}' "$out_dir/ml-ai-title-family-counts.tsv")
other=$(awk -F '\t' '$1 == "other" {print $2}' "$out_dir/ml-ai-title-family-counts.tsv")

cat > "$out_dir/README.md" <<EOF
# Amazon title signals — 2026-09-16 snapshot

This is a deterministic derivation from the already preserved 2,613-requisition Amazon Software Development snapshot. It does **not** re-fetch Amazon Jobs and therefore keeps the original timestamp and denominator fixed.

## Direct title counts

- population: **$population** requisitions
- title explicitly says machine learning / ML / AIML: **$ml**
- title explicitly says AI / artificial intelligence / GenAI / agentic AI / AIML: **$ai**
- title explicitly contains both ML and AI signals: **$ml_and_ai**
- title explicitly says either ML or AI: **$ml_ai**
- title explicitly identifies a non-management software-development/software-engineering/SDE role: **$software_ic**
- title has explicit ML/AI language and also matches the software-IC title screen: **$ml_ai_software_ic**

These are **title signals**, not occupational classifications. They provide a conservative lower bound on requisitions whose public title itself foregrounds ML/AI. They will miss ML-centered work with generic titles, and they can include jobs whose title names an AI/ML product, accelerator, or infrastructure area even when the employee is not training models.

The earlier body-wide screening tag matched **836** requisitions for ML/AI language. That is an upper retrieval queue, not 836 ML jobs. The gap between body-wide mentions and explicit-title signals is exactly what a body-aware classification has to resolve.

## What the explicit ML/AI titles themselves contain

A mutually exclusive title-only taxonomy of the **$ml_ai** ML/AI-title records gives:

| title signal family | requisitions |
| --- | ---: |
| software / systems / infrastructure | $software_systems |
| model / science title | $model_science |
| hardware / firmware / silicon title | $hardware_firmware |
| compiler title | $compiler |
| management title | $management |
| other | $other |

This table is deliberately a **title taxonomy**, not a work taxonomy. For example, `Sr. ASIC Design Engineer, Cloud-Scale Machine Learning Acceleration` belongs in the hardware/firmware title family even though ML appears in the title, while `Software Development Engineer, ML Systems` belongs in software/systems. That distinction is already enough to reject treating every explicit ML title as a model-building job.

The taxonomy is priority ordered and checked in beside the results so it can be audited. Body-aware review remains necessary, especially for the `software_systems`, `model_science`, and `other` buckets.

Files in this directory preserve every matching requisition and its assigned title family so the screen can be inspected rather than trusted from the aggregate count alone.
EOF

cat "$out_dir/counts.tsv"
cat "$out_dir/ml-ai-title-family-counts.tsv"
