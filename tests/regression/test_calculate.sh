#!/usr/bin/env bash
# SCENARIO_DEFECT_REGRESSION: reproduction state for issue #85.
#
# The reported defect was that the discretionary-cut arithmetic existed but the
# requested local Washtenaw County worker affordability comparison (wage,
# rent, expenses, take-home, surplus, years-to-cover) was absent. This suite
# checks the calculator's modeled worker outputs and source note, NOT whether
# hypothetical wages/rents are observed, nor an individual net-price outcome.
# The U-M attribution boundary must remain explicit.
set -u

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
repo_root=$(CDPATH= cd -- "$script_dir/../.." && pwd)
. "$repo_root/tests/lib.sh"
calc=$(calculator_path "$repo_root")
tab=$(printf '\t')
note="$repo_root/University of Michigan/financial-aid-lifestyle-restraint/README.md"

report=$(bash "$calc" report)
assert_exit "report_exit_zero" 0 "$?"

# Issue-published scale table must still reproduce exactly.
assert_contains "issue_basket_total" "$report" "basket_annual_total${tab}2980.00"
assert_contains "issue_resident_four_year" "$report" "resident_four_year_coa${tab}165520.00"
assert_contains "issue_nonresident_four_year" "$report" "nonresident_four_year_coa${tab}362980.00"
assert_contains "issue_resident_share" "$report" "resident_four_years${tab}165520.00${tab}11920.00${tab}7.20${tab}153600.00"
assert_contains "issue_nonresident_share" "$report" "nonresident_four_years${tab}362980.00${tab}11920.00${tab}3.28${tab}351060.00"
assert_contains "issue_robustness_100" "$report" "100.00${tab}14000.00${tab}8.46${tab}3.86"
assert_contains "issue_robustness_150" "$report" "150.00${tab}21000.00${tab}12.69${tab}5.79"

# Previously-missing local worker comparison must now exist.
assert_contains "listing_profile_b_present" "$report" "listing_profile_b_15_full_time_shared_2br"
assert_contains "listing_monthly_2br_rent" "$report" "listing_2br_park_place_monthly_rent${tab}1539.00"
assert_contains "min_wage_sensitivity" "$report" "13.73${tab}147.01${tab}1125.91"
assert_contains "local_profile_b_present" "$report" "profile_b_full_time_shared_two_bedroom"
assert_contains "local_profile_b_surplus" "$report" "annual_surplus${tab}2100.75"
assert_contains "local_profile_b_years_resident" "$report" "years_to_full_coa${tab}78.79"
assert_contains "local_profile_b_nonresident" "$report" "profile_b_nonresident${tab}132.23${tab}172.79"
assert_contains "local_basket_vs_surplus" "$report" "basket_share_of_profile_b_surplus_percent${tab}141.85"
assert_contains "local_basket_spent_deficit" "$report" "profile_b_surplus_if_basket_is_spent${tab}-879.25"
assert_contains "subsidy_go_blue_remainder" "$report" "go_blue_non_tuition_remainder_per_year${tab}21298.00"
assert_contains "subsidy_unpaid_internship" "$report" "profile_b_surplus_after_unpaid_internship${tab}-2399.25"
assert_contains "subsidy_relocation" "$report" "profile_b_surplus_after_one_time_2000_relocation${tab}100.75"

# The worker command itself must answer the follow-up question.
worker=$(bash "$calc" worker --wage 15 --hours 40 --weeks 50 --rent 800 --utilities 120 \
    --food 380 --transport 300 --health 120 --phone 60 --personal 150)
assert_contains "worker_years_resident_coa" "$worker" "years_to_full_coa${tab}78.79"
assert_contains "worker_years_resident_tuition" "$worker" "years_to_tuition_only${tab}38.24"

# Determinism: identical inputs produce identical output.
run_a=$(bash "$calc" report)
run_b=$(bash "$calc" report)
assert_eq "report_is_deterministic" "$run_a" "$run_b"

# Note exists and preserves the evidence boundary.
if [ -f "$note" ]; then
    assert_eq "note_exists" 0 0
else
    assert_eq "note_exists" 0 1
fi
note_text=$(cat "$note")
assert_contains "note_quotes_not_at_all" "$note_text" "Not at all"
assert_contains "note_states_boundary" "$note_text" "does not claim"
assert_contains "note_has_resident_coa" "$note_text" "\$40,194"
assert_contains "note_has_nonresident_coa" "$note_text" "\$93,096"
assert_contains "note_has_four_year_total" "$note_text" "\$165,520"
assert_contains "note_has_austerity_point" "$note_text" "austerity does not manufacture capital"
assert_contains "note_links_calculator" "$note_text" "calculate.sh"
assert_contains "note_has_local_worker" "$note_text" "78.79"

finish