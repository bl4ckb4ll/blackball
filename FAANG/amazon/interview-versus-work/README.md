# Amazon SDE interview versus advertised work

**Retrieval date:** 2026-09-16

This comparison uses Amazon's own interview-preparation material as evidence of the advertised hiring gate and current Amazon Jobs postings as evidence of advertised work. Neither source alone establishes realized employee behavior or the actual decision rule used by every interviewer.

## Primary Amazon interview sources

- SDE II Interview Prep: https://www.amazon.jobs/content/en/how-we-hire/sde-ii-interview-prep
- Software development interview topics: https://www.amazon.jobs/content/en/how-we-hire/interview-prep/software-development-topics

## What Amazon says it tests for SDE II

Amazon's current SDE II preparation page describes:

- an online assessment with 90 minutes for two technical questions;
- 20 minutes of system-design scenarios;
- an 8-minute Work Style survey tied to Leadership Principles;
- an interview loop of four 55-minute interviews;
- coding that should be syntactically correct rather than pseudocode;
- emphasis on scalable, robust, well-tested code, edge cases, and bad-input handling;
- at least one software-system-design question, with practicality, accuracy, efficiency, reliability, optimization, and scalability among the stated objectives;
- a substantial behavioral component based on Leadership Principles, typically two or three behavioral questions per interviewer.

Amazon's general software-development interview-topics page recommends reviewing computer-science fundamentals and practicing coding outside an IDE. It lists programming languages, data structures, algorithms, coding, object-oriented design, databases, distributed computing, operating systems, internet topics, and general ML/AI.

## What Amazon itself says an SDE II does

The same SDE II preparation page says the job extends beyond isolated coding exercises. Its work description includes:

- feature lifecycle work;
- solution design;
- tradeoffs between feature development and operational work;
- documentation of construction, testing, operation, and security;
- work with customers, stakeholders, and peers;
- mentoring and guidance;
- participation in recruiting and interviewing.

This is important because the interview/work distinction is visible in Amazon's own material; it need not be inferred from outside criticism.

## Seed-posting comparison

| Advertised activity or knowledge | Generic interview material | Current seed-posting evidence |
| --- | --- | --- |
| Coding | strong explicit gate | universal across software roles |
| Data structures / algorithms | explicit topic | explicit minimum in the 2026 US SDE pipeline; not repeated verbatim in every experienced posting |
| Object-oriented design | explicit topic | explicit in several postings; implicit/specific language varies |
| System design / scalability / reliability | strong explicit gate | repeated across experienced SDE postings and actual responsibilities |
| Distributed computing | explicit topic | central to multiple seed roles: general SDE, networking, OpenSearch, Quick RAG |
| Databases/search | explicit topic at generic level | deep role-specific work in OpenSearch and Quick RAG |
| Operating systems | generic topic | specifically important in Annapurna AI/ML network infrastructure and compiler-adjacent work |
| ML/AI | generic topic | ranges from productivity-tool use to production ML systems, RAG, accelerator infrastructure, and compilers |
| Deployment / production operations | present in Amazon's SDE-II job description, not the headline coding gate | repeated in seed postings |
| On-call | not a generic coding topic | explicitly stated in the general 2026 SDE pipeline, network-backbone, Quick RAG, and HawkEye examples |
| Monitoring / incident resolution | not a generic coding topic | explicit in several seed postings |
| Code review / documentation | work-description material | explicit in several seed postings |
| Team-specific stack | recruiting contact is supposed to clarify likely subjects | highly variable: Rust/Java search systems, IAM, Bedrock/DynamoDB RAG, C/C++ HPC networking, MLIR/OpenXLA compiler work |
| Leadership Principles / behavior | major explicit gate | collaboration, ownership, mentoring, cross-team work recur in postings |

## Initial interpretation boundary

The current evidence supports a narrower statement than “the interview has nothing to do with the job.” Amazon's generic SDE gate overlaps materially with advertised work in coding, system design, reliability/scalability, distributed systems, and behavioral expectations. At the same time, current jobs add operational obligations and technical specializations that a generic interview-prep list cannot fully represent.

The useful worker-facing distinction is therefore:

1. **common gate knowledge** — material likely to matter before team placement or across many SDE interviews;
2. **level-specific gate knowledge** — SDE I/II/III differences;
3. **team-specific entry knowledge** — what a concrete vacancy asks for;
4. **actual work knowledge** — what the posting says the employee will use after hire;
5. **realized interview/hiring behavior** — what candidates are actually asked and what deficits the employer actually waives.

Only the first four have direct evidence here, and even the fourth is advertised rather than observed work.

## Research queue

- Compare Amazon's SDE I, SDE II, SDE III, principal, and manager interview materials separately.
- Determine whether compiler, embedded, security, ML, and other specialist roles publish additional interview guidance.
- Collect dated candidate/interviewer reports as secondary evidence, labeling them as such rather than mixing them with official policy.
- Seek evidence about actual hires and waived requirements.
- Measure which posting requirements are common enough to justify general preparation versus better handled by targeted applications.
