# Elite education and the U.S. governing class

## Question

How strongly are U.S. governing institutions connected to a small set of highly selective universities, and at what stage of education does that connection appear?

The key distinction is **not** “undergraduate or graduate.” Record both. If graduate and professional schools make the concentration look much larger, that is itself part of the result rather than a reason to discard them.

The catalog should therefore preserve at least four measurements:

1. **Undergraduate exposure** — where a person spent the roughly age-18-to-22 period.
2. **Graduate/professional exposure** — law, business, medicine, public policy, Ph.D., etc.
3. **Any elite-school exposure** — the union of the first two categories.
4. **Stacking** — the number and sequence of elite institutions attended by the same person.

This lets us ask separately whether elite schools are important as early social/class-forming institutions, as later professional credentialing and network institutions, or as both.

## Why “graduate school swamps the result” is useful information

A Harvard alumni count can combine Harvard College with Harvard Law School, Kennedy School, Business School, and other graduate programs. That is not a defect in the count so long as it is labeled correctly. It measures a different thing.

Harvard reports that **50 Harvard alumni are members of the 119th United States Congress**. Harvard's published figure is an all-school alumni figure; it should not be silently interpreted as “50 Harvard College graduates.”

Source:
- Harvard University, *2024–2025 Facts & Impact*, “Alumni & Public Service”: https://www.harvard.edu/community/wp-content/uploads/sites/14/2025/10/Harvard-in-Massachusetts-Facts-Impact-2024-2025.pdf

For Congress as a whole, the Congressional Research Service reports that in the 119th Congress **140 House members (31.7%) and 47 senators (47%) hold law degrees**. That alone makes professional-school pathways too large to treat as a footnote.

Source:
- Congressional Research Service, *Membership of the 119th Congress: A Profile*, R48535: https://www.congress.gov/crs_external_products/R/PDF/R48535/R48535.3.pdf

## Existing Congress dataset: use this rather than rebuilding from anecdotes

Craig Volden, Jonathan Wai, and Alan E. Wiseman assembled educational histories for **every member of the U.S. House and Senate serving in the 93rd through 117th Congresses (1973–2023)**. Their data include the undergraduate institution and law, business, and other graduate/professional schools separately.

Their “elite” classification is broader than the Ivy League. They built it from institutions that remained in the top 20 for more than 75% of the relevant long-run rankings, and they explicitly run alternative specifications that isolate undergraduate education from graduate/professional education.

Important descriptive findings from their combined undergraduate/graduate measure:

- Across 1973–2023, about **44% of senators** and **26% of representatives** earned a degree from an institution in their elite category.
- House Republicans fell from about **40% elite-educated in 1973 to 15% in the 117th Congress**.
- Senate Republicans fell from more than half in the 1970s to less than one-third recently in the study period.
- Democratic senators rose to above 50%; House Democrats rose to nearly 40% by the 117th Congress.
- In the 117th House, nearly **15% of Democrats had a Harvard degree** at some level, versus about **3% of Republicans**.
- The authors separately test undergraduate-only definitions and report substantively similar associations to their combined measure. That means Blackball should retain both layers rather than collapse them.

They also created a variable for the **number of elite institutions attended by the same legislator**, which is exactly the stacking measure this catalog needs.

Article:
- Craig Volden, Jonathan Wai, and Alan E. Wiseman, “On the Decline of Elite-Educated Republicans in Congress,” *Perspectives on Politics* 24(1), 2026, first published August 27, 2025. DOI: https://doi.org/10.1017/S1537592725102260
- Open article: https://www.cambridge.org/core/journals/perspectives-on-politics/article/on-the-decline-of-eliteeducated-republicans-in-congress/B50B628CA9CCC799A0D86D9496EA3F6F
- Public replication data, Harvard Dataverse: https://doi.org/10.7910/DVN/SZOD5E

### Historical partisan shift is a result, not a coding nuisance

The same paper shows that elite education has not been a constant, uniform property of both parties. In the 1970s elite-school exposure was much more common among congressional Republicans than it is now. The authors report, for example, that no Republican senator serving from 2001 through the end of their 2023 study period had an undergraduate degree from Yale, whereas Yale undergraduate degrees had previously been more common among Republican than Democratic senators.

That makes a time series preferable to a single present-day percentage.

## The pipeline extends beyond elected representatives

Congress is only one layer of federal power. The same Volden–Wai–Wiseman study reports combined elite-school attendance for presidential cabinets over the preceding 50 years:

- Nixon, Ford, and Reagan cabinets: at least **55%**.
- George W. Bush cabinet: **47%**.
- First Trump administration cabinet: **33%**.
- Clinton cabinet: **56%**.
- Obama cabinet: **more than 70%**.
- Biden cabinet: **58%**.

It also cites estimates that approximately **42% of top Biden White House staffers had Ivy League degrees**, versus **21% of top White House staffers in the first Trump administration**.

These numbers should eventually be recomputed from person-level records rather than preserved only as aggregate quotations, but they establish that the executive branch belongs in the same catalog.

## Judiciary: unusually good raw data

The Federal Judicial Center maintains the *Biographical Directory of Article III Federal Judges, 1789–present*. Its export is **updated nightly** and is available both as a judge-level flat file and as relational files, including a dedicated **Education** table.

That means the entire Article III judiciary can be analyzed without hand-building biographies one judge at a time. We should calculate at least:

