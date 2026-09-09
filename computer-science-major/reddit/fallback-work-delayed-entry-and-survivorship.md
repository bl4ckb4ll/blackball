# Fallback work, delayed entry, and Reddit survivorship

## Provenance

- Retrieval pass: `2026-09-09T12:19:41-04:00` (`America/Detroit`).
- Source surface: Reddit web pages and comment threads discovered through ChatGPT web search.
- Source URLs are preserved individually below.
- Source dates are recorded at the calendar-date precision exposed in search results where available.
- Exact Reddit `created_utc` values were not available from this retrieval route and are not invented.
- Comment-level material is especially fragile: comments can be edited or deleted later.

This file asks what happens between `graduated` and `relevant professional employment`. It is deliberately not limited to unemployment: retail, food service, manual labor, low-skill work, unrelated office work, IT support, graduate school, and delayed entry all matter economically.

## Sources and cases

### 2025-03-29 — mixed outcomes after graduating CS

Source: [How are you doing since graduating CS?](https://www.reddit.com/r/csMajors/comments/1jmb7ea/how_are_you_doing_since_graduating_cs/)

The thread asks specifically about graduates with little experience and no internships. Comment-level cases include:

- a graduate about six months out reporting no interview for software work, living with parents and working a low-skill part-time job after an IT-support contract ended;
- a commenter reporting a year internship but no success and doing manual labor while continuing to apply;
- a 2023 graduate from a no-name public university with no internships who reports working as a data analyst for more than a year;
- a commenter pursuing a master's focused on AI because they report there are no jobs;
- a commenter with two years of prior SWE experience who reports needing eight months plus entry into a highly ranked ML graduate program to obtain an internship after relocating.

Blackball use: a compact mixed-outcome source demonstrating that `no internship`, `has internship`, `prior SWE experience`, `graduate school`, and `fallback work` can all coexist with very different eventual states. It also contains a positive no-internship counterexample (data analyst), which prevents a one-way narrative.

Limit: voluntary comments, mixed countries and career stages, and no denominator.

### 2024-08-20 — graduates who finished without a SWE job

Source: [those of you that graduated with a Computer Science degree jobless, what are you doing now?](https://www.reddit.com/r/csMajors/comments/1ewht3e/its_been_asked_before_but_im_still_curious_those/)

Comment-level cases include:

- a commenter reporting work at McDonald's after graduating and later identifying the school only as a T10 school;
- a June 2024 graduate continuing to apply while doing a school micro-internship;
- a commenter still applying while starting graduate school;
- a commenter working in a grocery store and unsuccessfully applying even for office-assistant jobs to leave retail;
- a retail worker describing coworkers who expected the degree to make the graduate "set" after graduation, while the graduate remained in retail;
- a commenter working hotel night audit while building a portfolio;
- a commenter in customer service for third-party logistics trying to move internally into a technical role;
- a commenter doing part-time boba-shop work plus CS tutoring while hoping for graduate school;
- a separate commenter reporting that after four years in a rural location they obtained software-testing work, later attributing the opportunity to the pandemic hiring boom;
- a May 2022 BS graduate who reports being hired into government in February 2023 and now working as a full-stack SWE.

Blackball use: this thread is unusually useful because it exposes many interim states that ordinary first-destination tables flatten into either `employed` or `not employed`. It also contains delayed-success cases.

Limit: comment dates and graduation dates vary; the T10 claim is self-reported and the specific institution is not established; thread participants are self-selected.

### 2025-10-14 — degree completed years earlier, never entered tech

Source: [Anyone here that got a CS Degree years ago but never got in the industry? What are you doing now?](https://www.reddit.com/r/cscareerquestions/comments/1o66pip/anyone_here_that_got_a_cs_degree_years_ago_but/)

The original poster reports completing a CS degree, never obtaining a tech job, taking other work to survive, and still being on a minimum-wage track years later. Another commenter reports working in trades/manual labor and planning trade certification, explicitly contrasting that with having studied CS for four years and taken on debt.

Blackball use: existence proof that occupational non-entry can persist for years rather than being only a short post-graduation delay.

Limit: the original post does not establish graduation year, school, internship history, or application history. It cannot establish how common durable non-entry is.

### 2026-04-14 — two years out and outside new-grad filters

Source: [2+ years after graduation without job in any tech field, is it still possible to land a job?](https://www.reddit.com/r/cscareers/comments/1skwqyg/2_years_after_graduation_without_job_in_any_tech/)

U.S.-market poster reports a BS in CS, no tech employment for more than two years, projects including a Game Boy emulator, inability to obtain an interview, and concern that being two years removed leaves them outside many new-grad/entry-role descriptions. Replies disagree about whether the poster still counts as entry level and suggest adjacent roles, training/placement firms, projects, or smaller employers.

Blackball use: direct 2026 evidence for the **recency cliff** hypothesis and for distinguishing occupational entry from nominal qualification level.

Limit: the poster states that they did not apply themselves consistently during part of the gap, so the case should not be represented as an uninterrupted intensive two-year job search.

### 2026-08-13 — jobs outside SWE

Source: [Cs Majors who landed jobs outside of SWE, what’s your story?](https://www.reddit.com/r/csMajors/comments/1vndw8u/cs_majors_who_landed_jobs_outside_of_swe_whats/)

Comments report paths including data engineering, cloud operations, tech support, IT, tech sales, cybersecurity via a return offer, and at least one commenter reporting unpaid work plus grocery-store work.

Blackball use: vocabulary for adjacent and fallback outcomes. These should not all be merged into one `employed` category: data engineering, IT support, tech sales, grocery work, and unpaid work represent materially different uses of the CS credential and different compensation/career trajectories.

Limit: very small voluntary thread; several comments are jokes; exact degree/completion status is not established for every commenter.

## Methodological consequence: Reddit survivorship is two-sided

A common warning is that dissatisfied graduates are more motivated to make doom posts. That is real, but it is not the only selection mechanism.

A 2025 discussion asking what unsuccessful CS graduates do contains the explicit observation that many people who never break into the industry may leave CS-career communities entirely. Source: [What do CS graduates do if they claim the "job market is bad right now"? Where do they work?](https://www.reddit.com/r/cscareerquestions/comments/1ka3p2m/).

That observation is itself only a Reddit participant's claim, not measured attrition. But it gives Blackball an important rule:

> Do not assume Reddit selection bias has a known direction.

The corpus can over-sample acute job-search distress because distressed people post, while under-sampling durable occupational exit because people who give up stop reading and posting in CS-career forums. Successful high-compensation offer threads add a third selection mechanism in the opposite direction.

Therefore Reddit should be used to enumerate states and mechanisms, not to estimate their prevalence.

## Outcome vocabulary for Blackball

Do not use a binary employed/unemployed variable when the source supports more detail. Preserve at least:

- employed in target software role;
- employed in other CS/technical role;
- employed in IT/support/operations;
- employed in nontechnical professional role;
- employed in retail/food service/manual labor/other fallback work;
- unpaid technical work;
- part-time work while seeking;
- graduate school while seeking or after failed search;
- unemployed and seeking;
- not seeking;
- delayed entry followed by target employment;
- durable non-entry/occupational exit;
- unknown.

Also preserve waiting time and whether fallback work was held concurrently with continued applications.

## Next evidence targets

1. University outcome reports that disclose occupational category rather than only `employed`.
2. Underemployment measures with an inspectable definition of whether a job normally requires a bachelor's degree and whether it uses CS-related skills.
3. Longitudinal sources that follow graduates beyond six months so delayed entry and durable non-entry are visible.
4. Alumni surveys that retain nonrespondents in the denominator or clearly report response rates.
5. Administrative wage/employer records, where legally accessible, that do not depend on graduates remaining engaged with a career office or subreddit.
