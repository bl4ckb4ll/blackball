#!/usr/bin/env bash
# SCENARIO_CONCURRENCY_RACE: many simultaneous writers target the same output
# file. The write is atomic (temporary file plus rename), so the final artifact
# is one complete report, never an interleaved or partial one, and no temporary
# file is left behind.
set -u

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
repo_root=$(CDPATH= cd -- "$script_dir/../.." && pwd)
. "$repo_root/tests/lib.sh"
calc=$(calculator_path "$repo_root")
tab=$(printf '\t')

reference=$(bash "$calc" report)
assert_exit "reference_report_exit" 0 "$?"

tmpdir=$(mktemp -d)
trap 'rm -rf -- "$tmpdir"' EXIT

run_concurrent_round() {
    round=$1
    target="$tmpdir/report-$round.txt"
    codes="$tmpdir/codes-$round"
    mkdir -p "$codes"
    rm -f "$target"
    i=1
    while [ "$i" -le 8 ]; do
        (
            bash "$calc" report --out "$target" >/dev/null 2>&1
            printf '%s' "$?" > "$codes/$i"
        ) &
        i=$((i + 1))
    done
    wait

    bad=0
    i=1
    while [ "$i" -le 8 ]; do
        [ "$(cat "$codes/$i")" = "0" ] || bad=$((bad + 1))
        i=$((i + 1))
    done
    assert_exit "round_${round}_all_writers_exit_zero" 0 "$bad"
    assert_eq "round_${round}_target_matches_single_run" "$reference" "$(cat "$target")"
    assert_eq "round_${round}_one_header" 1 "$(grep -c '^# U-M financial-aid scale report' "$target")"
    assert_eq "round_${round}_line_count_matches" "$(printf '%s\n' "$reference" | wc -l | tr -d ' ')" "$(wc -l < "$target" | tr -d ' ')"
    assert_eq "round_${round}_no_temp_leftover" 0 "$(find "$tmpdir" -maxdepth 1 -name '.calculate.*' | wc -l | tr -d ' ')"
}

run_concurrent_round 1
run_concurrent_round 2

finish