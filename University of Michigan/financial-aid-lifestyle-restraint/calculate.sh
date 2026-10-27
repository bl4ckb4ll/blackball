#!/usr/bin/env bash
#
# calculate.sh -- deterministic, auditable scale calculator for
#   University of Michigan/financial-aid-lifestyle-restraint/README.md
#
# Every amount is computed by bc (the external calculator the issue author
# asked for). The script makes no network calls and uses no randomness, so the
# same inputs always print the same output. It exists so that the arithmetic in
# the note can be reproduced and checked instead of trusted.
#
# Commands
#   report              (default) full deterministic scale report
#   basket              itemized discretionary-cut basket
#   coa                 pinned 2026-27 U-M cost-of-attendance breakdown
#   cover COST SAVING   share of a cost covered by a saving
#   worker [options]    local worker take-home, surplus, years-to-cover
#   check               run internal arithmetic assertions
#   help
#
# Options
#   --out FILE          write output atomically to FILE (temp file + rename)
#   --wage N --hours N --weeks N
#   --rent N --utilities N --food N --transport N --health N --phone N
#   --personal N        (worker option: monthly amounts)
#   --cost N --tuition N (worker option: comparison amounts, annual or 4-year)
#
# Typed exit codes
#   0   success
#   2   validation error: null, empty, malformed, or negative value
#   3   domain error: value outside the open interval it must lie in
#   4   range error: value outside the closed interval it must lie in
#   64  usage error: unknown command or option
set -u

PROG=calculate.sh

EX_VALIDATION=2
EX_DOMAIN=3
EX_RANGE=4
EX_USAGE=64

command -v bc >/dev/null 2>&1 || {
    printf '%s: ERROR bc is required but was not found on PATH\n' "$PROG" >&2
    exit 1
}

die() {
    code=$1
    shift
    printf '%s: ERROR [%s] %s\n' "$PROG" "$code" "$*" >&2
    exit "$code"
}

# --- input validation -------------------------------------------------------

is_null_like() {
    case "$1" in
        ''|null|NULL|Null|none|None|undefined|Undefined|nil|NIL|NaN|nan) return 0 ;;
        *) return 1 ;;
    esac
}

# require_amount NAME VALUE -- validates VALUE and stores it in VALIDATED.
# Exits 2 unless VALUE is a non-negative decimal number that is neither null
# nor empty. It must not be called through command substitution, because die
# needs to terminate the current shell.
require_amount() {
    name=$1
    value=$2
    is_null_like "$value" && die "$EX_VALIDATION" "missing or null value for $name"
    case "$value" in
        -*) die "$EX_VALIDATION" "negative value not allowed for $name: '$value'" ;;
        *[!0-9.]*) die "$EX_VALIDATION" "non-numeric value for $name: '$value'" ;;
        .|.*|*.|*.*.*) die "$EX_VALIDATION" "malformed decimal for $name: '$value'" ;;
    esac
    VALIDATED=$value
}

# --- bc helpers -------------------------------------------------------------

RAW_SCALE=10

bcexpr() { printf 'scale=%s; %s\n' "$RAW_SCALE" "$1" | bc -l; }

# bctrue EXPR -- succeeds (exit 0) when the bc comparison EXPR is true.
bctrue() { [ "$(bcexpr "$1")" = "1" ]; }

# --- output formatting ------------------------------------------------------

fmt_money() { printf '%.2f' "$1"; }
fmt_word_or_money() {
    case "$1" in
        never) printf '%s' never ;;
        *) printf '%.2f' "$1" ;;
    esac
}

# --- pinned source constants ------------------------------------------------
# U-M Office of Financial Aid, "Estimating Costs", 2026-27 estimated
# fall/winter budget, LSA full-time undergraduate. Source:
# https://finaid.umich.edu/getting-started/estimating-costs
UM_RES_LOWER_COA=40194
UM_RES_UPPER_COA=42566
UM_NRES_LOWER_COA=88394
UM_NRES_UPPER_COA=93096
UM_RES_LOWER_TUITION=18896
UM_RES_UPPER_TUITION=21268
UM_NRES_LOWER_TUITION=67096
UM_NRES_UPPER_TUITION=71798
UM_LIVING=17220
UM_BOOKS=1220
UM_TRANSPORT=400
UM_MISC=2458

