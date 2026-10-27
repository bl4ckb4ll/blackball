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

### Model inputs

| Input | Value | Basis |
|---|---:|---|
| Hourly wage | $15.00 (main); $13 / $15 / $17 / $19 (sensitivity) | **Model input.** A representative Ann Arbor auto-parts counter rate. It is not a pinned posting: a dated capture of a live O'Reilly or comparable posting must replace it before this line is treated as durable wage evidence. |
| Hours / week | 32 (profile A); 40 (profiles B, C) | Store counter roles are often part-time; 40 hours is the full-time case. |
| Weeks / year | 50 | Two weeks unpaid. |
| Federal tax | 2025 single standard deduction $15,000; 10% to $11,925, then 12% | IRS Rev. Proc. 2024-40 brackets, used as a dated stand-in; re-pin when the 2026 table is captured. Taxable income here never reaches the 22% bracket. |
| FICA | 7.65% | Social Security 6.2% + Medicare 1.45%, below the wage base. |
| Michigan income tax | 4.25% | Michigan Department of Treasury flat individual rate. |
| Rent | $1,400/month (solo 1BR); $800/month (shared 2BR) | **Model input.** A HUD Fair Market Rent snapshot for the Ann Arbor HUD Metro FMR Area must be pinned before this line is treated as durable. |
| Utilities + internet | $180/month (solo); $120/month (shared) | Model input. |
| Food at home | $380/month | Model input. |
| Transportation | $300/month | Model input (insurance, fuel, maintenance, or bus). |
| Health-insurance premium | $120/month | Model input (employee share). |
| Phone | $60/month | Model input. |
| Personal / household | $150/month | Model input. |

The expense budget contains **necessities only**. The Part 1 discretionary basket is additional spending on top of it.

### Worked computation — profile B (40 h/week at $15.00, shared two-bedroom)

Formulas are shown exactly as [`calculate.sh`](calculate.sh) computes them:

- Gross: `15.00 × 40 × 50 = $30,000`
- Federal taxable: `30,000 − 15,000 = $15,000`; federal tax: `0.10 × 11,925 + 0.12 × (15,000 − 11,925) = 1,192.50 + 369.00 = $1,561.50`
- FICA: `30,000 × 0.0765 = $2,295.00`
- Michigan: `30,000 × 0.0425 = $1,275.00`
- Take-home: `30,000 − 1,561.50 − 2,295.00 − 1,275.00 = $24,868.50`
- Annual expenses: `(800 + 120 + 380 + 300 + 120 + 60 + 150) × 12 = 1,930 × 12 = $23,160`
- **Annual surplus: `24,868.50 − 23,160 = $1,708.50`**

### Years of surplus required to cover the bill

`years = cost ÷ surplus`, holding 2026–27 prices constant and ignoring that attending school displaces the work that produces the surplus.

| Profile | Take-home | Annual surplus | Years to resident tuition only ($80,328) | Years to resident COA ($165,520) | Years to nonresident tuition only ($277,788) | Years to nonresident COA ($362,980) |
|---|---:|---:|---:|---:|---:|---:|
| **A** — 32 h/week, $15.00, solo 1BR | $20,244 | **−$10,836** | never | never | never | never |
| **B** — 40 h/week, $15.00, shared 2BR | $24,868.50 | **$1,708.50** | 47.02 | 96.88 | 162.59 | 212.46 |
| **C** — 40 h/week, $17.00, shared 2BR | $27,912.50 | **$4,752.50** | 16.90 | 34.83 | 58.45 | 76.38 |

Profile A cannot cover a one-bedroom apartment out of wages at all. Only the full-time, shared-housing case produces a surplus, and four years of resident cost of attendance — tuition, living, books, and travel — still requires roughly **97 years** of that entire surplus; nonresident cost requires about **212 years**.

### Sensitivity to the unpinned wage

Full-time, 40 h/week, shared two-bedroom, four-year resident COA:

| Wage | Annual surplus | Years to resident four-year COA |
|---:|---:|---:|
| $13.00 | −$1,354.00 | never |
| $15.00 | $1,708.50 | 96.88 |
| $17.00 | $4,752.50 | 34.83 |
| $19.00 | $7,796.50 | 21.23 |

The conclusion is stable across the plausible wage range: the surplus needed to pay four years of resident cost of attendance is measured in **decades**, and for nonresident cost of attendance in **centuries**.

### The discretionary basket relative to this worker

