# ChatGPT incident: recommending BME programs before checking the labor market

## Scope

This file reconstructs a sequence that occurred across several ChatGPT conversations in December 2025 and later follow-up sessions.

The exact transcripts are not all preserved here, so this is **not presented as a verbatim transcript**. It records the parts that were recovered from the conversation history and distinguishes those from later independently sourced evidence.

The incident matters because it demonstrates a general recommendation failure: a model can answer the surface form of a college question—rank programs, compare admissions, discuss SAT scores—without first checking whether the proposed degree is a strong route to the occupation the student thinks they are buying access to.

---

## 1. Initial question: conventional prospective-student advising

The initial setup was approximately:

- prospective student in Michigan;
- high-school junior;
- approximately 3.7 GPA;
- approximately 780 SAT Math;
- interested in biomedical engineering.

ChatGPT responded in the conventional admissions-advising mode: discuss competitiveness and recommend highly regarded BME programs. Schools discussed included institutions such as:

- Johns Hopkins;
- MIT;
- Stanford;
- Georgia Tech;
- Duke;
- University of Michigan;
- UC San Diego;
- Wisconsin;
- Clemson;
- Washington University in St. Louis;
- Rutgers;
- Penn State;
- Ohio State.

The basic error was not that those universities lack respected programs. The error was **answer order**. The response treated “which BME program?” as the decision to optimize before investigating “should a student seeking an industry engineering job buy an undergraduate BME degree rather than ME, EE, ChE, MSE, or another engineering degree?”

---

## 2. Skeptical follow-up: researchers inside a BME university describe the job problem

A later research pass found:

Cassandra Sue Ellen Jamison et al., “BME Career Exploration: Examining Students’ Connection with the Field,” *Biomedical Engineering Education* 2(1), 17–29.

https://pmc.ncbi.nlm.nih.gov/articles/PMC8553099/

The first two authors were affiliated with the University of Michigan Department of Biomedical Engineering. The paper opens by acknowledging the common perception that BME undergraduates struggle to obtain industry jobs and says some statistics support the concern.

That discovery changed the character of the original advising problem. One of the universities that could appear on a cheerful “best BME programs” list also employed researchers explicitly investigating the undergraduate BME-to-industry mismatch.

The correct conclusion is not “Michigan knows nobody gets a job.” The paper does not establish that. The important fact is that **relevant adverse evidence was readily available and materially important to the prospective student, yet it was not surfaced in the first answer.**

---

## 3. Job-board follow-up: search-result counts were not entry-level job counts

A separate December 2025 research session examined Indeed.

One query reportedly returned **387** U.S. results for “Biomedical Mechanical Engineer.” In the visible sample, results included:

- Sciton in Palo Alto, with prior-experience expectations despite entry-level framing;
- Precision Neuroscience in Manhattan, a senior role requiring substantial experience.

The prior analysis found no degree-only/no-experience BME job in the visible sample.

This historical result is not reproducible as a permanent statistic because job boards change continuously. It should therefore be treated as an observation from that session rather than a national employment count.

The durable lesson survived a current 2026 re-check: job-board searches for BME routinely mix together internships, clinical/research jobs, mechanical or systems engineering, jobs that merely accept BME among several degrees, and supposedly entry-level jobs requesting prior experience.

A search page saying “400” or “700” results therefore does **not** mean there are 400 or 700 current bachelor’s-only biomedical-engineering jobs for new graduates.

See [`research-evidence.md`](research-evidence.md).

---

## 4. Geographic follow-up: the occupation is concentrated in hubs

Another thread focused on how narrowly the relevant jobs appeared to be distributed geographically.

The exact earlier formulation about jobs being limited to a few hospitals cannot presently be recovered and should not be repeated as fact.

BLS data independently supports the broader point: biomedical-engineer employment is heavily concentrated in metros such as Boston, Minneapolis-St. Paul, Los Angeles, New York, San Francisco, Salt Lake City, Seattle, San Diego, Washington, and Philadelphia.

https://www.bls.gov/oes/2023/may/oes172031.htm

Several of those are high-cost housing markets. Geographic concentration therefore changes the economic calculation for a student who is not willing or able to relocate.

---

## 5. Reddit follow-up: graduates describe the same problem in ordinary language

Subsequent searches found repeated first-person reports from people identifying themselves as BME students or graduates. Common themes included:

- wishing they had majored in mechanical or electrical engineering;
- difficulty translating a broad BME curriculum into a job title;
- employers preferring deeper traditional engineering backgrounds;
- difficulty getting internships;
- “entry-level” roles demanding experience;
- technician work as a fallback or stepping stone;
- concentration around medtech/biotech hubs;
- advice to use ME/EE/ChE as the bachelor’s degree and specialize in BME through electives, research, an MS, or later work.