# --- discretionary-cut basket (issue #85 illustrative model) ----------------
basket() {
    drinks=$(bcexpr "7 * 2 * 35")
    eating=$(bcexpr "15 * 2 * 35")
    movies=$(bcexpr "15 * 2 * 8")
    travel=$(bcexpr "600")
    clothing=$(bcexpr "75 * 8")
    total=$(bcexpr "$drinks + $eating + $movies + $travel + $clothing")
    printf 'special_drinks_7_x_2_x_35\t%s\n' "$(fmt_money "$drinks")"
    printf 'eating_out_15_x_2_x_35\t%s\n' "$(fmt_money "$eating")"
    printf 'movies_15_x_2_x_8\t%s\n' "$(fmt_money "$movies")"
    printf 'winter_break_travel\t%s\n' "$(fmt_money "$travel")"
    printf 'clothing_recreation_75_x_8\t%s\n' "$(fmt_money "$clothing")"
    printf 'basket_annual_total\t%s\n' "$(fmt_money "$total")"
}

# --- pinned cost-of-attendance table ---------------------------------------
coa() {
    printf 'res_lower_coa\t%s\n' "$(fmt_money "$UM_RES_LOWER_COA")"
    printf 'res_upper_coa\t%s\n' "$(fmt_money "$UM_RES_UPPER_COA")"
    printf 'nres_lower_coa\t%s\n' "$(fmt_money "$UM_NRES_LOWER_COA")"
    printf 'nres_upper_coa\t%s\n' "$(fmt_money "$UM_NRES_UPPER_COA")"
    printf 'res_lower_tuition_fees\t%s\n' "$(fmt_money "$UM_RES_LOWER_TUITION")"
    printf 'res_upper_tuition_fees\t%s\n' "$(fmt_money "$UM_RES_UPPER_TUITION")"
    printf 'nres_lower_tuition_fees\t%s\n' "$(fmt_money "$UM_NRES_LOWER_TUITION")"
    printf 'nres_upper_tuition_fees\t%s\n' "$(fmt_money "$UM_NRES_UPPER_TUITION")"
    printf 'living_expenses\t%s\n' "$(fmt_money "$UM_LIVING")"
    printf 'books_materials\t%s\n' "$(fmt_money "$UM_BOOKS")"
    printf 'transportation\t%s\n' "$(fmt_money "$UM_TRANSPORT")"
    printf 'misc_personal\t%s\n' "$(fmt_money "$UM_MISC")"
}

# --- cover COST SAVING ------------------------------------------------------
# Prints how much of COST a SAVING covers. Domain: COST must lie in the open
# interval (0, inf); SAVING must lie in the closed interval [0, COST].
line_cover() {
    require_amount cost "$1"
    cost=$VALIDATED
    require_amount saving "$2"
    saving=$VALIDATED
    bctrue "$cost > 0" || die "$EX_DOMAIN" "cost must be greater than 0 (open lower bound): '$cost'"
    bctrue "$saving <= $cost" || die "$EX_RANGE" "saving must not exceed cost (closed upper bound): saving='$saving' cost='$cost'"
    share=$(bcexpr "100 * $saving / $cost")
    remaining=$(bcexpr "$cost - $saving")
    printf 'cost\t%s\n' "$(fmt_money "$cost")"
    printf 'saving\t%s\n' "$(fmt_money "$saving")"
    printf 'share_percent\t%s\n' "$(fmt_money "$share")"
    printf 'remaining\t%s\n' "$(fmt_money "$remaining")"
}
# --- worker affordability ---------------------------------------------------
# Default local profile: an O'Reilly Auto Parts counter/sales worker living in
# Ann Arbor within a few miles of both work and U-M. Wage, hours, and rent are
# model inputs, not source facts; see the note's evidence section.
W_DEFAULT_WAGE=15.00
W_DEFAULT_HOURS=32
W_DEFAULT_WEEKS=50
W_DEFAULT_RENT=1400
W_DEFAULT_UTIL=180
W_DEFAULT_FOOD=380
W_DEFAULT_TRANS=300
W_DEFAULT_HEALTH=120
W_DEFAULT_PHONE=60
W_DEFAULT_PERSONAL=150
# Four-year comparison targets: resident tuition-only and resident full COA.
W_DEFAULT_TUITION=80328
W_DEFAULT_COST=165520

