# Reddit discovery: recent-graduate employability — pass 2

## Provenance

- Retrieval pass: `2026-09-09T12:17:20-04:00` (`America/Detroit`).
- Source surface: Reddit web pages discovered through ChatGPT web search.
- Source URLs: preserved individually below.
- Source timestamps: `Reddit post date` records the calendar date exposed by the source during this pass.
- Timestamp precision: date only for individual Reddit posts. Exact Reddit `created_utc` values were not captured and must not be invented.
- Snapshot limitation: these are source records and analytical notes, not immutable Reddit snapshots. Posts and comments may later change or disappear.

This pass extends, rather than replaces, `recent-graduate-employability.md`. It deliberately includes successful outcomes and return-offer cases so that the folder does not become a collection of failure stories selected only because they are dramatic.

## Additional outcome cases

| Reddit post date | Thread | What the source reports | Blackball use | Limit |
|---|---|---|---|---|
| 2026-08-24 | [Been a year since I've graduated and no job offers](https://www.reddit.com/r/cscareerquestions/comments/1vwpej3/been_a_year_since_ive_graduated_and_no_job_offers/) | Canada-based graduate reports more than 500 applications, four interviews, no internship experience, continued portfolio work, and no offer more than a year after university. | Recent evidence that the long-search/no-internship pattern persisted into late summer 2026. | Canadian market; self-report; application quality and degree/school details are not independently verified. |
| 2026-09-04 | [Any employees 26 new grads here?](https://www.reddit.com/r/csMajors/comments/1w7c8c2/any_employees_26_new_grads_here/) | Thread asking about employed 2026 graduates. One commenter reports obtaining a job after about 650 applications and an application-to-interview ratio around 120:1; others report continuing difficulty even with SWE internships. | Useful mixed-outcome thread close to the retrieval date; shows that prior internships do not mechanically guarantee a quick open-market offer. | Comment sample is self-selected; commenters differ by country, school, work authorization, and target role. |
| 2025-12-09 | [About to graduate with a CS degree and still no internships/jobs. Is it over?](https://www.reddit.com/r/cscareerquestions/comments/1pihb2b/about_to_graduate_with_a_cs_degree_and_still_no/) | Poster reports three years of networking, recruiter outreach, referrals, resume reviews, multiple tailored resumes, projects, and hundreds of applications, while graduating without an internship or job. | Counterexample to the claim that following common career-center advice is sufficient to obtain pre-graduation experience or employment. | We cannot verify the quality/intensity of each activity or infer population frequency. |
| 2025-08-22 | [got an offer! new grad, no experience, no internships](https://www.reddit.com/r/csMajors/comments/1mwyjpg/got_an_offer_new_grad_no_experience_no_internships/) | August 2024 graduate reports no internships, experience, or network at graduation, then several months of self-directed coding/projects before eventually obtaining an offer. | Important success counterexample for graduates without internships; suggests delayed entry can occur after substantial independent post-degree skill building. | Single success case; cannot identify which project/work change caused the offer. |
| 2026-07-03 | [2025 CS grad, no internship, self-taught for a year — realistic FAANG chances?](https://www.reddit.com/r/csMajors/comments/1umo69u/2025_cs_grad_no_internship_selftaught_for_a_year/) | 2025 CS graduate reports no full-time offer, essentially no substantive internship, a year of self-study, hundreds of algorithm problems, and a substantial open-source application. | Shows a graduate continuing to accumulate demonstrable technical work a year after the credential without yet converting it into full-time employment. | India-based BTech graduate; FAANG/product-company targeting is narrower than general employability. |
| 2025-12-18 | [Graduating with no fulltime offer](https://www.reddit.com/r/csMajors/comments/1ppdams/graduating_with_no_fulltime_offer/) | Poster reports graduating without an offer while peers have high-paying offers; a commenter reports taking more than a year after graduating in 2024 to obtain an acceptable offer. | Adds another example of the interval between graduation and acceptable occupational entry; also flags social comparison as a strong selection mechanism in r/csMajors. | Sparse credentials in the original post; commenter outcome is not a controlled comparison. |
| 2025-08-30 | [New Grad Offer 165K TC](https://www.reddit.com/r/csMajors/comments/1n3ty1n/) | May 2026 graduate reports signing a roughly $165k first-year return offer from a summer internship without going through a separate new-grad interview process. | Strong evidence for treating internship conversion as a distinct employment pathway rather than pooling it with open-market post-graduation search. | High-compensation, HCOL case; does not estimate conversion rates. |
| 2025-08-30 | [2026 New Grad 115k Remote](https://www.reddit.com/r/csMajors/comments/1n4d5kt/) | 2026 graduate reports a remote return offer after two prior internships; says the full-time role required no new-grad interview because it converted from the startup internship. | Second concrete return-offer case; reinforces the need to classify first jobs by acquisition channel. | Success post with two internships; not representative of all CS students. |
| 2024-09-07 | [New Grad 2025 Offers](https://www.reddit.com/r/csMajors/comments/1fbis35/) | Outcome-sharing thread contains numerous reported full-time offers explicitly marked as intern rollover/conversion, including large tech, banks, F500 firms, cybersecurity, and a co-op-to-full-time case. | Useful source lead for the hypothesis that visible early offers are disproportionately internship conversions. | Voluntary brag/outcome thread strongly over-selects successful candidates; comments cannot provide a denominator or conversion probability. |
| 2024-07-06 | [To the 2024 Grads...](https://www.reddit.com/r/csMajors/comments/1dwctsl/) | Mixed-outcome thread includes posters starting SWE jobs, still in retail, still unemployed, waiting on interviews, and one user reporting a year-long search before an offer. | Valuable because one thread contains both failure and success states instead of only one narrative. | Highly heterogeneous countries, constraints, credentials, and follow-up times. |

## What this second pass changes

### 1. First job needs an acquisition-channel field

A first-destination record that says only `software engineer` loses a major distinction:

- converted from internship/co-op;
- recruited through campus/new-grad channel without prior employment at the firm;
- open-market application after graduation;
- referral/network hire;
- contract/temp/consulting pathway;
- self-employment/freelance;
- unknown.

The return-offer cases above did not face the same search process as a graduate sending hundreds of cold applications. Aggregating them can make the degree look like the operative cause when the decisive event may have been internship selection one year earlier.

### 2. Waiting time belongs beside employment status

`Employed` at twelve months and `employed before graduation` are not equivalent outcomes. For each graduate/outcome source, preserve at least:

- graduation date;
- first relevant paid-work date;
- waiting time;
- interim work;
- unpaid work or additional training undertaken during the gap;
- applications/interviews if available, but never as population statistics.

### 3. Internship possession is not the same as internship conversion

The September 2026 discussion includes candidates reporting internships but still struggling in open-market new-grad recruiting. The useful variable is therefore not merely `has internship`; record:

- internship count;
- employer type;
- whether the final internship offered a return path;
- whether the student accepted/declined/was denied that path;
- whether the eventual full-time employer was an internship employer.

### 4. Negative Reddit selection bias does not erase positive selection bias

Doom posts over-select bad outcomes, but offer threads over-select unusually good ones. Both are useful for mechanisms and counterexamples. Neither provides a frequency without a denominator.

## Follow-up targets produced by this pass

1. Find schools that publish internship/co-op participation and first destinations in the same cohort.
2. Find employer or school data on internship-to-full-time conversion rates.
3. Separate graduates with a return offer before senior-year recruiting from graduates entering the open new-grad market.
4. Track waiting-time distributions where a university reports employment at graduation, three months, six months, and twelve months.
5. For 2026 graduates, revisit the September 2026 threads later only if a stable Reddit API/CLI snapshot can preserve exact timestamps and subsequent outcome updates.
