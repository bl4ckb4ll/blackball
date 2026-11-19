#!/usr/bin/env bash
# Shared assertions for Blackball companion shell tests.
#
# Each suite sources this file, calls the assert_* helpers, then calls finish.
# Failures accumulate rather than aborting, so one run reports every problem.
set -u

TESTS_PASS=0
TESTS_FAIL=0

assert_eq() {
    name=$1
    expected=$2
    actual=$3
    if [ "$actual" = "$expected" ]; then
        TESTS_PASS=$((TESTS_PASS + 1))
        printf 'ok   %s\n' "$name"
    else
        TESTS_FAIL=$((TESTS_FAIL + 1))
        printf 'FAIL %s: expected [%s] got [%s]\n' "$name" "$expected" "$actual" >&2
    fi
}

assert_exit() {
    assert_eq "$1" "$2" "$3"
}

assert_contains() {
    name=$1
    haystack=$2
    needle=$3
    case "$haystack" in
        *"$needle"*)
            TESTS_PASS=$((TESTS_PASS + 1))
            printf 'ok   %s\n' "$name"
            ;;
        *)
            TESTS_FAIL=$((TESTS_FAIL + 1))
            printf 'FAIL %s: did not find [%s]\n' "$name" "$needle" >&2
            ;;
    esac
}

assert_not_contains() {
    name=$1
    haystack=$2
    needle=$3
    case "$haystack" in
        *"$needle"*)
            TESTS_FAIL=$((TESTS_FAIL + 1))
            printf 'FAIL %s: unexpectedly found [%s]\n' "$name" "$needle" >&2
            ;;
        *)
            TESTS_PASS=$((TESTS_PASS + 1))
            printf 'ok   %s\n' "$name"
            ;;
    esac
}

finish() {
    printf '%s: %d passed, %d failed\n' "$(basename "$0")" "$TESTS_PASS" "$TESTS_FAIL"
    [ "$TESTS_FAIL" -eq 0 ]
}

# calculator_path REPO_ROOT -- prints the calculator path.
calculator_path() {
    printf '%s/University of Michigan/financial-aid-lifestyle-restraint/calculate.sh' "$1"
}