# Verified 2026 single-filer federal brackets and standard deduction: IRS 2026
# tax tables (Publication 505). Michigan 2026 4.25% rate and $5,900 single
# personal exemption; 2026 Social Security wage base $184,500. This is a
# simplified annual income-tax scenario, not a tax return or aid determination.
# https://www.irs.gov/publications/p505
# https://www.michigan.gov/taxes/business-taxes/withholding/calendar-year-tax-information
# https://www.irs.gov/publications/p15
worker_metrics() {
    require_amount wage "$1"; wage=$VALIDATED
    require_amount hours "$2"; hours=$VALIDATED
    require_amount weeks "$3"; weeks=$VALIDATED
    require_amount rent "$4"; rent=$VALIDATED
    require_amount utilities "$5"; util=$VALIDATED
    require_amount food "$6"; food=$VALIDATED
    require_amount transport "$7"; trans=$VALIDATED
    require_amount health "$8"; health=$VALIDATED
    require_amount phone "$9"; phone=$VALIDATED
    require_amount personal "${10}"; personal=$VALIDATED
    require_amount cost "${11}"; cost=$VALIDATED
    require_amount tuition "${12}"; tuition=$VALIDATED
    bctrue "$wage > 0" || die "$EX_DOMAIN" "wage must be greater than 0 (open lower bound): '$wage'"
    bctrue "$weeks <= 52" || die "$EX_RANGE" "weeks must lie in [0,52] (closed upper bound): '$weeks'"
    bctrue "$hours <= 168" || die "$EX_RANGE" "hours must lie in [0,168] (closed upper bound): '$hours'"

    bc -l <<EOF
scale=$RAW_SCALE
define fedtax(t) {
    if (t <= 0) return (0)
    if (t <= 12400) return (0.10 * t)
    if (t <= 50400) return (1240 + 0.12 * (t - 12400))
    if (t <= 105700) return (5800 + 0.22 * (t - 50400))
    if (t <= 201775) return (17966 + 0.24 * (t - 105700))
    if (t <= 256225) return (41024 + 0.32 * (t - 201775))
    if (t <= 640600) return (58448 + 0.35 * (t - 256225))
    return (192979.25 + 0.37 * (t - 640600))
}
gross = $wage * $hours * $weeks
taxable = gross - 16100
if (taxable < 0) taxable = 0
fed = fedtax(taxable)
ss_base = gross
if (ss_base > 184500) ss_base = 184500
fica = ss_base * 0.062 + gross * 0.0145
if (gross > 200000) fica = fica + (gross - 200000) * 0.009
mi_taxable = gross - 5900
if (mi_taxable < 0) mi_taxable = 0
state = mi_taxable * 0.0425
take = gross - fed - fica - state
exp = ($rent + $util + $food + $trans + $health + $phone + $personal) * 12
surp = take - exp
print "gross_annual\t", gross, "\n"
print "federal_tax\t", fed, "\n"
print "fica_tax\t", fica, "\n"
print "michigan_tax\t", state, "\n"
print "take_home\t", take, "\n"
print "annual_expenses\t", exp, "\n"
print "annual_surplus\t", surp, "\n"
if (surp > 0) {
    print "years_to_tuition_only\t", $tuition / surp, "\n"
    print "years_to_full_coa\t", $cost / surp, "\n"
} else {
    print "years_to_tuition_only\tnever\n"
    print "years_to_full_coa\tnever\n"
}
EOF
}