For profile B, the $2,980 modeled basket is **174.42%** of the entire annual surplus left after necessities. A worker who actually spends that basket is running a deficit of `1,708.50 − 2,980 = −$1,271.50`; eliminating the basket is the difference between a deficit and a thin surplus. Yet even that recovered surplus still requires 96.88 years for resident four-year cost of attendance.

The scale problem is exactly this inversion: the spending the advice treats as discretionary is large relative to an ordinary worker's margin, while the price it is supposed to address is large enough that the cut barely registers against it.

## Part 3 — Subsidies as explicit separate scenarios

None of the following is assumed in the base profile. Each changes the price, and each is listed separately because the arithmetic depends on which one applies.

### Scenario G — Go Blue Guarantee (grant/tuition aid)

U-M states that Michigan families with income of $125,000 or less **and** assets below $125,000 qualify for free tuition on the Ann Arbor campus for up to four years, reviewed each year. That is a real, bounded promise about **price**, and it changes the problem substantially for qualifying residents: tuition and fees go to $0.

It does not erase the non-tuition budget. The remaining U-M cost-of-attendance lines are `17,220 + 1,220 + 400 + 2,458 = $21,298` per year. At profile B's surplus of $1,708.50, that remainder alone is `21,298 ÷ 1,708.50 = 12.47` years of the worker's entire annual surplus **per year** of study. Grants remove tuition; they do not remove the living-cost requirement, and they do not turn a worker without capital into someone who has it.

### Scenario F — Family pays part or all of cost of attendance

If a family covers some or all of the $165,520 (resident) or $362,980 (nonresident) four-year cost, the student's own years-to-cover fall accordingly, potentially to zero. Family capital is doing the work in that case, and the claim should say so rather than attributing the outcome to the student's discretion.

### Scenario I — Unpaid or low-paid internship or research placement

If a student must take an unpaid 10-hour-per-week placement during a 30-week academic year, forgone wages at $15.00/hour are `15 × 10 × 30 = $4,500`. That exceeds profile B's annual surplus of $1,708.50 and turns it negative: `1,708.50 − 4,500 = −$2,791.50`. Unpaid experience is therefore not free; it is a capital requirement of roughly $4,500 per placement year for this worker.

### Scenario R — Relocation or moving help

A single $2,000 relocation or moving expense moves profile B's surplus from `1,708.50` to `1,708.50 − 2,000 = −$291.50`. One-time costs of this size are enough to eliminate the annual margin.

The consistent result: anything that increases cost or reduces paid hours — tuition, unpaid work, relocation, transport, family constraints — pushes this worker toward or below zero, while small discretionary cuts move the total by a few percent.

## Part 4 — Interpretation: austerity does not manufacture capital

Budgeting can reduce some variable living expenses. It cannot solve a shortage of capital on the scale of U-M attendance costs. No plausible version of "live like a pauper" — fewer restaurant meals, fewer movies, cheaper food, less travel, less recreation — turns a person who lacks tens or hundreds of thousands of dollars into someone who has that money available.

That is why the framing matters. When an institution charging roughly $40,000–$43,000 per year for resident attendance and $88,000–$93,000 for nonresident attendance directs financially strained students toward coffee, movies, eating out, travel, and comparable discretionary spending, it risks recasting a **large affordability problem as a problem of personal restraint**.

The deterministic comparison above makes the scale explicit. Even aggressive discretionary cuts leave the overwhelming majority of the attendance cost untouched, and for a concrete local worker the arithmetic runs in decades or centuries, not months.

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
2. **Capture a dated live wage posting.** Replace the $15.00 model wage with a captured O'Reilly (or comparable) Ann Arbor counter/sales posting, including pay type and schedule.
3. **Pin a HUD Fair Market Rent snapshot** for the Ann Arbor HUD Metro FMR Area to replace the $1,400 / $800 rent inputs.
4. **Pin the exact 2026 tax tables** (IRS bracket and standard-deduction figures, Michigan rate) once published, replacing the dated 2025 stand-ins.
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
- IRS, Publication 15 (tax-withholding reference): https://www.irs.gov/publications/p15
- Michigan Department of Treasury, individual income tax: https://www.michigan.gov/taxes/iit

Related Blackball notes: [`education/if-you-mean-economic-empowerment-put-it-in-the-contract.md`](../../education/if-you-mean-economic-empowerment-put-it-in-the-contract.md) tests economic-empowerment claims against family capital and unpaid work; [`../README.md`](../README.md) tracks Michigan claims, costs, and outcomes.
