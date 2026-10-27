#!/usr/bin/env bash
# SCENARIO_BOUNDARY_LIMIT: exact upper and lower bounds are evaluated strictly
# against the stated intervals (open at 0 for cost and wage, closed at the top
# for saving, weeks, and hours).
set -u

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
repo_root=$(CDPATH= cd -- "$script_dir/../.." && pwd)
. "$repo_root/tests/lib.sh"
calc=$(calculator_path "$repo_root")
tab=$(printf '\t')

# saving at the inclusive upper bound -> 100% coverage, zero remaining
full=$(bash "$calc" cover 40194 40194)
assert_exit "saving_equals_cost_exit_zero" 0 "$?"
assert_contains "saving_equals_cost_share" "$full" "share_percent${tab}100.00"
assert_contains "saving_equals_cost_remaining" "$full" "remaining${tab}0.00"

# saving at the inclusive lower bound -> 0% coverage
zero=$(bash "$calc" cover 40194 0)
assert_exit "saving_zero_exit_zero" 0 "$?"
assert_contains "saving_zero_share" "$zero" "share_percent${tab}0.00"
assert_contains "saving_zero_remaining" "$zero" "remaining${tab}40194.00"

# smallest positive cost/saving -> still in the open interval
tiny=$(bash "$calc" cover 0.01 0.01)
assert_exit "tiny_cost_exit_zero" 0 "$?"
assert_contains "tiny_cost_share" "$tiny" "share_percent${tab}100.00"

# cost at the open lower bound -> domain error
bash "$calc" cover 0 0 >/dev/null 2>&1
assert_exit "cost_zero_is_domain_error" 3 "$?"
bash "$calc" cover 0 1 >/dev/null 2>&1
assert_exit "cost_zero_with_saving_is_domain_error" 3 "$?"

# saving just above the closed upper bound -> range error
bash "$calc" cover 40194 40195 >/dev/null 2>&1
assert_exit "saving_above_cost_is_range_error" 4 "$?"

# worker bounds
bash "$calc" worker --wage 0 >/dev/null 2>&1
assert_exit "wage_zero_is_domain_error" 3 "$?"

bash "$calc" worker --weeks 52 >/dev/null 2>&1
assert_exit "weeks_at_upper_bound_ok" 0 "$?"
bash "$calc" worker --weeks 53 >/dev/null 2>&1
assert_exit "weeks_above_upper_bound_is_range_error" 4 "$?"

bash "$calc" worker --hours 168 >/dev/null 2>&1
assert_exit "hours_at_upper_bound_ok" 0 "$?"
bash "$calc" worker --hours 169 >/dev/null 2>&1
assert_exit "hours_above_upper_bound_is_range_error" 4 "$?"

# null and empty inputs mapped to this suite are rejected at the same boundary
bash "$calc" cover "" 100 >/dev/null 2>&1
assert_exit "null_cost_rejected" 2 "$?"
bash "$calc" cover 40194 "" >/dev/null 2>&1
assert_exit "null_saving_rejected" 2 "$?"
bash "$calc" cover "" "" >/dev/null 2>&1
assert_exit "empty_pair_rejected" 2 "$?"
bash "$calc" worker --wage "" >/dev/null 2>&1
assert_exit "empty_wage_rejected" 2 "$?"

finish