line_worker() {
    raw=$(worker_metrics "$@")
    rc=$?
    [ "$rc" -eq 0 ] || exit "$rc"
    gross=; fed=; fica=; state=; take=; exp=; surp=; ytt=; ycoa=
    while IFS=$'\t' read -r k v; do
        case "$k" in
            gross_annual) gross=$v ;;
            federal_tax) fed=$v ;;
            fica_tax) fica=$v ;;
            michigan_tax) state=$v ;;
            take_home) take=$v ;;
            annual_expenses) exp=$v ;;
            annual_surplus) surp=$v ;;
            years_to_tuition_only) ytt=$v ;;
            years_to_full_coa) ycoa=$v ;;
        esac
    done <<< "$raw"
    printf 'gross_annual\t%s\n' "$(fmt_money "$gross")"
    printf 'federal_tax\t%s\n' "$(fmt_money "$fed")"
    printf 'fica_tax\t%s\n' "$(fmt_money "$fica")"
    printf 'michigan_tax\t%s\n' "$(fmt_money "$state")"
    printf 'take_home\t%s\n' "$(fmt_money "$take")"
    printf 'annual_expenses\t%s\n' "$(fmt_money "$exp")"
    printf 'annual_surplus\t%s\n' "$(fmt_money "$surp")"
    printf 'years_to_tuition_only\t%s\n' "$(fmt_word_or_money "$ytt")"
    printf 'years_to_full_coa\t%s\n' "$(fmt_word_or_money "$ycoa")"
}

# --- one-line cover row (validated) ----------------------------------------
cover_row() {
    label=$1
    require_amount cost "$2"
    cost=$VALIDATED
    require_amount saving "$3"
    saving=$VALIDATED
    bctrue "$cost > 0" || die "$EX_DOMAIN" "cost must be greater than 0 (open lower bound): '$cost'"
    bctrue "$saving <= $cost" || die "$EX_RANGE" "saving must not exceed cost (closed upper bound): saving='$saving' cost='$cost'"
    share=$(bcexpr "100 * $saving / $cost")
    rem=$(bcexpr "$cost - $saving")
    printf '%s\t%s\t%s\t%s\t%s\n' "$label" "$(fmt_money "$cost")" "$(fmt_money "$saving")" "$(fmt_money "$share")" "$(fmt_money "$rem")"
}

profile_surplus() {
    line_worker "$@" | while IFS=$'\t' read -r k v; do
        [ "$k" = annual_surplus ] && printf '%s' "$v"
    done
}

sensitivity_row() {
    w=$1
    row=$(line_worker "$w" 40 50 800 120 380 300 120 60 150 "$W_DEFAULT_COST" "$W_DEFAULT_TUITION")
    surp=$(printf '%s\n' "$row" | while IFS=$'\t' read -r k v; do [ "$k" = annual_surplus ] && printf '%s' "$v"; done)
    ycoa=$(printf '%s\n' "$row" | while IFS=$'\t' read -r k v; do [ "$k" = years_to_full_coa ] && printf '%s' "$v"; done)
    printf '%s\t%s\t%s\n' "$(fmt_money "$w")" "$surp" "$ycoa"
}

