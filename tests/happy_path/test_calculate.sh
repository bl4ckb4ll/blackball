#!/usr/bin/env bash
# SCENARIO_HAPPY_PATH: valid inputs follow the specification; the core path
# completes successfully with the expected values and exit code 0.
set -u

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
repo_root=$(CDPATH= cd -- "$script_dir/../.." && pwd)
. "$repo_root/tests/lib.sh"
calc=$(calculator_path "$repo_root")
tab=$(printf '\t')

bash "$calc" check >/dev/null 2>&1
assert_exit "check_suite_passes" 0 "$?"

report=$(bash "$calc" report)
assert_exit "report_exit_zero" 0 "$?"
assert_contains "report_basket_total" "$report" "basket_annual_total${tab}2980.00"
assert_contains "report_resident_four_year" "$report" "resident_four_year_coa${tab}165520.00"
assert_contains "report_nonresident_four_year" "$report" "nonresident_four_year_coa${tab}362980.00"
assert_contains "report_resident_tuition" "$report" "resident_four_year_tuition_fees${tab}80328.00"
assert_contains "report_nonresident_tuition" "$report" "nonresident_four_year_tuition_fees${tab}277788.00"
assert_contains "report_four_year_cuts" "$report" "four_years_of_modeled_cuts${tab}11920.00"

basket=$(bash "$calc" basket)
assert_exit "basket_exit_zero" 0 "$?"
assert_contains "basket_total_line" "$basket" "basket_annual_total${tab}2980.00"
assert_contains "basket_drinks_line" "$basket" "special_drinks_7_x_2_x_35${tab}490.00"

coa=$(bash "$calc" coa)
assert_exit "coa_exit_zero" 0 "$?"
assert_contains "coa_resident_lower" "$coa" "res_lower_coa${tab}40194.00"
assert_contains "coa_nonresident_upper" "$coa" "nres_upper_coa${tab}93096.00"

cover=$(bash "$calc" cover 40194 2980)
assert_exit "cover_exit_zero" 0 "$?"
assert_contains "cover_cost" "$cover" "cost${tab}40194.00"
assert_contains "cover_saving" "$cover" "saving${tab}2980.00"
assert_contains "cover_share" "$cover" "share_percent${tab}7.41"
assert_contains "cover_remaining" "$cover" "remaining${tab}37214.00"

worker=$(bash "$calc" worker --wage 16 --hours 40 --rent 800 --utilities 120 \
    --food 380 --transport 300 --health 120 --phone 60 --personal 150)
assert_exit "worker_exit_zero" 0 "$?"
assert_contains "worker_gross" "$worker" "gross_annual${tab}32000.00"
assert_contains "worker_take_home" "$worker" "take_home${tab}26782.75"
assert_contains "worker_surplus" "$worker" "annual_surplus${tab}3622.75"
assert_contains "worker_years_coa" "$worker" "years_to_full_coa${tab}45.69"

default_out=$(bash "$calc")
assert_exit "default_command_exit_zero" 0 "$?"
assert_eq "default_command_is_report" "$report" "$default_out"

out_file=$(mktemp)
bash "$calc" report --out "$out_file"
assert_exit "atomic_out_exit_zero" 0 "$?"
assert_eq "atomic_out_matches_stdout" "$report" "$(cat "$out_file")"
rm -f "$out_file"

help_out=$(bash "$calc" help)
assert_exit "help_exit_zero" 0 "$?"
assert_contains "help_mentions_cover" "$help_out" "cover COST SAVING"

finish