# Internship and return-offer pipeline

## Provenance

- Retrieval pass: `2026-09-09T12:17:20-04:00` (`America/Detroit`).
- Source surface: Reddit web pages discovered through ChatGPT web search.
- Individual source dates are recorded at the date precision exposed during retrieval.
- Exact Reddit `created_utc` values were not captured in this pass.

This file isolates a mechanism that is easy to hide inside broad placement statistics: some students receive full-time offers by converting internships, while others must compete in the open new-graduate market.

## Sources

| Reddit post date | Source | Observation | Use | Limit |
|---|---|---|---|---|
| 2025-08-30 | [New Grad Offer 165K TC](https://www.reddit.com/r/csMajors/comments/1n3ty1n/) | Poster says the full-time job was a return offer from the summer internship and therefore required no separate new-grad interview process. | Direct example of internship conversion bypassing open-market new-grad recruiting. | One high-compensation success case. |
| 2025-08-30 | [2026 New Grad 115k Remote](https://www.reddit.com/r/csMajors/comments/1n4d5kt/) | Poster with two prior internships reports a return offer from a startup internship and only two new-grad applications. | Second direct conversion example, with low open-market search exposure. | Self-report; no denominator. |
| 2024-09-07 | [New Grad 2025 Offers](https://www.reddit.com/r/csMajors/comments/1fbis35/) | Many commenters identify offers as intern rollover/conversion, including tech, finance, F500, cybersecurity, and co-op pathways. | Discovery evidence that early visible new-grad offers often come from internship conversion. | Voluntary success thread; severe positive selection bias. |
| 2024-10-12 | [Got a return offer for March '25!](https://www.reddit.com/r/csMajors/comments/1g1swy7/) | International MS student reports summer internship, extension, then return offer and describes the job hunt as ending before a broad external search began. | Clean conceptual example of a full-time outcome produced by prior employer attachment. | Master's student with prior non-U.S. experience, not a bachelor's-CS control. |
| 2025-10-13 | [Hot take: if you're in your junior year, take the internship that maximizes your chance of getting a return offer](https://www.reddit.com/r/csMajors/comments/1o597gt/) | Advice thread explicitly frames internship conversion as a way to avoid a much harder new-grad market. | Evidence of participant perception and strategy; useful for deciding what institutional data to seek. | Advice/perception, not measured conversion probability. |
| 2025-01-20 | [2025 New Grad Recruiting Thread](https://www.reddit.com/r/csMajors/comments/1i5j57x/) | Thread solicits applications, interviews, offers, school and prior internships; one early successful respondent reports accepting a return offer after internships at highly selective firms. | Candidate source for extracting outcome-by-internship histories rather than reading isolated posts. | Self-selected and heavily skewed toward people willing to publish recruiting results. |
| 2025-06-16 | [Graduating Spring 26 and no internship, what should I do](https://www.reddit.com/r/csMajors/comments/1ld85fx/) | Student worries that graduating without an internship will prevent applying to internships requiring another academic term after the internship; replies discuss extending graduation. | Evidence of an incentive to alter graduation timing to preserve internship eligibility. | Advice thread, not evidence that extension improves employment. |
| 2026-07-06 | [Sem withdrawal question](https://www.reddit.com/r/berkeley/comments/1upajy8/sem_withdrawal_question/) | Berkeley EECS senior who can graduate early considers changing enrollment timing while recruiting and notes that no longer being a student could disqualify applications restricted to current students. | Independent example of student status itself functioning as access to recruiting channels. | One Berkeley student; not an observed hiring outcome. |

## Candidate mechanism

The degree may be only one node in a staged selection process:

`admission to CS program -> internship access -> internship selection -> return-offer decision -> full-time employment`

A placement statistic at the final node can obscure the fact that selection occurred earlier. If students without internships face a much harder market, then a school claiming strong graduate employment should expose how many of the employed graduates had already been selected into an employer pipeline before graduation.

## Variables to demand from institutional data

For each graduating cohort, ideally record:

- number of graduates;
- number with at least one internship/co-op;
- number with a paid internship/co-op;
- number whose final full-time employer was a prior internship/co-op employer;
- number with a signed full-time offer before graduation;
- number who entered an open-market search after graduation;
- employment status at graduation, 3 months, 6 months, and 12 months;
- response/nonresponse counts for every statistic.

Without those fields, `X% employed` can pool fundamentally different pathways.