# --- report -----------------------------------------------------------------
report() {
    res4_coa=$(bcexpr "2 * $UM_RES_LOWER_COA + 2 * $UM_RES_UPPER_COA")
    nres4_coa=$(bcexpr "2 * $UM_NRES_LOWER_COA + 2 * $UM_NRES_UPPER_COA")
    res4_tuition=$(bcexpr "2 * $UM_RES_LOWER_TUITION + 2 * $UM_RES_UPPER_TUITION")
    nres4_tuition=$(bcexpr "2 * $UM_NRES_LOWER_TUITION + 2 * $UM_NRES_UPPER_TUITION")
    basket_total=$(bcexpr "7*2*35 + 15*2*35 + 15*2*8 + 600 + 75*8")
    cuts4=$(bcexpr "4 * $basket_total")
    w100=$(bcexpr "100 * 35 * 4")
    w150=$(bcexpr "150 * 35 * 4")

    printf '# U-M financial-aid scale report\n'
    printf '# arithmetic: bc; currency: USD; deterministic output\n'
    printf '\n[discretionary-cut basket, 35-week / 8-month academic year]\n'
    basket

    printf '\n[2026-27 U-M cost of attendance, LSA full-time undergraduate]\n'
    coa

    printf '\n[four-year constant-price totals: two lower + two upper years]\n'
    printf 'resident_four_year_coa\t%s\n' "$(fmt_money "$res4_coa")"
    printf 'nonresident_four_year_coa\t%s\n' "$(fmt_money "$nres4_coa")"
    printf 'resident_four_year_tuition_fees\t%s\n' "$(fmt_money "$res4_tuition")"
    printf 'nonresident_four_year_tuition_fees\t%s\n' "$(fmt_money "$nres4_tuition")"
    printf 'four_years_of_modeled_cuts\t%s\n' "$(fmt_money "$cuts4")"

    printf '\n[share of cost covered]\n'
    printf 'comparison\tcost\tsaving\tshare_percent\tremaining\n'
    cover_row resident_lower_year "$UM_RES_LOWER_COA" "$basket_total"
    cover_row resident_upper_year "$UM_RES_UPPER_COA" "$basket_total"
    cover_row resident_four_years "$res4_coa" "$cuts4"
    cover_row nonresident_lower_year "$UM_NRES_LOWER_COA" "$basket_total"
    cover_row nonresident_upper_year "$UM_NRES_UPPER_COA" "$basket_total"
    cover_row nonresident_four_years "$nres4_coa" "$cuts4"

    printf '\n[robustness: flat weekly cuts over 35 weeks x 4 years]\n'
    printf 'weekly_cut\tfour_year_total\tshare_resident_four_year\tshare_nonresident_four_year\n'
    share100r=$(bcexpr "100 * $w100 / $res4_coa")
    share100n=$(bcexpr "100 * $w100 / $nres4_coa")
    share150r=$(bcexpr "100 * $w150 / $res4_coa")
    share150n=$(bcexpr "100 * $w150 / $nres4_coa")
    printf '100.00\t%s\t%s\t%s\n' "$(fmt_money "$w100")" "$(fmt_money "$share100r")" "$(fmt_money "$share100n")"
    printf '150.00\t%s\t%s\t%s\n' "$(fmt_money "$w150")" "$(fmt_money "$share150r")" "$(fmt_money "$share150n")"

    printf '\n[local worker: Ann Arbor auto-parts counter worker]\n'
    printf 'profile_a_part_time_solo_one_bedroom\n'
    line_worker 15 32 50 1400 180 380 300 120 60 150 "$W_DEFAULT_COST" "$W_DEFAULT_TUITION"
    printf 'profile_b_full_time_shared_two_bedroom\n'
    b_surplus=$(profile_surplus 15 40 50 800 120 380 300 120 60 150 "$W_DEFAULT_COST" "$W_DEFAULT_TUITION")
    line_worker 15 40 50 800 120 380 300 120 60 150 "$W_DEFAULT_COST" "$W_DEFAULT_TUITION"
    printf 'profile_c_full_time_17_shared_two_bedroom\n'
    line_worker 17 40 50 800 120 380 300 120 60 150 "$W_DEFAULT_COST" "$W_DEFAULT_TUITION"

    printf '\n[modeled basket as a share of profile B annual surplus]\n'
    basket_vs_surplus=$(bcexpr "100 * $basket_total / $b_surplus")
    printf 'basket_annual_total\t%s\n' "$(fmt_money "$basket_total")"
    printf 'profile_b_annual_surplus\t%s\n' "$(fmt_money "$b_surplus")"
    printf 'basket_share_of_profile_b_surplus_percent\t%s\n' "$(fmt_money "$basket_vs_surplus")"
    printf 'profile_b_surplus_if_basket_is_spent\t%s\n' "$(fmt_money "$(bcexpr "$b_surplus - $basket_total")")"

    printf '\n[sensitivity: full-time 40h, shared two-bedroom, four-year resident COA]\n'
    printf 'wage\tsurplus\tyears_to_full_coa\n'
    sensitivity_row 13.73
    sensitivity_row 15
    sensitivity_row 17
    sensitivity_row 19

    printf '\n[dated west Ann Arbor apartment-listing scenario; rents exclude separately assumed utilities]\n'
    printf 'listing_1br_park_place_monthly_rent\t1339.00\n'
    printf 'listing_2br_park_place_monthly_rent\t1539.00\n'
    printf 'listing_two_roommates_equal_split_monthly_rent\t769.50\n'
    printf 'listing_profile_a_15_part_time_solo_1br\n'
    line_worker 15 32 50 1339 180 380 300 120 60 150 "$W_DEFAULT_COST" "$W_DEFAULT_TUITION"
    printf 'listing_profile_b_15_full_time_shared_2br\n'
    line_worker 15 40 50 769.50 120 380 300 120 60 150 "$W_DEFAULT_COST" "$W_DEFAULT_TUITION"
    printf 'listing_profile_c_17_full_time_shared_2br\n'
    line_worker 17 40 50 769.50 120 380 300 120 60 150 "$W_DEFAULT_COST" "$W_DEFAULT_TUITION"

    printf '\n[nonresident four-year targets at profile surplus]\n'
    printf 'profile\tyears_to_tuition_only\tyears_to_full_coa\n'
    c_surplus=$(profile_surplus 17 40 50 800 120 380 300 120 60 150 "$W_DEFAULT_COST" "$W_DEFAULT_TUITION")
    b_tn=$(bcexpr "$nres4_tuition / $b_surplus")
    b_cn=$(bcexpr "$nres4_coa / $b_surplus")
    c_tn=$(bcexpr "$nres4_tuition / $c_surplus")
    c_cn=$(bcexpr "$nres4_coa / $c_surplus")
    printf 'profile_b_nonresident\t%s\t%s\n' "$(fmt_money "$b_tn")" "$(fmt_money "$b_cn")"
    printf 'profile_c_nonresident\t%s\t%s\n' "$(fmt_money "$c_tn")" "$(fmt_money "$c_cn")"

    printf '\n[explicit subsidy scenarios, not assumed in the base profile]\n'
    gbg_remainder=$(bcexpr "$UM_LIVING + $UM_BOOKS + $UM_TRANSPORT + $UM_MISC")
    gbg_years=$(bcexpr "$gbg_remainder / $b_surplus")
    internship_forgone=$(bcexpr "15 * 10 * 30")
    after_internship=$(bcexpr "$b_surplus - $internship_forgone")
    after_relocation=$(bcexpr "$b_surplus - 2000")
    printf 'go_blue_tuition_covered\t0.00\n'
    printf 'go_blue_non_tuition_remainder_per_year\t%s\n' "$(fmt_money "$gbg_remainder")"
    printf 'go_blue_years_of_profile_b_surplus_per_year_remaining\t%s\n' "$(fmt_money "$gbg_years")"
    printf 'unpaid_internship_forgone_wages_15_x_10_x_30\t%s\n' "$(fmt_money "$internship_forgone")"
    printf 'profile_b_surplus_after_unpaid_internship\t%s\n' "$(fmt_money "$after_internship")"
    printf 'profile_b_surplus_after_one_time_2000_relocation\t%s\n' "$(fmt_money "$after_relocation")"
}
# --- internal assertions ----------------------------------------------------
CHECK_FAILS=0
check_assert() {
    name=$1
    expected=$2
    actual=$3
    if [ "$actual" = "$expected" ]; then
        printf 'ok   %s\n' "$name"
    else
        printf 'FAIL %s expected=[%s] actual=[%s]\n' "$name" "$expected" "$actual" >&2
        CHECK_FAILS=$((CHECK_FAILS + 1))
    fi
}