Examples and counterexamples are collected in [`reddit-testimony.md`](reddit-testimony.md).

The strongest point is not that Reddit is statistically representative. It is that the anecdotal descriptions closely resemble mechanisms independently discussed in peer-reviewed BME-education research.

---

## 6. Later quantitative result: Ohio State comparison

The 2026 Lewis et al. paper supplies the kind of comparison the initial recommendation should have sought before ranking schools.

https://link.springer.com/article/10.1007/s44217-026-01339-7

Among 3,292 graduates in four engineering majors from historical Ohio State cohorts:

- BME: **33% industry placement**;
- ME: **68%**;
- ChE: **69%**;
- MSE: **59%**.

Pre-graduation engineering work experience was also much lower for BME: **34%**, versus **58–69%** in the comparison majors.

This does not prove that every BME program has the same outcomes. It does prove that the direct-to-industry question is empirically answerable and important enough that it should precede prestige rankings.

---

## 7. Cost was missing from the original answer too

A recommendation can be technically true and still economically irresponsible if the price is omitted.

At published 2026–27 rates, static four-year tuition/academic-charge estimates in the programs examined here include approximately:

- Johns Hopkins Whiting tuition: **$274,680**;
- Duke tuition: **$294,960**;
- WashU tuition: **$285,240**;
- Michigan Engineering nonresident tuition: **$284,436**;
- Ohio State Engineering nonresident academic charges: **$195,004**;
- Georgia Tech nonresident tuition + mandatory fees: **$144,480**.

These are sticker estimates before aid, not what every student pays. See [`program-costs.md`](program-costs.md) for the methodology and official sources.

The juxtaposition is legitimate:

> universities can charge very large sticker prices for BME education while peer-reviewed research documents meaningful uncertainty or disadvantage in the direct-to-industry transition.

The stronger accusation—that universities **know** the degree will not lead to jobs and deliberately make it sound otherwise—is **not established by the sources collected here** and should not be written as fact.

---

## 8. What failed in the original ChatGPT response

### Failure 1: accepting the major as fixed

The response optimized within “BME programs” instead of asking what occupational objective the major was supposed to serve.

### Failure 2: prestige before denominator

Ranking and admissions information came before:

- occupation size;
- annual openings;
- direct-industry placement;
- competing majors eligible for the same jobs;
- internship availability;
- location concentration;
- cost.

### Failure 3: treating occupational growth as a sufficient signal

An occupation can grow quickly in percentage terms while remaining small in absolute numbers. BLS currently reports about 23,800 jobs and roughly 1,200 openings per year. Those quantities matter more to an entering student than the growth percentage by itself.

### Failure 4: ignoring substitution by related majors

BLS itself says a related engineering bachelor’s can qualify for biomedical-engineering work. If ME and EE graduates can enter BME jobs while also retaining access to much larger ME/EE labor markets, that option value belongs in the first answer.

### Failure 5: job-board category error

A raw search-result count was initially tempting as evidence of demand. Manual inspection showed that many results were not BME-specific bachelor’s-level new-graduate engineering jobs.

### Failure 6: prompt sensitivity

The largest model failure was that the evidence surfaced only after the user became skeptical. A neutral-sounding college-admissions prompt elicited conventional affirmative guidance; skeptical follow-ups elicited labor-market evidence serious enough to change the decision.

A recommendation system should not require the user to know the counterargument in advance.

---

## 9. What the first answer should have looked like

Before naming schools, it should have said approximately:

1. Biomedical engineering is a real, well-paid occupation, but it is a relatively small engineering occupation.
2. The bachelor’s degree is not an exclusive gate to biomedical work; employers also hire ME, EE, ChE, MSE, software, and related engineers.
3. Published BME-education research has documented difficulty in the undergraduate-to-industry transition and concern about curricular breadth versus disciplinary depth.
4. Therefore compare BME against ME/EE/other majors **at the same universities** using actual placement, internship, and employer data.
5. If the student wants medical school or BME graduate research, BME may make a different kind of sense than if the student wants a bachelor’s-only industry job.
6. If the student wants medical-device industry work, inspect actual postings and alumni job titles before selecting the major.
7. Include four-year net price and debt before discussing prestige.
8. Only then compare Johns Hopkins, Michigan, Georgia Tech, Duke, etc.

That ordering would not prejudge BME. It would give the student the information necessary to decide whether “best BME school” was even the correct optimization problem.

---

## 10. General lesson for Blackball

This incident is useful beyond biomedical engineering.

Whenever a university degree has an occupationally suggestive name, separate:

**degree label → curriculum → internship channel → employer demand → competing credentials → actual graduate destinations → geographic market → price paid**.

Do not infer the labor-market value of a degree from the semantic resemblance between the degree title and an occupation title.

And do not let the wording of the user’s first question decide whether adverse evidence is searched for. The adverse case should be part of the default investigation.
