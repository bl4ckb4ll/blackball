# Comparative skeptical reading: analysis before verdict

**Status:** research design, not a validated method or finding.  
**Proposed:** 2026-10-16.  
**Open design decision:** the comparison universe has **not** been defined.

## Central problem

Reading one econometrics or statistical paper critically can identify a real error, but can also produce an uncalibrated collection of familiar objections. The stronger question is comparative:

- Which objections survive concrete checks?
- How often do the same objections apply when the identical audit is run on other work?
- What did investigators choose to study, and which *feasible* alternatives did they not choose?
- What work was being done elsewhere at that time, including outside the paper's discipline?
- What does a paper contribute relative to those alternatives?

A publication's prima facie plausibility, an author's rank, a journal's reputation, or an AI-generated review is **not** independent proof of correctness. Conversely, a criticism is not established because an AI can describe a conceivable problem.

The fundamental sequencing rule: **an individual pass produces an objection register and proposed tests, not a global verdict.** A decisive local error may be recorded when demonstrated, but broader rankings and generalizations wait for comparable cases.

## Passes

### 1. Inspect the focal paper, without an overall conclusion

Preserve the exact paper/version, data and code availability, date, stated question, population, estimand, model, claimed result, and what the conclusion would require.

Perform both:

1. **Open-ended skeptical reading:** formulate specific questions the investigator might not have considered. Seek nonstandard diagnostics; a boilerplate checklist is insufficient.
2. **A reusable objection register**, covering where relevant:
   - definition and operationalization of the phenomenon;
   - observed data versus latent quantities and identifiability;
   - sampling, selection, nonresponse and reporting/measurement error;
   - assumptions, priors, likelihood, functional form and dependence;
   - confounding, causal identification, alternative data-generating processes;
   - missingness and sensitivity to plausible departures from assumptions;
   - model checks, negative controls, predictive checks, calibration and replication;
   - multiple testing, specification search and undocumented researcher degrees of freedom;
   - interpretive overreach: descriptive, predictive, causal, and normative claims;
   - alternative questions and opportunity cost of the chosen problem.

For each objection, save **exact location; proposition; why it matters; discriminating check; predicted result if possible; what would refute it; evidentiary status; and source of the objection**. Mark a proposed check as unperformed until actually performed. Seek the author's response when available. Preserve false alarms and successful challenges, not merely hits.

Do **not** assign an overall quality score on this pass.

### 2. Repeat the same audit on other work

Preserve a versioned copy of the protocol; run it on a comparison set, including work selected *without knowing whether it will be criticized*. Avoid choosing only papers that already look bad.

Separate changes to the protocol from changes to the sample. If the method improves, rerun earlier cases or label the resulting comparison non-equivalent. Preserve contemporaneous dates, the paper's aims, resources, data access, and methodological norms.

### 3. Compare across the set

Analyze not just the count of objections but whether objections are **real, consequential, distinctive, testable, and corrected**, relative to the demands and purposes of each work.

Record denominators, selection rules, false positives and untestable cases. Do not average incompatible measures into a single prestigious-looking score. A local mathematical contradiction need not wait for comparison to become a demonstrated error; its *typicality* does.

The findings can be different for separate axes:

- correctness of mathematical/statistical claims;
- strength of empirical identification and sensitivity;
- measurement quality and transparency;
- usefulness and clarity of the substantive question;
- originality relative to contemporaneous work;
- economy of attention: value of the question selected given feasible alternatives.

Correctness is not redeemed by prestige or originality, and an apparently unoriginal question can still be important and carefully answered.

### 4. Look outside the original paper and outside its field

The focal author's citations do **not** define the intellectual universe.

Investigate overlapping problems in statistics, economics, survey methodology, sociology, criminology, epidemiology, public administration, journalism, practitioner work, and other fields *where material to the question*. Identify alternative explanations, incompatible measurements, relevant nonacademic evidence and contemporary research agendas.

**What was *not* studied matters**, but the universe of possible questions is effectively unbounded. Construct an evidence-backed *candidate opportunity set* rather than claim to enumerate all conceivable projects. For each candidate, record:

- who had proposed or investigated it, and when;
- its substantive stakes and evidentiary tractability;
- available data, expertise, cost and feasible techniques **at the time**;
- why pursuing it might have been more or less productive;
- whether its omission represents a real choice, an unrecognized possibility, or an unfair hindsight demand.

Do not infer that choosing one valid question proves ignorance of another.

### 5. Study the author's broader work and surrounding institutions separately

Inspect a documented sample of the author's other papers to see whether problems recur or whether counterexamples undermine an initial impression. Distinguish coauthor responsibility and changes over time.

Journal reviewing practices, the proliferation of publication venues, academic hiring, career incentives, editorial use of AI, and the economics of professorial life are **separate empirical hypotheses**. They might shape research selection, but neither personal lifestyle nor financial incentives demonstrate an error in a paper. Require period-specific evidence; never infer motives from position or compensation alone.

### 6. Only then write bounded conclusions

Conclude separately about (a) this paper's demonstrated strengths and defects, (b) how it compares with the specified sample, (c) the research opportunities it selected or plausibly overlooked, and (d) what remains unknown. Explicitly state how replacing the comparison sample might change the inference.

Record counterevidence and unresolved disputes. Never promote a sample result to a population claim without a defensible sampling frame.

## The comparison-universe problem remains open

These are *candidate frames to test*, not a settled universe:

| Candidate frame | Useful for | Risk |
| --- | --- | --- |
| Same question, method, period and data conditions | Like-for-like rigor comparisons | Can inherit the same blind spots |
| Same substantive question, different method or discipline | Revealing neglected explanations | Metrics and evidentiary burdens may differ |
| Different feasible questions facing contemporary researchers | Originality and economy of attention | Opportunity set is unobservable and easy to invent in hindsight |
| Earlier and later work on the problem | Historical development and correction | Retrospective standards and hindsight |
| Working papers, failed attempts, unpublished or nonacademic investigations when recoverable | Testing journal and academic selection effects | Missing-data and discoverability bias |
| Strong and ordinary work chosen independently of criticism | Establishing a useful baseline | Practical difficulty sampling without prior prestige filters |

The eventual study may need **several comparison universes**, with separate results. Comparability must be justified dimension by dimension; never define the universe solely by journal, R1 status, prestigious department, or shared jargon.

### Precommitments before comparative claims

For each sample, preserve: sampling frame; date/time boundaries; inclusion and exclusion rules; available candidate count and source; random or purposive selection procedure; unavoidable missing records; reason for every exception; frozen rubric version; and a planned sensitivity check using another frame.

If the universe remains undefined, **do exploratory work and label it exploratory**. Do not invent an appearance of population coverage.

## First pilot, without prejudgment

Candidate lead: Qingzhao Yu, Elizabeth A. Stasny and Bin Li, 2008, *“Bayesian models to adjust for response bias in survey data for estimating rape and domestic violence rates from the NCVS”*, *Annals of Applied Statistics*. This is a possible starting case, not proof of a model defect and not yet established to be the exact source previously remembered by the user.

Potential research questions, **not accusations**:

- Which features of a true but unobserved prevalence rate are identified by the observed response patterns, and which depend on modeled assumptions?
- What explains survey-mode, interviewer or household-presence differences other than reporting bias?
- How would sharply different defensible priors or measurement processes alter the result?
- Which other contemporaneous investigations of the same substantive problem chose different estimands or data?

Do the focal-paper audit; **withhold the overall verdict**. Next choose one or more comparison frames without knowing what the preferred outcome will be; apply a stable audit; then test disagreements and missing opportunities.

## Machine-assisted skepticism: test, don't proclaim

An AI may generate many familiar objections while failing to find the unexpected check that matters. Preserve dated, *before-the-answer* predictions, exact proposed diagnostics, reanalysis outcomes, author corrections, contradictions and false accusations. Evaluate verified discoveries against noise and comparisons; do not treat eloquent review prose as demonstrated judgment.

This document is a record of a proposed research procedure, not evidence that the procedure succeeds.
