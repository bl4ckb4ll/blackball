# Outcome archaeology — first pass

> **Status note (2026-09-28):** retained as background evidence, but this file does not answer the strict entrant test. Placement/funnel statistics involving experienced candidates, referrals, recruiter sourcing, or existing technical pipelines are not substitutes for a case beginning with no relevant experience and no useful connections.

**Retrieval date:** 2026-09-28

This pass asks whether interview preparation changes employment outcomes, not merely whether interview-preparation resources exist.

The evidence is strongest for two narrower propositions:

1. practice can improve performance once a candidate is already inside a technical-interview process;
2. résumé/source-channel screening removes many applicants before that practice can matter.

The current evidence does **not** establish that learning a question bank by itself carries a worker from unrelated employment into a top-technology job.

## Funnel evidence: the interview is not the first gate

### Gem 2026 recruiting benchmarks

Gem's sixth annual benchmark uses customer data from June 2021 through May 2025: 165 million applicants, 15 million candidates, and 1.2 million hires.

Its executive summary reports:

- 8% of applicants advance past screening;
- 0.5% are ultimately hired, about one hire per 200 applications;
- job boards and marketing channels produce roughly 90% of applications but only about half of hires;
- direct sourcing produces 11% of hires from 2.6% of applications;
- referrals convert at 11 times the rate of inbound applications;
- technical roles average 35–36 interviews per hire in Gem's definition of interview workload.

