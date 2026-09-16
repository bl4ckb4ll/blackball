# FAANG

`FAANG` is a working retrieval label for large, high-paying technology employers and adjacent corporations. It is not a claim that the original acronym is the right economic category, and later work may include employers such as Microsoft, Uber, X, Cummins, or others when they answer the same employment-demand questions.

The first case is Amazon.

## Central question

Do not begin with what a school, professor, famous programmer, or interview-prep industry says a programmer ought to know. Begin with the institutions that actually advertise and fill jobs:

- What work does the employer say it needs done?
- How many vacancies of each kind are actually visible?
- Which requirements recur across the corporation, and which are team-specific?
- Which requirements are interview gates, which describe the subsequent work, and which are both?
- Which specialties form substantial employment markets, and which are small niches?
- How much can a worker infer from a job title, and how much varies by firm or team?

The worker-facing goal is to make the employment structure inspectable before someone commits years of training to an assumed market.

## Evidence layers

Keep these separate:

1. **occupation convention** — what is commonly associated with a job title;
2. **corporate category count** — the employer's own current classification of open jobs;
3. **posting-level stated demand** — what a specific vacancy says it wants;
4. **interview gate** — what the employer says it assesses before hire;
5. **work description** — what the employer says the employee will do;
6. **revealed hiring behavior** — what the employer actually accepts in hires;
7. **realized work** — what employees actually spend their time doing.

A posting is direct evidence for layers 3 and 5, not automatically 6 or 7. An interview-prep page is direct evidence for layer 4. A public statement by one manager or programmer is evidence of that person's stated view unless stronger evidence establishes a broader rule.

This distinction follows the existing Blackball treatment of firm-level job-posting heterogeneity in [`economics/deming-kahn-skill-requirements-across-firms-2017.md`](../economics/deming-kahn-skill-requirements-across-firms-2017.md).

## Measurement rules

- Preserve job IDs, URLs, retrieval dates, legal employer, locations, compensation where published, qualifications, team or organization language, and stated responsibilities.
- Treat employer search-result counts as dated snapshots. Do not silently turn a changing web count into a durable denominator.
- Do not infer an org-chart edge merely because two names occur in the same posting.
- Do not infer market share from a deliberately selected example set.
- Separate generic corporate qualification templates from requirements that are specific to the actual team or domain.
- Record negative evidence and unresolved questions rather than filling gaps.
- When prevalence matters, enumerate a defined population of postings, deduplicate by job ID, state the retrieval window, and preserve the classification rule.

## Current case files

- [`amazon/`](amazon/) — first employer case; current postings, demand map, team relationships, and interview-versus-work comparison.
- [`specialties/compilers/`](specialties/compilers/) — first specialty test case.

## Related Blackball work

This directory does not replace the existing livelihood and entrepreneurship analysis. Independent business, owner-operator work, family enterprise, franchise, and related alternatives remain under [`economics/entrepreneurship/`](../economics/entrepreneurship/). The eventual comparison should put those arrangements and corporate employment on a common household-risk-and-return ledger rather than duplicating the entrepreneurship hierarchy here.
