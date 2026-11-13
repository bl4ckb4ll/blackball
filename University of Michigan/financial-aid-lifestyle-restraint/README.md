# Financial aid, lifestyle restraint, and the scale of Michigan attendance costs

*Issue [#85](https://github.com/bl4ckb4ll/blackball/issues/85). Research note. Every amount below is computed by [`calculate.sh`](calculate.sh) with `bc`; the note shows the inputs and formulas so the arithmetic can be reproduced instead of trusted.*

## What this note tests

University of Michigan financial-literacy material directs students to watch discretionary spending: coffee, eating out, movies, travel, recreation. The same institution publishes annual undergraduate attendance budgets of roughly $40,000 (Michigan resident) to $93,000 (nonresident).

This note preserves the verifiable primary text and then does the arithmetic the advice implies but does not state: **how large are the proposed cuts compared with the cost they are offered to address?**

It follows the issue author's methodology request:

- use concrete local Main Street / Washtenaw County numbers;
- use deterministic arithmetic (`bc`) rather than mental math;
- show every input, formula, and result so the comparison is auditable;
- treat grants, family support, unpaid or low-paid internships, relocation help, and similar subsidies as **explicit separate scenarios** rather than silently assumed.

## What U-M financial-literacy material actually says

**U-M Office of Financial Aid, "Peer Pressure and the Effect on your Finances"** (part of `Your Money, Your Life`):

> Financial aid administrators often advise students to live like a pauper while in college, or you will be forced to do so in adulthood.

> Overspending is the easy choice... Does that mean you can never go out to eat or to a movie? **Not at all.**

The page discusses dinner out with roommates, keeping a car on campus, picking up the next tab for food or beer, vacations, drinking, and peer-pressure spending, and answers the eat-out/movie question with "everything in moderation."

**U-M Office of Financial Aid, "Needs vs. Wants"**:

> wants might be that special coffee drink or a trip over Winter break.

> Kristin Bhaumik of the U-M Office of Financial Aid and instructor for U-M's "The Financially Savvy Student" course, suggests that you save money for your wants and never borrow for them — always pay cash, ask for student discounts, and only eat out when you can afford it.

> If you had an extra $100, what would you spend it on? This could be anything from clothing and accessories, travel, eating out or recreation... where you could potentially save.

**U-M Parents & Families, "First-Year Expectations"**:

> Life in Ann Arbor presents many pressures to spend money – pizza, coffee, movies, clothes, and more.

The next bullet tells families to "establish a budget with your student and explain how to stick to it."

**U-M Campus Information / Financial February (2025)**, produced with the Office of Financial Aid and U-M Credit Union, collects student budgeting advice about cooking at home instead of eating out, limiting restaurant spending, tracking expenses, and taking side jobs. One contributor writes:

> I, myself, am taking on a lot of student loans to come to this University, which adds additional bills and stress to my financial situation.

## What U-M does not say

The located "Peer Pressure" page asks whether students can *never* eat out or go to a movie and answers **"Not at all."** No located U-M page states that skipping movies or restaurant meals pays a tuition bill.

The verified finding is therefore a **juxtaposition** and a **difference in scale**: unusually severe "live like a pauper" language and small discretionary line items sit next to five-figure annual budgets that U-M itself publishes. This note does not claim that U-M made an explicit "movies pay tuition" comparison; the stronger remembered version remains unverified unless an older page is recovered.

## Pinned 2026–27 cost of attendance

U-M Office of Financial Aid, "Estimating Costs," LSA full-time undergraduate, estimated fall/winter 2026–27 (annual budgets):

| Budget line | Resident lower (0–54 cr.) | Resident upper (55+ cr.) | Nonresident lower | Nonresident upper |
|---|---:|---:|---:|---:|
| Tuition & fees | $18,896 | $21,268 | $67,096 | $71,798 |
| Living expenses | $17,220 | $17,220 | $17,220 | $17,220 |
| Books, course materials, supplies, equipment | $1,220 | $1,220 | $1,220 | $1,220 |
| Transportation | $400 | $400 | $400 | $400 |
| Misc. personal | $2,458 | $2,458 | $2,458 | $2,458 |
| **Annual total** | **$40,194** | **$42,566** | **$88,394** | **$93,096** |

These are **annual** costs of attendance, not four-year totals. Each total already includes living, books, transportation, and personal allowances, so a discretionary-cut saving reduces the variable-living part of the budget; it is not a second, independent subtraction from tuition. U-M's own page notes that if a student's costs exceed the estimate, they should contact the Office of Financial Aid.

The four-year figures below assume two lower-division and two upper-division years at constant 2026–27 prices:

- Resident: `2 × 40,194 + 2 × 42,566 = $165,520`
- Nonresident: `2 × 88,394 + 2 × 93,096 = $362,980`
- Resident tuition alone: `2 × 18,896 + 2 × 21,268 = $80,328`
- Nonresident tuition alone: `2 × 67,096 + 2 × 71,798 = $277,788`

`calculate.sh` prints every one of these values (`bash calculate.sh coa`).

## Part 1 — Discretionary cuts versus attendance cost

### Illustrative assumptions

Only the **$7 drink** price is anchored to the related 2025 U-M Financial February material. The remaining prices and frequencies are deliberately labeled **assumptions for a scale calculation**, not claims about what U-M says a typical student spends. Assume a 35-week / 8-month fall-winter academic year.

| Cut | Assumption | Arithmetic | Annual saving |
|---|---|---|---:|
| Special drinks | $7, twice/week | `7 × 2 × 35` | $490 |
| Eating out | 2 meals/week; $15 **net** saving per meal after replacement food | `15 × 2 × 35` | $1,050 |
| Movies | $15, twice/month | `15 × 2 × 8` | $240 |
| Winter-break travel | forgo one $600 trip | `600` | $600 |
| Clothing / recreation | reduce by $75/month | `75 × 8` | $600 |
| **Total** | | | **$2,980 / year** |

Cars and alcohol are omitted from the main basket because their costs vary too widely to insert one defensible figure without a separate sourced model. Cutting all of the items above for four academic years saves `4 × 2,980 = $11,920`.

### Share of cost covered

`share = saving ÷ cost`. The issue's table rounds to one decimal; [`calculate.sh`](calculate.sh) prints exact two-decimal values in parentheses.

| Comparison | Attendance cost | Modeled saving | Share covered (exact) | Cost remaining |
|---|---:|---:|---:|---:|
| Resident lower-division year | $40,194 | $2,980 | 7.4% (7.41) | $37,214 |
| Resident upper-division year | $42,566 | $2,980 | 7.0% (7.00) | $39,586 |
| **Resident four years** | **$165,520** | **$11,920** | **7.2% (7.20)** | **$153,600** |
| Nonresident lower-division year | $88,394 | $2,980 | 3.4% (3.37) | $85,414 |
| Nonresident upper-division year | $93,096 | $2,980 | 3.2% (3.20) | $90,116 |
| **Nonresident four years** | **$362,980** | **$11,920** | **3.3% (3.28)** | **$351,060** |

### Robustness check that avoids arguing about individual coffee and movie prices

| Flat weekly cut | Four-year total | Share of resident four-year COA | Share of nonresident four-year COA |
|---|---:|---:|---:|
| $100/week (`100 × 35 × 4`) | $14,000 | 8.5% (8.46) | 3.9% (3.86) |
| $150/week (`150 × 35 × 4`) | $21,000 | 12.7% (12.69) | 5.8% (5.79) |

### What Part 1 establishes

A severe illustrative cut model — coffee, restaurant meals, movies, a winter trip, and clothing/recreation — removes about **7% of four years of resident cost** and about **3% of four years of nonresident cost**. Even a flat $150/week cut removes only 12.7% and 5.8% respectively. The remaining majority of the bill is untouched.

This is a **scale** finding, not a claim that budgeting is useless or that U-M literally promised tuition from a movie ticket.

## Part 2 — A local Washtenaw County worker

The issue's follow-up asked for a concrete Main Street profile: an auto-parts counter worker with a plausibly located Ann Arbor apartment within a few miles of both work and U-M. The point is to replace the absent "years of surplus" question with an auditable answer.

### Dated local observations versus assumptions

- **Workplace:** O'Reilly Auto Parts store #3329 is at 2182 West Stadium Boulevard, Ann Arbor (company store directory). This fixes a real comparison location, not a verified worker or wage: https://locations.oreillyauto.com/en-us/mi/annarbor/autoparts-3329.html
- **Comparable posted wage:** Weingartz advertised a full-time Ann Arbor **Parts and Service Specialist** at **$17–$20/hour**. The [preserved listing](https://tallo.com/talent/job/sales/parts-specialist-or-salesperson/mi/ann-arbor/parts-and-service-specialist-d21612c8) specifies an **October 24, 2026 expiry**; examined October 27, 2026. It is dated occupational evidence, **not** evidence of current availability or of what O'Reilly pays. The baseline $15/hour remains a hypothetical input. See also [Weingartz employer listing on Indeed](https://www.indeed.com/cmp/Weingartz?campaignid=mobvjcmp&fromjk=bf9e22e30d786e97).
- **Locatable rents:** Park Place, **1980 Pauline Boulevard**, west Ann Arbor: [property manager floor-plan snapshot](https://www.mckinley.com/apartments/michigan/ann-arbor/park-place/floorplans/the-cedar/?locale=ht) and [unit-level rental listing](https://hotpads.com/park-place-ann-arbor-mi-48103-249jrxr/pad?beds=1), inspected October 27, 2026. The displayed Sycamore one-bedroom unit 2088-2B was **$1,339/month**, listed for November 5; the Cedar two-bedroom unit 2066-2A was **$1,539/month**, listed for November 6. An *assumed equal split between two roommates* is **$769.50/month each**. These are **advertisements, not signed leases**, and prices, concessions, fees and availability can change. Other versions of the property page show promotional rents; do not substitute those for recurring contracted rent without verification.
- **Independent contextual benchmark:** MIT's [2026 Washtenaw County Living Wage Calculator](https://livingwage.mit.edu/counties/26161) estimates **$25.30/hour** for one adult with no children working 2,080 hours annually (updated February 15, 2026). This uses **MIT's own expense methodology** and is **not** an observed worker wage or a substitution for the expense basket below.

### Model inputs

| Input | Value | Basis |
|---|---:|---|
| Hourly wage | $15.00 baseline; $13.73, $15, $17, $19 sensitivity | $15 is an explicit **assumption**, not an O'Reilly salary. $13.73 is Michigan's ordinary 2026 minimum wage; $17–$20 is the separate Weingartz posted range. |
| Hours / week | 32 (profile A); 40 (profiles B, C) | **Assumptions** about a part-time and full-time schedule, not promised hours in a captured O'Reilly offer. |
| Weeks / year | 50 | **Assumption:** two weeks unpaid. |
| Federal income tax | 2026 single filer; $16,100 standard deduction; 10% to $12,400 taxable, then 12% to $50,400 | [IRS 2026 Publication 505](https://www.irs.gov/publications/p505); full bracket schedule implemented. No credits, itemizing or special deductions assumed. |
| FICA | 6.2% Social Security to $184,500 wage base + 1.45% Medicare (plus 0.9% over $200,000) | [IRS Publication 15, 2026](https://www.irs.gov/publications/p15). |
| Michigan income tax | 4.25% of modeled Michigan taxable wages above one $5,900 personal exemption | [Michigan Treasury, calendar year 2026](https://www.michigan.gov/taxes/business-taxes/withholding/calendar-year-tax-information). No state credits/deductions beyond this simplified exemption. |
| Rent | $1,400/month solo 1BR; $800/month shared 2BR | **Original baseline assumptions**, retained separately from observed advertisements. Alternative Park Place rents are $1,339 solo / $769.50 equal shared split. |
| Utilities + internet | $180/month solo; $120/month shared | Assumption **additional to the quoted apartment rent**; utilities/fees are not verified for the unit. Do not also add utilities to a HUD *gross-rent* benchmark. |
| Food at home | $380/month | Assumption. |
| Transportation | $300/month | Assumption (insurance, fuel, maintenance, or bus). |
| Health-insurance premium | $120/month | Assumption (employee share, treated as after-tax expense in this simplified model). |
| Phone | $60/month | Assumption. |
| Personal / household | $150/month | Assumption. |

These profiles concern a **hypothetical single worker without dependents**. The tax estimates do not include local tax where applicable, payroll withholding differences, refundable federal/state credits, pretax employee deductions, benefits eligibility, grants, inflation, investment returns, or earnings interrupted by school. The expense budget contains **necessities only**; the Part 1 discretionary basket is extra. The years-of-surplus ratio is an illustrative scale comparison, **not** a realistic student financing schedule.

### Worked computation — profile B (40 h/week at $15.00, shared two-bedroom)

Formulas follow [`calculate.sh`](calculate.sh) with verified 2026 federal and Michigan parameters:

- Gross: `15.00 × 40 × 50 = $30,000`
- Federal taxable: `30,000 − 16,100 = $13,900`; federal tax: `0.10 × 12,400 + 0.12 × (13,900 − 12,400) = 1,240 + 180 = $1,420.00`
- FICA: `30,000 × (0.062 + 0.0145) = $2,295.00`
- Michigan: `(30,000 − 5,900) × 0.0425 = $1,024.25`
- Take-home after modeled taxes: `30,000 − 1,420 − 2,295 − 1,024.25 = $25,260.75`
- Annual expenses: `(800 + 120 + 380 + 300 + 120 + 60 + 150) × 12 = 1,930 × 12 = $23,160`
- **Annual surplus: `25,260.75 − 23,160 = $2,100.75`**

### Years of surplus required to cover the bill

`years = cost ÷ surplus`, holding 2026–27 prices constant and ignoring that attending school displaces the work that produces the surplus.

| Profile | Take-home | Annual surplus | Years to resident tuition only ($80,328) | Years to resident COA ($165,520) | Years to nonresident tuition only ($277,788) | Years to nonresident COA ($362,980) |
|---|---:|---:|---:|---:|---:|---:|
| **A** — 32 h/week, $15.00, solo 1BR | $20,604.75 | **−$10,475.25** | never | never | never | never |
| **B** — 40 h/week, $15.00, shared 2BR | $25,260.75 | **$2,100.75** | 38.24 | 78.79 | 132.23 | 172.79 |
| **C** — 40 h/week, $17.00, shared 2BR | $28,304.75 | **$5,144.75** | 15.61 | 32.17 | 53.99 | 70.55 |

Under these specific baseline inputs, profile A has **negative savings**; B has a small positive margin. Profile B's entire surplus would take **78.79 years** to match the resident four-year cost-of-attendance budget, or **172.79 years** for the nonresident budget. These ratios are not predictions of time to a degree or proof that all aid recipients face gross sticker price.

### Wage and listed-rent sensitivities

Full-time, 40 h/week, original **modeled** $800/month shared rent, four-year resident COA:

| Wage | Annual surplus | Years to resident four-year COA |
|---:|---:|---:|
| $13.73 (Michigan 2026 ordinary minimum) | $147.01 | 1,125.91 |
| $15.00 (assumed baseline) | $2,100.75 | 78.79 |
| $17.00 (bottom of comparable advertised range) | $5,144.75 | 32.17 |
| $19.00 (inside comparable advertised range) | $8,188.75 | 20.21 |

**Separately** using the observed Park Place advertisement, holding all other modeled expenses fixed:

| Worker scenario | Advertised apartment rent input | Modeled annual surplus | Years to resident four-year COA |
|---|---:|---:|---:|
| A: $15/h, 32h/wk, solo one-bedroom | $1,339/month | −$9,743.25 | never |
| B: $15/h, 40h/wk, half of two-bedroom | $769.50/month | $2,466.75 | 67.10 |
| C: $17/h, 40h/wk, half of two-bedroom | $769.50/month | $5,510.75 | 30.04 |

**Observed:** the unit advertisements and comparable job pay band. **Assumed:** actual employment, hours, co-tenancy, 50 paid weeks, utility spending, costs outside rent, and each hypothetical worker's particular wage. Near-minimum wages make the ratio extraordinarily sensitive to a small change in expenses. At the higher wage scenarios, nonresident attendance-cost comparisons are still decades but **not always centuries**.

### The discretionary basket relative to this worker

For profile B, the $2,980 modeled basket is **141.85%** of the annual surplus after necessities. Actually spending it produces a deficit of `2,100.75 − 2,980 = −$879.25`; forgoing it recovers a thin surplus. Even that modeled full surplus would take **78.79 years** to match the resident four-year attendance-cost budget.

The scale problem is exactly this inversion: the spending the advice treats as discretionary is large relative to an ordinary worker's margin, while the price it is supposed to address is large enough that the cut barely registers against it.

## Part 3 — Subsidies as explicit separate scenarios

None of the following is assumed in the base profile. Each changes the price, and each is listed separately because the arithmetic depends on which one applies.

### Scenario G — Go Blue Guarantee (grant/tuition aid)

U-M states that Michigan families with income of $125,000 or less **and** assets below $125,000 qualify for free tuition on the Ann Arbor campus for up to four years, reviewed each year. That is a real, bounded promise about **price**, and it changes the problem substantially for qualifying residents: tuition and fees go to $0.

For an **otherwise qualifying LSA student with tuition and mandatory fees covered but no separate living-cost grant**, the full non-tuition budget remains `17,220 + 1,220 + 400 + 2,458 = $21,298` per academic year; this is **10.14** years of profile B's modeled $2,100.75 annual surplus **per year** of study. This is **not the net price for all Go Blue recipients**: U-M says it meets demonstrated need for eligible residents, and in 2026 qualifying students in **Nursing, specified teacher-preparation programs in the Marsal Family School of Education, and Music, Theatre & Dance** receive coverage for the **full cost of attendance including housing**. Individual grant awards must be calculated separately. See [U-M eligibility](https://finaid.umich.edu/apply-aid/new-undergraduates/michigan-residents/go-blue-guarantee-eligibility).

### Scenario F — Family pays part or all of cost of attendance

If a family covers some or all of the $165,520 (resident) or $362,980 (nonresident) four-year cost, the student's own years-to-cover fall accordingly, potentially to zero. Family capital is doing the work in that case, and the claim should say so rather than attributing the outcome to the student's discretion.

### Scenario I — Unpaid or low-paid internship or research placement

**If and only if** a 10-hour-per-week unpaid placement replaces 10 previously paid hours for 30 weeks, wages forgone at the **assumed** $15/hour are `15 × 10 × 30 = $4,500` gross. Compared as a simplified gross opportunity-cost shock to profile B's $2,100.75 margin, the arithmetic is `2,100.75 − 4,500 = −$2,399.25`. This is not an observed internship requirement, and a rigorous net-income scenario must recompute taxes for fewer paid hours instead of subtracting gross wages from net savings.

### Scenario R — Relocation or moving help

A modeled one-time $2,000 moving expense changes profile B's annual surplus to `2,100.75 − 2,000 = $100.75`. It **nearly** eliminates the year's savings, but does **not** create a deficit at that input. The source of the $2,000 cost remains hypothetical.

The consistent result: anything that increases cost or reduces paid hours — tuition, unpaid work, relocation, transport, family constraints — pushes this worker toward or below zero, while small discretionary cuts move the total by a few percent.

## Part 4 — Interpretation: austerity does not manufacture capital

Budgeting can reduce some variable living expenses. It cannot solve a shortage of capital on the scale of U-M attendance costs. No plausible version of "live like a pauper" — fewer restaurant meals, fewer movies, cheaper food, less travel, less recreation — turns a person who lacks tens or hundreds of thousands of dollars into someone who has that money available.

That is why the framing matters. When an institution charging roughly $40,000–$43,000 per year for resident attendance and $88,000–$93,000 for nonresident attendance directs financially strained students toward coffee, movies, eating out, travel, and comparable discretionary spending, it risks recasting a **large affordability problem as a problem of personal restraint**.

The deterministic comparison above makes the scale explicit. Even aggressive discretionary cuts leave the overwhelming majority of the attendance cost untouched, and for these modeled local-worker profiles the ratios are generally many years, decades or longer, not months. They do not estimate a student's actual net cost after individual aid.

The defensible claim is about **scale, affordability, and moral framing** — not that U-M told students their movie tickets were the tuition bill.

## Reproduce the arithmetic

From this directory:

```sh
bash calculate.sh            # full deterministic report (default)
bash calculate.sh basket     # itemized discretionary basket
bash calculate.sh coa        # pinned 2026-27 cost-of-attendance breakdown
bash calculate.sh cover 40194 2980
bash calculate.sh worker --wage 16 --hours 40 --rent 800 --utilities 120 \
  --food 380 --transport 300 --health 120 --phone 60 --personal 150
bash calculate.sh check      # internal assertion suite
```

Every run is deterministic (`bc`, no network, no randomness). `--out FILE` writes the report atomically (temporary file plus rename), so concurrent writers never produce a half-written file.

Typed exit codes:

- `0` success;
- `2` validation error — null, empty, malformed, or negative value;
- `3` domain error — value outside the open interval it must lie in;
- `4` range error — value outside the closed interval it must lie in;
- `64` usage error — unknown command or option.

`cover COST SAVING` evaluates boundary conditions strictly: `cost` must lie in the **open** interval `(0, infinity)`, and `saving` must lie in the **closed** interval `[0, cost]`. So `cover 0 0` is a domain error, `cover 40194 40194` is valid 100% coverage, and `cover 40194 50000` is a range error.

Companion shell tests live in [`tests/`](../../tests/run_tests.sh) and cover happy-path, null, empty, boundary, negative, concurrency, and regression cases.

## Evidence gaps and next steps

1. **Archive the historical `Your Money, Your Life` pages.** The located pages carry no visible date. Pin a Wayback Machine snapshot before using their wording longitudinally.
2. **Find O'Reilly-specific pay evidence.** A dated **comparable** Ann Arbor Weingartz parts/services posting is now recorded at $17–$20/hour but expired October 24; do not describe its pay or schedule as O'Reilly's or as a currently available job.
3. **Recheck the rental offer and fees.** Dated unit-level Park Place advertisements have been recorded separately from the initial $1,400 / $800 hypothetical rent. Verify landlord-contracted rents, utility responsibility and move-in charges before converting the sensitivity into observed monthly living costs. HUD Fair Market Rent is a **gross-rent** benchmark, not an advertised unit rent; do not add utilities twice.
4. **Refine the tax/benefits scenario.** Federal 2026 rates/standard deduction and Michigan's 2026 rate/exemption are now pinned. Add credits, income-limited public support, employer pretax health premiums, and actual state tax-return treatment where relevant rather than implying this simplified calculation is exact take-home pay.
5. **Add a loan-amortization scenario.** Debt actually carried by non-grant students adds interest not modeled here.
6. **Separate research question on family capital.** Test whether entry into fields such as civil engineering depends materially on family-funded internships, relocation, transport, housing, or periods of low or no pay. Anecdotes generate the hypothesis; they do not establish it.
7. **Search for the remembered explicit movie/eating-out tuition comparison.** It remains unverified; do not promote it to a U-M claim until an older source is recovered.

## Sources (checked 2026-10-27)

- U-M Office of Financial Aid, "Peer Pressure and the Effect on your Finances": https://sites.google.com/a/umich.edu/your-money-your-life/home/personal-finance-topics/peer-pressure-at-college
- U-M Office of Financial Aid, "Needs vs. Wants": https://sites.google.com/a/umich.edu/your-money-your-life/home/personal-finance-topics/needs-vs-wants
- U-M Office of Financial Aid, "Estimating Costs" (2026–27 budgets): https://finaid.umich.edu/getting-started/estimating-costs
- U-M Go Blue Guarantee (Ann Arbor): https://goblueguarantee.umich.edu/ann-arbor/
- U-M Office of Financial Aid, "Go Blue Guarantee Eligibility": https://finaid.umich.edu/apply-aid/new-undergraduates/michigan-residents/go-blue-guarantee-eligibility
- U-M Campus Information, "Victor Views | Lessons on Money (Financial February)": https://campusinfo.umich.edu/article/victor-views-lessons-money-financial-february
- U-M Parents & Families, "First-Year Expectations": https://parents.umich.edu/page/firstyear-expectations
- IRS, 2026 Publication 505 (federal single-filer rates): https://www.irs.gov/publications/p505
- IRS, 2026 Publication 15 (Social Security/Medicare withholding): https://www.irs.gov/publications/p15
- Michigan Treasury, calendar-year 2026 4.25% and $5,900 exemption: https://www.michigan.gov/taxes/business-taxes/withholding/calendar-year-tax-information
- Michigan LEO, minimum wage $13.73 from January 1, 2026: https://www.michigan.gov/leo/bureaus-agencies/ber/Wage-and-Hour/min-wage
- O'Reilly store #3329, 2182 West Stadium Boulevard: https://locations.oreillyauto.com/en-us/mi/annarbor/autoparts-3329.html
- Weingartz Ann Arbor dated parts/service listing ($17–$20/hour; stated October 24, 2026 expiration): https://tallo.com/talent/job/sales/parts-specialist-or-salesperson/mi/ann-arbor/parts-and-service-specialist-d21612c8
- Park Place floor plans, McKinley property manager: https://www.mckinley.com/apartments/michigan/ann-arbor/park-place/floorplans/the-cedar/?locale=ht
- Park Place advertised units and dates: https://hotpads.com/park-place-ann-arbor-mi-48103-249jrxr/pad?beds=1
- MIT, 2026 Washtenaw living-wage method/expenses: https://livingwage.mit.edu/counties/26161

Related Blackball notes: [`education/if-you-mean-economic-empowerment-put-it-in-the-contract.md`](../../education/if-you-mean-economic-empowerment-put-it-in-the-contract.md) tests economic-empowerment claims against family capital and unpaid work; [`../README.md`](../README.md) tracks Michigan claims, costs, and outcomes.