- undergraduate institution;
- law school;
- other graduate education;
- elite-undergraduate flag;
- elite-law-school flag;
- any-elite flag;
- elite-school count/stack;
- court level;
- appointing president;
- appointment date/time period;
- active/senior/terminated service status.

Source and nightly exports:
- Federal Judicial Center: https://www.fjc.gov/node/7436
- Directory: https://www.fjc.gov/history/judges

## Supreme Court clerkships show a second-stage funnel

A 2023 *Columbia Law Review* study of Supreme Court clerks found:

- **94%** of the clerks in its dataset attended a top-25 law school;
- **Harvard and Yale alone accounted for 45%**;
- Harvard, Yale, Stanford, Columbia, and Chicago together accounted for **more than two-thirds**;
- the traditional top 14 law schools accounted for **86%**.

The same study is especially valuable for the 18–22 question because it examined the undergraduate origins of Harvard Law students from 1980–2020:

- **34%** came from the eight Ivy League universities;
- Harvard, Yale, and Princeton alone supplied about **21%** (11%, 6%, and 4% respectively);
- the authors' 22 selected undergraduate institutions supplied a majority of Harvard Law students.

So the law-school funnel does not merely replace undergraduate stratification. A substantial part of it **builds on an already concentrated undergraduate feeder system**.

Source:
- Tracey E. George, Albert H. Yoon, and Mitu Gulati, “Some Are More Equal Than Others: U.S. Supreme Court Clerkships,” *Columbia Law Review Forum* 123 (2023): https://columbialawreview.org/content/some-are-more-equal-than-others-u-s-supreme-court-clerkships/

## Earlier comparison with the population

A Brookings analysis of freshmen in the 112th Congress found that **9% attended an Ivy League college**, compared with fewer than 2% of the corresponding general-population cohort. It also found that only half of freshman members with college degrees attended state schools, versus 76% of the comparable population cohort.

This is older and only covers one congressional freshman class, but it is useful because it compares legislators with people of approximately the same generation rather than merely reporting congressional composition.

Source:
- Richard V. Reeves, “Horatio Alger Goes to Washington: Representation and Social Mobility,” Brookings, 2014: https://www.brookings.edu/articles/horatio-alger-goes-to-washington-representation-and-social-mobility/

## Scope of the Blackball catalog

Do not stop at people who win elections. Build separate layers for:

### Legislative
- House members
- Senators
- committee chairs and ranking members
- congressional committee counsel
- chiefs of staff
- legislative directors and senior policy staff

### Executive
- presidents and vice presidents
- Cabinet members
- White House / Executive Office of the President senior staff
- National Security Council
- Office of Management and Budget
- National Economic Council
- senior Department of Justice leadership
- U.S. Attorneys
- major agency administrators

### Independent and regulatory bodies
- Federal Reserve Board
- SEC
- FTC
- FCC
- NLRB
- other major independent commissions and regulators

### Judiciary
- Supreme Court justices
- Courts of Appeals judges
- District Court judges
- Supreme Court clerks
- appellate feeder judges and clerks

### Diplomacy and national security
- Secretaries and deputy secretaries
- senior State Department officials
- ambassadors, distinguishing career Foreign Service from political appointees
- senior intelligence leadership

### University ↔ government circulation
The relation is not merely “graduate goes into government.” Also record movement in the other direction:

- government official → professor/fellow/dean/university president;
- professor/dean → government office;
- think tank → government → university;
- clerkship → government → elite law faculty;
- university board/corporation membership overlapping with government service.

This matters for the original Harvard hearings question: Congress investigating Harvard can simultaneously contain a large number of people credentialed by Harvard and peer institutions, while congressional staff, the judiciary, executive agencies, and the universities themselves participate in overlapping professional networks.

## Person-level schema

The eventual machine-readable table should preserve raw schools, not just an elite/non-elite bit.

Suggested columns:

```text
person
branch
institution_or_office
role
title_start
title_end
party_if_applicable
undergraduate_school
undergraduate_degree
undergraduate_year
law_school
law_degree
law_year
business_school
other_graduate_school
other_graduate_degree
elite_undergraduate
elite_law
elite_other_graduate
elite_any
elite_school_count
school_sequence
source_primary
source_secondary
notes
```

For each aggregate result, report at least:

```text
undergraduate only
graduate/professional only
both undergraduate and graduate
any elite exposure
number of elite institutions attended
```

Never turn an “alumni” figure into an undergraduate figure unless the source itself makes that distinction.

## Next source work

1. Import the Volden–Wai–Wiseman Harvard Dataverse replication files and preserve their original coding alongside a Blackball-normalized table.
2. Add the 118th and 119th Congresses person by person, keeping undergraduate and graduate schools separate.
3. Import the nightly FJC education and judicial-service exports and compute sitting-judge and historical time-series tables.
4. Build person-level Cabinet and White House senior-staff tables for each administration since Nixon.
5. Build a Supreme Court justice + clerk + feeder-judge table.
6. Add congressional senior staff and committee counsel, clearly labeling missing-data bias because staff biographies are much less standardized than member biographies.
7. Compare each government population with an age-matched U.S. population or college-attending population where possible, rather than treating the raw government percentage as self-explanatory.

## Interpretation rule

This catalog should establish **who went where, when, and through which institutional pipeline**. It should not infer causation from credential overlap alone. Elite-school attendance can represent selection, family background, admissions sorting, socialization, credential screening, professional networks, or several of these simultaneously. Those mechanisms require separate evidence.
