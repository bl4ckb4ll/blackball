# Computer science major — outcome receipts

This folder is for source-linked accounts from students and graduates about what happened after following the computer-science education path.

The immediate purpose is not to estimate a school-level failure rate. These are receipts and leads: concrete accounts that can be inspected individually and compared against institutional claims.

## Collection rule

Keep the source separate from Blackball's notes.

For every useful account, preserve as much of this as can actually be established:

- original URL;
- platform;
- public post date/time when available;
- capture date/time;
- author/account name as displayed, when available;
- school;
- program/major;
- degree/status;
- graduation year;
- GPA;
- specialization and notable coursework, including things such as compilers when stated;
- internships/co-ops;
- projects/research;
- application count or application rate;
- interview count;
- length of job search;
- reported employment outcome;
- whether each metadata field is explicit, inferred, or unknown;
- immutable receipt capture: screenshot, saved HTML/PDF, or equivalent;
- hash of any captured receipt file.

A model may extract or categorize metadata, but it must never rewrite the receipt. If a field cannot be established from the source, record `unknown` rather than guessing.

A receipt proves that a public account said something at a particular source and time. It does not by itself prove that every factual claim in the account is independently verified.

## Initial leads

These are source-linked leads collected before the capture pipeline is finished. `capture: pending` means that only the public source URL and available indexed text/metadata have been collected so far; it is not yet an immutable screenshot/HTML receipt.

### Berkeley EECS graduate — 3.5 GPA — prolonged job search

- source: https://www.reddit.com/r/berkeley/comments/1kb75ib
- platform: Reddit / r/berkeley
- public post date: 2025-04-30
- capture: pending
- school: University of California, Berkeley
- program: EECS
- degree/status: graduate
- graduation: May 2024 (inferred from “graduated last May” in an April 2025 post)
- GPA: 3.5
- post-college work: part-time startup work; startup later failed
- search context: networking, personal projects, LeetCode, career-center and industry resume reviews
- target roles: SWE, QA, New Grad, Associate, including roles around $60k and FAANG applications
- reported outcome as of post: rarely receiving interviews and still needing a job
- Blackball note: strong named-school receipt because the poster identifies Berkeley EECS, GPA, graduation timing, post-college work, and multiple job-search efforts.

### Berkeley BA Computer Science graduate — 3.8 GPA — internship and production project

- source: https://www.reddit.com/r/berkeley/comments/1f8hwst
- platform: Reddit / r/berkeley
- public post date: 2024-09-04
- capture: pending
- school: University of California, Berkeley
- program: Computer Science
- degree/status: BA CS graduate
- graduation: Spring 2024
- GPA: 3.8
- internships: one
- projects: about ten side projects; full-stack application for a small business reportedly in production
- interview preparation: two-semester interview-preparation program
- application activity: reported 20–60 applications per day beginning in May 2024
- interviews: about ten by the post date
- reported outcome: difficult new-grad search; exact final employment outcome unknown from this receipt
- Blackball note: useful because it records substantial preparation rather than degree-only job seeking.

### Stanford BS Computer Science senior — 3.4 GPA — 350+ applications

- source: https://www.reddit.com/r/csMajors/comments/1rl1utz
- platform: Reddit / r/csMajors
- public post date: 2026-03-04
- capture: pending
- school: Stanford University
- program: Computer Science
- degree/status: BS senior, graduating June 2026
- GPA: 3.4
- internships: one
- application activity: 350+ applications since August 2025
- assessments/interviews: two online assessments and one first-round interview reported
- practice: about 600 LeetCode problems reported
- projects: described by poster as decent; details not yet extracted
- reported outcome as of post: no offer reported; considering pivoting outside software engineering
- Blackball note: named elite-school account with unusually concrete search-volume metadata.

### Carnegie Mellon MS Computational Data Science student — 300+ applications

- source: https://www.reddit.com/r/csMajors/comments/1gi9g27
- platform: Reddit / r/csMajors
- public post date: 2024-11-02
- capture: pending
- school: Carnegie Mellon University
- program: MS Computational Data Science
- degree/status: master's student, expected graduation May 2025
- specialization: machine-learning focused coursework; poster describes broader background as mixed
- application activity: 300+ SWE, MLE, and DS applications over roughly three months
- assessments/interviews: about seven online assessments; no interviews reported from them
- international-student status: explicit in source
- reported outcome as of post: job search struggling before graduation; final post-graduation outcome unknown
- Blackball note: keep as a pre-graduation receipt rather than mislabeling it as graduate unemployment.

### T20 triple-major graduate — near-perfect subject GPAs — restaurant work while searching

- source: https://www.reddit.com/r/academiceconomics/comments/1n0r3xq/recent_graduate_cant_find_a_job/
- platform: Reddit / r/academiceconomics
- public post date: 2025-08-26
- capture: pending
- school: unnamed T20 university
- degree/status: recent graduate
- graduation: May 2025
- majors: Applied Mathematics, Computer Science, Economics
- Math GPA: 3.9
- CS GPA: 4.0
- Economics GPA: 4.0
- CS coursework explicitly listed: Data Structures, Algorithms, Discrete Math, Computer Engineering, Machine Organization, Machine Learning, Computer Networks, Operating Systems, Databases
- Math coursework explicitly listed includes: Analysis, graduate analysis, probability, stochastic processes/calculus, numerical analysis, ODEs, PDEs
- reported outcome as of post: unable to find relevant-field work and working as a restaurant server while applying
- school identity: unknown from this receipt; do not infer it from the coursework
- Blackball note: academically strong counterexample, but weaker for school-specific presentation until the institution can be established independently.

## Secondary leads

These may be worth capturing, but they are not the same thing as a student's own first-person receipt.

### Berkeley professor report about 4.0 students with zero offers

- source: https://www.reddit.com/r/cscareerquestions/comments/1fq4bzc/berkeley_computer_science_professor_says_even_his/
- underlying LinkedIn source linked by the Reddit post: https://www.linkedin.com/posts/jamesfobrien_tech-jobs-have-dried-upand-arent-coming-activity-7242613292479696897-gCyT
- Reddit post date: 2024-09-26
- school: University of California, Berkeley
- claim type: professor/third-party report, not an individual graduate's first-person account
- reported claim: outstanding Berkeley CS students, including students with 4.0 in-major GPAs, were contacting the professor worried about having zero offers
- capture: pending

## Next collection work

1. Preserve immutable captures for the strongest leads first.
2. Record the displayed author/account and exact post timestamp where the source exposes them.
3. Store receipt captures separately from extracted metadata.
4. Add one small metadata file per receipt once the schema settles.
5. Search for additional named-school cases, especially accounts that state GPA, internships, coursework/specialization, graduation year, applications, and eventual outcome.
6. Where later updates exist from the same account, link them rather than overwriting the earlier receipt.
7. Do not compute percentages from this convenience corpus.