check() {
    CHECK_FAILS=0
    check_assert basket_total 2980.00 "$(fmt_money "$(bcexpr '7*2*35 + 15*2*35 + 15*2*8 + 600 + 75*8')")"
    check_assert resident_four_year_coa 165520.00 "$(fmt_money "$(bcexpr '2*40194 + 2*42566')")"
    check_assert nonresident_four_year_coa 362980.00 "$(fmt_money "$(bcexpr '2*88394 + 2*93096')")"
    check_assert resident_four_year_tuition 80328.00 "$(fmt_money "$(bcexpr '2*18896 + 2*21268')")"
    check_assert nonresident_four_year_tuition 277788.00 "$(fmt_money "$(bcexpr '2*67096 + 2*71798')")"
    check_assert worker_2026_b_surplus 2100.75 "$(line_worker 15 40 50 800 120 380 300 120 60 150 "$W_DEFAULT_COST" "$W_DEFAULT_TUITION" | awk -F '\t' '$1=="annual_surplus"{print $2}')"
    check_assert worker_2026_b_federal 1420.00 "$(line_worker 15 40 50 800 120 380 300 120 60 150 "$W_DEFAULT_COST" "$W_DEFAULT_TUITION" | awk -F '\t' '$1=="federal_tax"{print $2}')"
    check_assert worker_2026_b_michigan 1024.25 "$(line_worker 15 40 50 800 120 380 300 120 60 150 "$W_DEFAULT_COST" "$W_DEFAULT_TUITION" | awk -F '\t' '$1=="michigan_tax"{print $2}')"
    check_assert cover_40194_2980_share 7.41 "$(fmt_money "$(bcexpr '100 * 2980 / 40194')")"
    check_assert cover_165520_11920_share 7.20 "$(fmt_money "$(bcexpr '100 * 11920 / 165520')")"
    check_assert cover_362980_11920_share 3.28 "$(fmt_money "$(bcexpr '100 * 11920 / 362980')")"
    check_assert zero_saving_share 0.00 "$(fmt_money "$(bcexpr '100 * 0 / 40194')")"
    check_assert full_saving_share 100.00 "$(fmt_money "$(bcexpr '100 * 40194 / 40194')")"
    check_assert lower_bound_exclusive_zero 0 "$(bcexpr '0 > 0')"
    check_assert upper_bound_inclusive_equal 1 "$(bcexpr '40194 <= 40194')"

    ( line_cover "" 100 ) >/dev/null 2>&1
    check_assert cover_empty_exit_code 2 "$?"
    ( line_cover 40194 abc ) >/dev/null 2>&1
    check_assert cover_malformed_exit_code 2 "$?"
    ( line_cover 40194 -1 ) >/dev/null 2>&1
    check_assert cover_negative_exit_code 2 "$?"
    ( line_cover 0 0 ) >/dev/null 2>&1
    check_assert cover_zero_cost_exit_code 3 "$?"
    ( line_cover 40194 50000 ) >/dev/null 2>&1
    check_assert cover_over_cost_exit_code 4 "$?"

    printf '%s: %d failed assertion(s)\n' "$PROG" "$CHECK_FAILS"
    [ "$CHECK_FAILS" -eq 0 ]
}
# --- usage ------------------------------------------------------------------
usage() {
    printf 'usage: %s [command] [options]\n' "$PROG"
    printf 'commands: report (default), basket, coa, cover COST SAVING, worker, check, help\n'
    printf 'options:  --out FILE ; worker: --wage --hours --weeks --rent --utilities\n'
    printf '          --food --transport --health --phone --personal --cost --tuition\n'
}

