# Technical interview preparation: access and hiring-conversion test

**Initial retrieval date:** 2026-09-28

This directory records the software-interview-preparation ecosystem and tests a narrower question than “can this material teach coding interview problems?”

> If a person who does not already carry elite-school, elite-employer, referral, or closely related professional signals learns this material, does it materially improve the probability that an employer will interview and hire that person?

The preparation material should remain available and inspectable regardless of the answer. A candidate in a small town or an unrelated service job should be able to see the same public preparation information that a candidate embedded in a major technology hub can see.

This is not a recommendation list. It is an evidence corpus and outcome test.

## Keep the hiring stages separate

A resource can be effective at one stage and irrelevant at another.

1. **application access** — can the candidate find and submit for an appropriate requisition?
2. **resume/recruiter screen** — does the employer advance the candidate to a technical assessment or interview?
3. **online assessment / technical screen** — does preparation improve performance on the first technical gate?
4. **full interview loop** — does preparation improve performance across coding, design, behavioral, and role-specific rounds?
5. **offer** — does the candidate actually receive an offer?
6. **placement and compensation** — what role, level, location, and pay result?
7. **realized work and retention** — what work follows after hire, and does the worker remain employed?

Do not report success at stage 3 as proof of stage 2 or stage 5.

This extends the evidence layers in [../README.md](../README.md) and should stay linked to employer-specific work such as [Amazon interview versus advertised work](../amazon/interview-versus-work/README.md).

## The ordinary-background test

Use a deliberately demanding baseline when testing broad claims that interview preparation “gets people into FAANG.”

A useful benchmark is a candidate whose recent employment is unrelated service, warehouse, retail, food-service, or other non-software work; who lacks a current top-technology employer on the résumé; who lacks an employee referral; and who did not come through a highly selective feeder pipeline.

The memorable version is:

> If I work at Jimmy John's, learn these questions and methods, and then apply, will the company interview and hire me?

That question must not be silently replaced by the much easier question:

> If a candidate who already has a strong technical résumé reaches the interview, can practice improve interview performance?

Both questions matter. They are different causal claims.

## Selection-confounding rule

A success story is not evidence for broad accessibility unless the starting position is recorded.

For every candidate story or provider testimonial, preserve at least:

- education and institution type where disclosed;
- prior technical work;
- prior prestigious or directly relevant employers;
- internships;
- referrals or recruiter outreach;
- location;
- immigration/work-authorization constraints where voluntarily disclosed;
- number of applications;
- number of screens/interviews;
- preparation used;
- preparation time and cost;
- interview outcome;
- offer outcome;
- level and compensation when disclosed;
- failures and rejected applications, not only wins.

A report from someone who already had a PhD, a selective-school background, or another major technology employer may provide evidence about **conditional interview conversion**. It does not by itself establish access for an ordinary-background applicant.

Extreme compensation anecdotes require the same treatment. They can document that a compensation level existed for a particular person and role; they do not establish that an interview-prep curriculum makes that outcome generally reachable.

## Resource index

The machine-readable resource index lives in [resources.tsv](resources.tsv). Candidate-level trajectories are tracked in [candidate-outcomes.tsv](candidate-outcomes.tsv), research and funnel evidence in [studies.tsv](studies.tsv), and the first outcome synthesis in [outcomes/2026-09-28-first-pass.md](outcomes/2026-09-28-first-pass.md).

Index each resource by:

- owner/provider;
- source type: employer, free community guide, commercial question bank, book, paid course, mock-interview service, forum/report corpus;
- current URL and retrieval date;
- cost/access conditions;
- target employer and role, if any;
- target hiring stage;
- stated prerequisites;
- topics covered;
- time commitment claimed or recommended;
- claims about effectiveness;
- evidence offered for those claims;
- whether the resource exposes actual questions, question patterns, evaluation rubrics, mock interviews, résumé advice, referral/network advice, or negotiation advice.

Preserve public material even when outcome evidence is weak. Equal access to the information and proof that the information produces employment are separate questions.

## Initial verified examples

### Employer-owned preparation

Amazon currently publishes software-development interview topics covering coding, data structures, algorithms, object-oriented design, databases, distributed computing, operating systems, internet topics, and general ML/AI. It says interviewers are evaluating application of knowledge rather than memorization and provides coding/system-design examples and assessment preparation.