Source: [Gem, *2026 Recruiting Benchmarks*](https://lp.gem.com/rs/972-IVV-330/images/eBook%20-%202026%20Benchmarks%20Report%20-%20Final.pdf?version=0).

These are not FAANG-only figures and Gem's customer base is not the whole labor market. They nevertheless make one measurement requirement unavoidable: a preparation study that begins with already-interviewed candidates cannot answer the application-to-interview question.

### Ashby 2026 recruiter-productivity data

Ashby's 2026 report says applications per hire tripled from 2021 to 2024 and stayed above 300 throughout 2025. For Q1 2025 through Q1 2026, Engineering averaged 17.9 interviews per hire; technical roles overall averaged 17.6 interviews and 23.3 interviewer-hours per hire.

Source: [Ashby, *Recruiter Productivity — 2026 Talent Trends Report*](https://www.ashbyhq.com/talent-trends-report/reports/2023-recruiter-productivity-trends-report).

Ashby measures organizations using its platform, not a random sample of all employers. The evidence is useful for the scale of the gate, not for a FAANG-specific causal claim.

## Direct evidence that résumé filtering can hide interview-capable engineers

From 2016 through 2022, interviewing.io says it ran about 10,000 real anonymous technical interviews. Candidates first accumulated anonymous mock-interview results; top performers could then interview anonymously with participating employers, who saw no résumé until both sides chose to proceed.

The company reports:

- thousands of placements at FAANG, FAANG-adjacent companies, and top-tier startups;
- 46% of offer recipients lacked either a top school or a top company on their résumé;
- some successful candidates had previously been rejected by the same employer at the résumé stage;
- its average hire had 10 years of experience.

Source: [interviewing.io, “For six years, we ran the largest blind eng hiring experiment of all time”](https://interviewing.io/blog/for-six-years-we-ran-the-largest-blind-eng-hiring-experiment-of-all-time-here-s-what-happened).

This is unusually relevant to Blackball because it changes the first gate rather than merely coaching candidates after selection. It supports the proposition that ordinary résumé screening can reject some people who later pass that employer's technical interview.

Important limits:

- interviewing.io is reporting its own commercial platform results;
- candidates were **preselected as strong mock-interview performers** before employer interviews;
- the average hire had 10 years of experience;
- “no top school or top company” is much broader than “worker entering from unrelated employment”;
- this does not show that question-bank study alone created the underlying technical ability.

So this is evidence against treating résumé pedigree as a necessary condition. It is not yet evidence for the Jimmy John's → study questions → FAANG causal path.

## Evidence about preparation once inside the gate

### interviewing.io: repeated mock interviews

interviewing.io reports from its platform that candidates with at least five practice interviews were almost twice as likely to pass the target technical process as candidates with less practice. The same article emphasizes large interview-to-interview variance.

Source: [interviewing.io, “The technical interview practice gap”](https://interviewing.io/blog/technical-interview-practice-gap).

This is observational vendor evidence. The public article does not expose enough of the model, denominator, or candidate-selection procedure to treat the near-2× figure as a causal estimate.

### interviewing.io: LeetCode correlation study

A 2024 interviewing.io analysis surveyed almost 700 users, obtained their LeetCode and LinkedIn profiles, and cross-referenced those with mock and real interview performance.

It reports:

- total LeetCode questions solved correlated about 0.27 with interviewing.io performance;
- total questions solved correlated about 0.17 with having ever worked at FAANG;
- harder-question practice also correlated with interview performance;
- the authors explicitly warn that these are correlations and give elite-school selection as an example of a possible confounder.

Source: [interviewing.io, “How well do LeetCode ratings predict interview performance?”](https://interviewing.io/blog/how-well-do-leetcode-ratings-predict-interview-performance).

The larger association with interview performance than with FAANG employment is exactly the distinction Blackball needs to preserve.

### Virginia Tech survey of active candidates

Bell, Thomas, Lee, and Brown surveyed 131 candidates actively preparing for software-engineering technical interviews.

Reported findings include:

- LeetCode users practiced around two hours per day on average;
- 62% did not prepare with other people;
- 82% had completed five or fewer mock interviews;
- 35% had never attempted a mock interview;
- more frequent communication rehearsal and practice with other people were significantly associated with **perceived preparedness**;
- more study hours per week and more LeetCode problems per day were **not** associated with greater perceived preparedness.

Source: [Bell et al., “How do Software Engineering Candidates Prepare for Technical Interviews?”](https://arxiv.org/html/2507.02068), FSE Companion 2025.

This is useful preparation-behavior evidence, but the measured outcome is perceived preparedness rather than interview passes or employment.

### University of Florida retrospective intervention

Kapoor and Gardner-McCune studied technical-interview activities embedded in a data-structures-and-algorithms course. The intervention population covered 3,526 students over 12 semesters; 512 completed the retrospective survey, a 15% response rate.

Among the 363 respondents who remembered the activities:

- 6% strongly agreed and 27% agreed that the activities helped them secure employment;
- 49% neither agreed nor disagreed;
- 18% disagreed or strongly disagreed.

In the authors' qualitative coding, 7 of 347 respondents (2%) explicitly reported that the activities helped them clear technical interviews or secure an internship. One respondent reported roughly 200 applications without obtaining an interview.

The authors' own summary says students generally found the exercises useful but regarded the activities alone as insufficient to secure employment.

Source: [Kapoor & Gardner-McCune, “Retrospective Evaluation of Technical Interview Preparation Activities offered in a Data Structures and Algorithms Course”](https://www.cise.ufl.edu/~kapoor/documents/research/papers/Retrospective_Interviews_ITiCSE2025_Kapoor&Gardner-McCune.pdf), ITiCSE 2025.

This is much closer to the question Blackball cares about because it follows candidates beyond perceived confidence. It still does not isolate a causal effect: the study is retrospective, self-reported, has a 15% response rate, and concerns students already enrolled in a competitive public-university computing program.

## Individual trajectories

The structured seed is in [candidate-outcomes.tsv](candidate-outcomes.tsv).

### Unrelated work → Google, but with strong social capital

An autobiographical 2021 account describes a college dropout who had worked fast food, grocery, call-center, and hospital-lab jobs before learning programming. The author reports many application rejections, including rejection from an Amazon referral without human contact. Programmer friends reviewed the résumé and supplied referrals; a Google referral eventually led to recruiter contact and an interview loop. The author then spent six intensive weeks on LeetCode and roughly a dozen practice interviews before receiving a Google offer.

Source: [“How I Went From College Dropout to Google Software Engineer in About a Year”](https://the-skew.com/2021/07/27/how-i-went-from-college-dropout-to-google-software-engineer-in-about-a-year/).

This is a real existence proof for a worker coming from unrelated employment. It is **not** an information-only case: the programmer social network, résumé help, referrals, and ability to stop working and study full-time are material parts of the path.

### Different failure stages in the same search

A 2025 first-person report says Google rejected the candidate before any assessment, while Amazon and Meta advanced the candidate to technical assessments that the candidate failed. The writer also reports that a Meta recruiter recommended six hours a day of LeetCode practice.

Source: [Nick Holmquist, LinkedIn post, 2025-07-13](https://www.linkedin.com/posts/nick-holmquist_ive-been-rejected-by-meta-amazon-and-google-activity-7350028970614030336-5UBd).

This does not establish the effectiveness or ineffectiveness of six-hour preparation—the post does not document that the candidate actually followed that schedule—but it cleanly demonstrates why “rejected by FAANG” must be decomposed by stage.

## Current answer to the Blackball question

The current evidence supports:

- interview practice is a learned, consequential skill;
- authentic mock-interview practice appears more useful than simply accumulating isolated question repetitions;
- LeetCode volume correlates more strongly with interview performance than with having a FAANG job;
- employer source channel and résumé screening matter enormously before technical preparation can be exercised;
- bypassing résumé visibility can reveal experienced engineers who were previously rejected before interview.

The current evidence does **not** support:

- “learn these 150 questions and FAANG becomes broadly accessible”;
- “interview prep does nothing”;
- “pedigree is required”;
- “pedigree does not matter” in ordinary résumé screening;
- a probability estimate for an unrelated-service-worker applicant after completing a particular preparation curriculum.

## Next evidence targets

1. Find candidate cohorts whose denominator begins at **application**, not interview.
2. Separate no-degree/no-brand candidates with ten years of software experience from true occupational entrants.
3. Find complete positive paths with no employee referral and no pre-existing professional software network.
4. Find complete negative paths after substantial preparation, including application count and exact failure stage.
5. Recover bootcamp and community-college cohorts with employer names rather than aggregate “tech job” outcomes.
6. Seek employer-side experiments or quasi-experiments where résumé information, referral status, or interview-practice access changed while later technical evaluation stayed comparable.
7. Preserve time cost. Six weeks full-time, six hours per day, five professional mocks, and hundreds of problems are materially different interventions.
8. Preserve the worker's ability to bear that time cost: paid work, children, savings, unemployment, and access to experienced peers can change whether the nominally public curriculum is practically available.
