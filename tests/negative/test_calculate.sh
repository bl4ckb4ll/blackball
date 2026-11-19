#!/usr/bin/env bash
# SCENARIO_NULL_INPUT, SCENARIO_EMPTY_INPUT, SCENARIO_NEGATIVE_FAILURE:
# null/empty/malformed/negative inputs and unauthorized or malformed calls are
# refused immediately with a typed error code, with no unhandled crash.
set -u

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
repo_root=$(CDPATH= cd -- "$script_dir/../.." && pwd)
. "$repo_root/tests/lib.sh"
calc=$(calculator_path "$repo_root")

case_out=""
case_code=0
run_case() {
    case_out=$(bash "$calc" "$@" 2>&1)
    case_code=$?
}

# --- null inputs ------------------------------------------------------------
run_case cover "" 100
assert_exit "null_cost_exit" 2 "$case_code"
assert_contains "null_cost_message" "$case_out" "ERROR [2]"
run_case cover 40194 ""
assert_exit "null_saving_exit" 2 "$case_code"
run_case cover null 100
assert_exit "literal_null_exit" 2 "$case_code"
run_case cover None 100
assert_exit "literal_none_exit" 2 "$case_code"
run_case cover undefined 100
assert_exit "literal_undefined_exit" 2 "$case_code"

# --- empty inputs -----------------------------------------------------------
run_case cover "" ""
assert_exit "all_empty_exit" 2 "$case_code"
assert_contains "all_empty_message" "$case_out" "ERROR [2]"
run_case cover "   " 100
assert_exit "whitespace_cost_exit" 2 "$case_code"
run_case worker --wage ""
assert_exit "empty_wage_exit" 2 "$case_code"

# --- malformed and negative inputs -----------------------------------------
run_case cover 40194 abc
assert_exit "malformed_saving_exit" 2 "$case_code"
run_case cover 40194 1.2.3
assert_exit "double_dot_exit" 2 "$case_code"
run_case cover 40194 .
assert_exit "bare_dot_exit" 2 "$case_code"
run_case cover 40194 -1
assert_exit "negative_saving_exit" 2 "$case_code"
run_case worker --wage -5
assert_exit "negative_wage_exit" 2 "$case_code"
run_case worker --rent -800
assert_exit "negative_rent_exit" 2 "$case_code"

# --- usage errors -----------------------------------------------------------
run_case frobnicate
assert_exit "unknown_command_exit" 64 "$case_code"
assert_contains "unknown_command_message" "$case_out" "ERROR [64]"
run_case report --bogus
assert_exit "unknown_option_exit" 64 "$case_code"
run_case report --out
assert_exit "out_without_argument_exit" 64 "$case_code"
run_case cover 40194
assert_exit "cover_missing_argument_exit" 64 "$case_code"
run_case cover 40194 2980 1234
assert_exit "cover_extra_argument_exit" 64 "$case_code"

# --- no unhandled crash -----------------------------------------------------
run_case cover "" ""
assert_not_contains "no_unbound_variable" "$case_out" "unbound variable"
assert_not_contains "no_syntax_error" "$case_out" "syntax error"
assert_not_contains "no_command_not_found" "$case_out" "command not found"
run_case report --out /nonexistent_dir_for_tests_85/out.md
assert_exit "missing_output_dir_exit" 1 "$case_code"

finish