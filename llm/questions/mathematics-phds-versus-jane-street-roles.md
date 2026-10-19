# Mathematics PhDs versus Jane Street's genuinely mathematical openings

Recorded 2026-10-15. **Status: partially quantified; annual world supply and annual filled mathematical seats at Jane Street are not yet measured.**

## What exactly is being compared?

Two distinct observables are required:

1. **Supply:** annual completed doctorates in mathematics, by *country where the degree was awarded*, including degrees awarded outside the United States. Citizenship is not an additive geographical category: foreign nationals awarded doctorates in the United States are already counted in the U.S. doctorate series. Define a narrow mathematics category and a separate broader mathematics-plus-statistics category.
2. **Demand:** *distinct permanent job seats actually filled each year* by Jane Street in roles whose essential work uses advanced mathematics, probability, statistics, optimization, or mathematical research. Advertised job records, a snapshot of active requisitions, internships, and verified new hires are different variables.

A ratio between one year's degree awards and another year's unfiltered company job advertisements is **not a placement probability**, even if both numbers were measured perfectly. Most doctoral graduates do not apply to Jane Street; the candidate pool also contains non-PhDs and entrants trained in other disciplines.

## Original doctorate-award observations

| Country of awarding institution | Period | Field definition | Completed doctorates | Provenance and limits |
| --- | --- | --- | ---: | --- |
| United States | 2025 | Mathematics | 967 | NSF NCSES Survey of Earned Doctorates (SED), Table 3-1; counts U.S.-awarded research doctorates. |
| United States | 2025 | Applied mathematics | 444 | Same primary table. |
| **United States** | **2025** | **Mathematics + applied mathematics** | **1,411** | Derived sum of the two disjoint SED groups. |
| United States | 2025 | Statistics (including the SED subcategory “mathematics and statistics”) | 658 | Same table; **do not add** the subcategory separately. |
| **United States** | **2025** | **Math + applied math + statistics** | **2,069** | Published aggregate SED group. |
| United States | 2024 | Mathematics + applied mathematics | 1,362 | 920 + 442, same updated SED Table 3-1, 2024 column. |
| United States | 2024 | Mathematics + applied mathematics + statistics | 2,003 | Published 2024 aggregate. |
| India | academic year 2023–24 | Mathematics within *Science* stream | 1,016 | Government of India, AISHE 2023–24 Final Report, **Table 37**, page labelled T-37: 567 male, 449 female; based on responding institutions. |
| India | academic year 2023–24 | Mathematics within *Social Science* stream | 3 | AISHE Table 37: 2 male, 1 female, separately reported. |
| **India** | **2023–24** | **Mathematics in both AISHE streams** | **1,019** | 1,016 + 3; retain the odd category placement in the provenance. |
| India | 2023–24 | Statistics within Science | 99 | AISHE Table 37; 49 male, 50 female. |
| **India** | **2023–24** | **Mathematics + statistics** | **1,118** | 1,019 + 99, subject to AISHE institution-response coverage. |