Amazon also publishes an SDE II online-assessment guide stating that SDE II applicants receive the assessment after an application or recruiter contact and that the assessment contains coding, system-design, and work-style components.

These sources establish what Amazon says to prepare. They do not establish how likely an applicant is to receive the assessment or how preparation changes the offer probability.

### General preparation platforms

LeetCode currently publishes a “LeetCode 75” plan and a “Top Interview 150” plan. Their public descriptions frame the former as 75 interview problems for roughly one to three months of preparation and the latter as 150 problems for three or more months.

Tech Interview Handbook publishes free coding-interview guidance, rubrics, and study plans. Its current study-plan material recommends roughly three months at about eleven hours a week for a fuller preparation program. The site also contains first-person success claims from its author. Treat those as candidate-level testimony until a denominator and starting position are established.

AlgoExpert currently markets a paid coding-interview product around a curated question set, data-structure instruction, and video explanations. Its marketing claims belong in the corpus as claims by the provider, not as independent outcome evidence.

## Evidence already showing why the stages matter

A current Google early-career software-engineer posting accepts a bachelor's degree or equivalent practical experience, but it also asks for experience with data structures or algorithms and software development. Other current Google postings add role-specific experience.

That means coding-interview preparation can overlap with advertised requirements without proving that preparation alone substitutes for the rest of the applicant's record.

A publicly indexed Meta-offer report on LeetCode provides a useful confounding example: the candidate reported extensive LeetCode preparation and a Meta offer, but also reported a PhD from a good school and an existing job at another major technology company. The report can inform preparation tactics for an already-credentialed candidate; it cannot answer the ordinary-background test.

## Outcome evidence grades

Use these grades for claims about whether a preparation resource works:

- **A — causal or near-causal evidence:** randomized, credibly matched, regression-discontinuity, or similarly strong design with defined treatment and hiring outcomes.
- **B — denominator-bearing cohort evidence:** a defined cohort with starting backgrounds, preparation exposure, applications, screens, interviews, offers, and losses.
- **C — complete individual trajectory:** a documented applicant history including starting position, preparation, applications, failures, and final outcomes.
- **D — testimonial or selected success story:** a success narrative without a usable denominator or counterfactual.
- **E — content/availability evidence only:** proof that a resource exists and teaches or claims something, with no employment outcome evidence.

Do not promote D or E into “this works.”

## Measurements that matter

For each resource or preparation bundle, seek:

- application → recruiter/screen invitation rate;
- screen → technical assessment rate;
- technical assessment → full-loop rate;
- full-loop → offer rate;
- applications per offer;
- preparation hours;
- cash cost;
- opportunity cost;
- role/level/pay obtained;
- background strata;
- whether questions were previously seen verbatim or solved by transferable method;
- later job performance or retention where evidence exists.

Report conditional rates with the conditioning population named.

“70% of interviewed candidates passed after course X” says nothing about applicants whom the employer never interviewed.

## Research queue

1. Expand the index across employer-owned guides, LeetCode/company-tagged material, Blind 75/Grind 75, NeetCode, *Cracking the Coding Interview*, Grokking-style courses, HackerRank/CodeSignal kits, Interviewing.io, Pramp, AlgoExpert, coaching services, Glassdoor, Blind, and other question-report corpora.
2. Locate current official Google and Meta interview-preparation material and distinguish employer-owned guidance from community reconstructions.
3. Capture costs, paywalls, free alternatives, archiveability, and prerequisites so access itself can be compared.
4. Extract every explicit effectiveness claim and classify the evidence supporting it.
5. Build a candidate-outcome corpus that records starting position before preparation.
6. Search specifically for negative cases: people who completed substantial preparation but could not obtain interviews, repeatedly failed screens, or never received offers.
7. Search for ordinary-background positive cases and preserve the whole path rather than only the final offer.
8. Compare employer-specific question practice with generalized data-structure/algorithm training and mock-interview practice.
9. Keep “memorized a known question” separate from “learned a transferable method.”
10. Compare the preparation gate with the actual advertised and realized work for the same employer and role.

## Current boundary

This first pass proves that a substantial preparation ecosystem exists and establishes a method for indexing it. It does **not** yet establish that interview preparation opens FAANG hiring to an applicant from an unrelated job, nor that it fails to do so.

That is the question the next evidence pass must answer.
