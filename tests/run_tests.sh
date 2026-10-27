#!/usr/bin/env bash
# Companion test suite for the U-M financial-aid lifestyle-restraint note.
#
# Runs every scenario suite and reports a single overall result. This suite is
# self-contained: it needs only bash, bc, and coreutils, and it does not touch
# the repository's data-fetch CI workflows.
set -u

here=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

suites=(
    happy_path
    boundary
    negative
    concurrency
    regression
)

overall=0
for suite in "${suites[@]}"; do
    script="$here/$suite/test_calculate.sh"
    printf '\n===== %s =====\n' "$suite"
    if [ ! -f "$script" ]; then
        printf 'missing suite: %s\n' "$script" >&2
        overall=1
        continue
    fi
    if bash "$script"; then
        :
    else
        overall=1
    fi
done

printf '\n'
if [ "$overall" -eq 0 ]; then
    printf 'ALL SUITES PASSED\n'
else
    printf 'SOME SUITES FAILED\n' >&2
fi
exit "$overall"