Sources: [NSF NCSES SED 2025, Table 3-1](https://www.ncses.nsf.gov/pubs/nsf26326/assets/data-tables/tables/nsf26326-tab003-001.pdf), page 4 of PDF (PDF page index 3); [Government of India, AISHE 2023–24 report](https://cdnbbsr.s3waas.gov.in/s392049debbe566ca5782a3045cf300a3c/uploads/2026/07/202607131602421770.pdf), table 37 (printed T-37; PDF page index 210). The AISHE report explains that institutions voluntarily upload data and that accuracy rests with institutional officers. These are original published observations, not job-placement statistics.

**Do not sum the 2025 U.S. series and India's 2023–24 series as an alleged worldwide 2025 count.** They have different reporting years, field definitions, and survey coverage. The figures nevertheless establish that the U.S. series omits a substantial *additional* cohort outside the U.S.

Other country-relevant primary sources requiring field-filtered extraction:
- [Eurostat `educ_uoe_grad02`](https://ec.europa.eu/eurostat/databrowser/view/educ_uoe_grad02/default/table?lang=en): completed doctoral graduates (`ISCED11=ED8`), mathematics (`F0541`) and statistics (`F0542`), geography and year specified, disaggregate EU by country or use EU27 aggregate **but not both**. Exact filtered counts **not yet extracted**.
- [German BMFTR doctorate data portal, table 2.5.81](https://www.datenportal.bmftr.bund.de/portal/en/K23.html): the commonly cited **mathematics and natural sciences** aggregate includes many non-mathematics degrees. The reported 2024 total of 28,171 German PhDs is *all subjects*, and 8,053 in mathematics-and-natural-sciences is **not a mathematics-specific doctorate count**. Do not enter either in a mathematics total.
- China, the U.K. and additional awarding countries: math-specific completion counts **unverified**; no invented world total.

**Correction to the October 15 conversation's earlier U.S. numbers:** the 2024 official revised Table 3-1 gives 920 mathematics (not 921), 442 applied, and 641 statistics: **1,362 mathematics/applied; 2,003 including statistics** (not 1,363 and 2,093). For 2025, use 1,411 or 2,069 according to the category.

## Jane Street: positions whose work actually uses mathematics

Verified directly from Jane Street's own active descriptions:
- [Quantitative Researcher, New York, requisition 8573726002](https://www.janestreet.com/join-jane-street/position/8573726002/): time-series analysis, quantitative models, experiments, statistics and ML; *also requires strong programming*, and a PhD is **a plus, not required**. This is a **mathematics-appropriate position**, not proof of one hire, an annual hiring quota, or eligibility for every mathematics PhD.
- [Quantitative Researcher, New York, requisition 6302325002](https://www.janestreet.com/join-jane-street/position/6302325002/): a separately addressable advert with highly similar content; do **not** automatically count two distinct available seats without deduplication.
- [Jane Street quantitative trader listing, Penn Career Services, recruitment started 2025-08-11](https://careerservices.upenn.edu/jobs/jane-street-quantitative-trader/): mathematical models, statistical analysis, market signals and risk; **full-time**, but a posting is not evidence of a filled position.
- [Jane Street quantitative researcher listing, Penn Career Services, recruitment started 2025-08-07](https://careerservices.upenn.edu/jobs/jane-street-quantitative-researcher-2/): financial modeling, experiment design, time series and ML; full-time; may duplicate a requisition on Jane Street's board.

Inclusion protocol for counting **advertised maths-appropriate positions** (a different count from filled seats):

| Classification | Position family | Reason |
| --- | --- | --- |
| Direct | Quantitative researcher; quantitative trader with modeling/analysis | Essential work is mathematical/statistical. |
| Conditional | ML research, quantitative model development, optimization/statistical research | Inspect actual duties and prerequisites; an infrastructure or software-engineering label alone is insufficient. |
| Specialist separate track | Formal methods, compilers, programming languages | Mathematical skill can be central, but these normally require substantial software/systems expertise; do not treat as interchangeable destinations for a generic math PhD. |
| Exclude from permanent math-role total | Internships, fellowships, campus programs, recruiting, HR, sales, cybersecurity, networking, systems administration, pure IT, non-quant operations | Wrong duration or core job content. |

In particular, **do not equate “can hire someone with a math degree” with “a job created to use mathematical education.”**

## Company-wide postings, active snapshots, actual hires and churn

[Revelio Labs, Jane Street Group workforce profile](https://www.reveliolabs.com/companies/jane-street-group/employees) (third-party modeled workforce and scraped postings, **not employer-audited**) reports:
- **468 “new job postings” in calendar 2025**, all functions, about 39 per month. This is *not* 468 filled permanent seats.
- **129 “active job postings” for 2025**, a different stock/snapshot-like quantity and not directly comparable with 468 new posting records.
- Estimated year-end headcounts: **2,724 (2024 Q4)** and **3,120 (2025 Q4)**, an arithmetic net increase of **396**; March 2026 estimate **3,206**.
- The **percentages on the same page are arithmetically inconsistent with its own headcount differences**: 2025 `+396` is labeled `2.0%` though `396/2724 ≈ 14.5%`; 2026 3,206 versus 3,120 is `+86`, not the adjacent claimed `+468`. Accordingly, **do not promote these estimates to verified employer headcounts, growth rates or churn statistics**.

A separate [Quantfinance.work snapshot dated 2026-08-02](https://quantfinance.work/firms/jane-street/) classifies **219 simultaneously open postings** across all functions as, among others, **20 “Quantitative Trading”** and **17 “Machine Learning.”** Its commentary alternatively counts **nine explicit quant-trader postings plus two exotic-options seats**. Classification is inconsistent or includes multiple types of quantitative role: inspect and deduplicate the underlying Jane Street requisitions before treating *any* of these as a count of math-specific vacancies. These are **one-date stock counts**, **not annual flow** and **not hires**. The third-party site also markets CV-matching services, so its counts must remain attributed as its own analysis.

Churn arithmetic:

```text
Starting employees + actual hires − separations = ending employees.
Thus actual hires = net workforce growth + separations.

400 advertisements / 3,000 employees = 13.3% posting/headcount ratio.
This is not a 13.3% turnover rate.
```

If — **counterfactually, not as a finding** — all 468 Revelio-reported 2025 advertisements corresponded to 468 distinct full-time *completed hires*, and its 2,724 → 3,120 headcount estimates were accurate and comparable, then **468 − 396 = 72 replacement hires**, not 468 departures. The premises have not been demonstrated, and the numbers must not be used to infer an observed attrition rate.

**Actual 2025 Jane Street annual hires in mathematical roles: UNKNOWN. Actual 2025 Jane Street departures: UNKNOWN. Annual genuine full-time math-position vacancies filled: UNKNOWN.**

## Retrieval / falsification queue

1. Collect Jane Street's own postings/requisition IDs throughout a full calendar year, recording posting, closure, and reopening dates, location, division, internship/contract/full-time flag, experience requirements, and original description. Deduplicate repeated board syndication, offices and reused titles without collapsing truly separate seats.
2. Establish outcomes for each requisition: withdrawn, ongoing, filled internally, filled externally, or multiple hires; obtain original employer or named independent evidence where possible. Advert disappearance is **not** proof of a hire.
3. Obtain math-specific annual doctoral awards for EU countries (Eurostat field F0541), China, UK, etc. Record year, awarding jurisdiction, source owner, inclusion of overseas citizens, survey response, and overlapping classification; reconcile before claiming a world total.
4. Check Jane Street audited/official year-end worldwide employee counts (if available), starters, leavers, interns, business acquisitions and role-family movements. The comparison is about *actual occupational capacity*, not prestige branding.
5. Compare positions to **both** new graduates and the existing international applicant pool; capture genuine applicants, offers, rejections, first job outcomes, pay net of costs, and career persistence. Do not derive employment probabilities from two unrelated aggregate counts.

Related: [Quant finance: entering, working, and leaving](quant-finance-entry-work-and-exit.md); [Where are the students' jobs?](../../education/where-are-the-students-jobs.md).