# --- entry point ------------------------------------------------------------
main() {
    cmd=""
    out_file=""
    positional=()
    wage=$W_DEFAULT_WAGE
    hours=$W_DEFAULT_HOURS
    weeks=$W_DEFAULT_WEEKS
    rent=$W_DEFAULT_RENT
    util=$W_DEFAULT_UTIL
    food=$W_DEFAULT_FOOD
    trans=$W_DEFAULT_TRANS
    health=$W_DEFAULT_HEALTH
    phone=$W_DEFAULT_PHONE
    personal=$W_DEFAULT_PERSONAL
    cost=$W_DEFAULT_COST
    tuition=$W_DEFAULT_TUITION

    while [ $# -gt 0 ]; do
        case "$1" in
            --out) shift; [ $# -gt 0 ] || die "$EX_USAGE" "--out requires a file argument"; out_file=$1; shift ;;
            --out=*) out_file=${1#--out=}; shift ;;
            --wage) shift; [ $# -gt 0 ] || die "$EX_USAGE" "--wage requires a value"; wage=$1; shift ;;
            --hours) shift; [ $# -gt 0 ] || die "$EX_USAGE" "--hours requires a value"; hours=$1; shift ;;
            --weeks) shift; [ $# -gt 0 ] || die "$EX_USAGE" "--weeks requires a value"; weeks=$1; shift ;;
            --rent) shift; [ $# -gt 0 ] || die "$EX_USAGE" "--rent requires a value"; rent=$1; shift ;;
            --utilities) shift; [ $# -gt 0 ] || die "$EX_USAGE" "--utilities requires a value"; util=$1; shift ;;
            --food) shift; [ $# -gt 0 ] || die "$EX_USAGE" "--food requires a value"; food=$1; shift ;;
            --transport) shift; [ $# -gt 0 ] || die "$EX_USAGE" "--transport requires a value"; trans=$1; shift ;;
            --health) shift; [ $# -gt 0 ] || die "$EX_USAGE" "--health requires a value"; health=$1; shift ;;
            --phone) shift; [ $# -gt 0 ] || die "$EX_USAGE" "--phone requires a value"; phone=$1; shift ;;
            --personal) shift; [ $# -gt 0 ] || die "$EX_USAGE" "--personal requires a value"; personal=$1; shift ;;
            --cost) shift; [ $# -gt 0 ] || die "$EX_USAGE" "--cost requires a value"; cost=$1; shift ;;
            --tuition) shift; [ $# -gt 0 ] || die "$EX_USAGE" "--tuition requires a value"; tuition=$1; shift ;;
            --help|-h) cmd=help; shift ;;
            -[0-9]*)
                # A bare negative number is a value, not an option: surface it
                # as a validation error rather than a usage error.
                [ -n "$cmd" ] || die "$EX_USAGE" "unknown command: $1"
                positional+=("$1")
                shift
                ;;
            -*) die "$EX_USAGE" "unknown option: $1" ;;
            *)
                if [ -z "$cmd" ]; then
                    case "$1" in
                        report|basket|coa|cover|worker|check|help) cmd=$1 ;;
                        *) die "$EX_USAGE" "unknown command: $1" ;;
                    esac
                else
                    positional+=("$1")
                fi
                shift
                ;;
        esac
    done
    [ -n "$cmd" ] || cmd=report

    run() {
        case "$cmd" in
            report) report ;;
            basket) basket ;;
            coa) coa ;;
            cover)
                [ "${#positional[@]}" -eq 2 ] || die "$EX_USAGE" "cover requires exactly two arguments: COST SAVING"
                line_cover "${positional[0]}" "${positional[1]}"
                ;;
            worker) line_worker "$wage" "$hours" "$weeks" "$rent" "$util" "$food" "$trans" "$health" "$phone" "$personal" "$cost" "$tuition" ;;
            check) check ;;
            help) usage ;;
            *) die "$EX_USAGE" "unknown command: $cmd" ;;
        esac
    }

    if [ -n "$out_file" ]; then
        outdir=$(dirname -- "$out_file")
        [ -d "$outdir" ] || die 1 "output directory does not exist: $outdir"
        payload=$(mktemp "$outdir/.calculate.XXXXXX") || die 1 "cannot create temporary file in $outdir"
        trap 'rm -f -- "$payload"' EXIT
        run >"$payload"
        rc=$?
        if [ "$rc" -ne 0 ]; then
            rm -f -- "$payload"
            trap - EXIT
            exit "$rc"
        fi
        mv -f -- "$payload" "$out_file"
        trap - EXIT
    else
        run
    fi
}

main "$@"