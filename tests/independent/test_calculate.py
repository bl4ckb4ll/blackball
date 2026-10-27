#!/usr/bin/env python3
"""Independent Decimal oracle for the bc financial-aid calculator.

Run: python3 tests/independent/test_calculate.py
No external Python packages or network access. The production calculator
remains bash+bc; this independent test derives the tax totals separately.
"""
from decimal import Decimal, ROUND_HALF_EVEN, getcontext
from pathlib import Path
import subprocess

getcontext().prec = 35
ROOT = Path(__file__).resolve().parents[2]
CALCULATOR = ROOT / "University of Michigan" / "financial-aid-lifestyle-restraint" / "calculate.sh"
D = Decimal
CENT = D("0.01")
COUNTER = 0


def cents(n):
    return D(n).quantize(CENT, rounding=ROUND_HALF_EVEN)


def run_calculator(*args):
    proc = subprocess.run(["bash", str(CALCULATOR), *map(str, args)],
                          text=True, capture_output=True, check=True)
    return dict(line.split("\t", 1) for line in proc.stdout.splitlines() if "\t" in line)


def independently_calculate(wage, hours=40, weeks=50, rent=800, utilities=120):
    gross = D(str(wage)) * D(hours) * D(weeks)
    taxable = max(gross - D(16100), D(0))
    federal = D(0)
    edges = (D(0), D(12400), D(50400), D(105700), D(201775),
             D(256225), D(640600))
    rates = tuple(map(D, (".10", ".12", ".22", ".24", ".32", ".35", ".37")))
    for lower, upper, rate in zip(edges, edges[1:] + (D("Infinity"),), rates):
        portion = max(min(taxable, upper) - lower, D(0))
        federal += portion * rate
    social_security = min(gross, D(184500)) * D(".062")
    medicare = gross * D(".0145") + max(gross - D(200000), D(0)) * D(".009")
    fica = social_security + medicare
    state = max(gross - D(5900), D(0)) * D(".0425")
    take_home = gross - federal - fica - state
    annual_expenses = (D(str(rent)) + D(str(utilities)) + D(380)
                       + D(300) + D(120) + D(60) + D(150)) * 12
    surplus = take_home - annual_expenses
    result = {
        "gross_annual": gross,
        "federal_tax": federal,
        "fica_tax": fica,
        "michigan_tax": state,
        "take_home": take_home,
        "annual_expenses": annual_expenses,
        "annual_surplus": surplus,
    }
    if surplus > 0:
        result["years_to_tuition_only"] = D(80328) / surplus
        result["years_to_full_coa"] = D(165520) / surplus
    else:
        result["years_to_tuition_only"] = "never"
        result["years_to_full_coa"] = "never"
    return result


def assert_worker(label, wage, hours=40, weeks=50, rent=800, utilities=120):
    global COUNTER
    actual = run_calculator("worker", "--wage", wage, "--hours", hours,
                            "--weeks", weeks, "--rent", rent, "--utilities", utilities)
    expected = independently_calculate(wage, hours, weeks, rent, utilities)
    for key, value in expected.items():
        shown = "never" if value == "never" else str(cents(value))
        assert actual[key] == shown, (
            f"{label}: {key}: bc emitted {actual[key]!r}, independent Decimal expected {shown!r}")
        COUNTER += 1


def main():
    assert_worker("part-time solo baseline", 15, hours=32, rent=1400, utilities=180)
    assert_worker("full-time shared baseline", 15)
    assert_worker("advertised comparable wage", 17)
    assert_worker("Michigan minimum wage", "13.73")
    assert_worker("wage sensitivity", 19)
    assert_worker("property-ad rent solo", 15, hours=32, rent=1339, utilities=180)
    assert_worker("property-ad equal room split", 15, rent="769.50")
    assert_worker("property-ad comparable wage", 17, rent="769.50")
    assert_worker("above 22% federal bracket", 60)
    assert_worker("above Social Security wage cap", 95)
    assert_worker("additional Medicare tax", 101)

    basket = run_calculator("basket")
    assert basket["basket_annual_total"] == "2980.00"
    cover = run_calculator("cover", "165520", "11920")
    assert cover["share_percent"] == str(cents(D(11920) / D(165520) * 100))
    assert cover["remaining"] == "153600.00"

    print(f"passed: {COUNTER} independent worker-field assertions; 3 basket/coverage checks")


if __name__ == "__main__":
    main()
