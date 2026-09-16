# Amazon software employment

This is the first employer case in the FAANG working area. The task is descriptive: preserve what Amazon publicly says it is hiring software workers to do, compare advertised work with advertised qualifications and the official interview gate, and measure the current requisition stock without pretending postings are realized hires.

## First full snapshot

Blackball now has a reproducible global snapshot of Amazon's **Software Development** category.

From **2026-09-16 15:57:26Z through 15:57:53Z**, Amazon's public search endpoint returned:

- 2,613 initial hits;
- 2,613 raw source records;
- 2,613 distinct source-record IDs;
- 2,613 distinct numeric Amazon requisition IDs;
- zero duplicate requisition records;
- zero records without a recoverable numeric requisition ID.

See [`demand/2026-09-16-census.md`](demand/2026-09-16-census.md) and the machine-readable receipt under [`inventory/2026-09-16T155726Z/`](inventory/2026-09-16T155726Z/).

The number is a **dated stock of advertised requisitions**, not a number of hires, employees, or positions actually filled. Amazon's index is live and can change during the day.

The earlier ten-posting seed corpus remains useful because it contains inspected role details across a general 2026 US SDE pipeline, a fungible experienced-SDE pipeline, distributed search, identity, networking, RAG/document processing, security, people-science production systems, ML compilers, and AI/ML network infrastructure. It is not used as a prevalence sample.

## Compiler result and classification warning

The first broad keyword pass found compiler/toolchain language in 120 of the 2,613 requisitions. Inspection showed why keyword counts cannot simply be renamed occupations: centralized AWS postings and many adjacent systems roles mention compilers without being compiler vacancies.

A stricter role screen plus manual review produced **12 compiler-centered requisitions**, 3 of them management postings. The audited set is in [`../specialties/compilers/amazon-2026-09-16.md`](../specialties/compilers/amazon-2026-09-16.md).

That 12 / 2,613 ratio is about 0.46% of this dated Amazon Software Development requisition stock. It is not a share of Amazon programmers or a hiring probability.

## ML/AI title result and another classification warning

The body-wide ML/AI screening tag appears in **836** requisitions. That is a retrieval queue, not 836 ML jobs.

A deterministic derivation from the same frozen 2,613-requisition snapshot found **264** requisitions whose titles explicitly foreground ML or AI. Inside those 264, the checked title taxonomy assigns:

- 161 to software/systems/infrastructure titles;
- 44 to hardware/firmware/silicon titles;
- 13 to model/science titles;
- 8 to compiler titles;
- 16 to management titles;
- 22 to other titles.

These are still title signals, not work classifications. Generic titles can hide ML-centered work, while titles naming an ML accelerator or AI product can describe ordinary software or hardware engineering. The result is useful because it makes the heterogeneity visible before any claim about how many “AI jobs” exist.

See [`demand/2026-09-16-title-signals/`](demand/2026-09-16-title-signals/) and [`../specialties/machine-learning/`](../specialties/machine-learning/).

The same mention-versus-role separation still has to be applied to backend, distributed systems, infrastructure, security, networking, embedded systems, and the other broad categories before their shares are reported.

## Research questions

For Amazon, keep asking:

- Which requirements appear across unrelated SDE postings because they are standard Amazon templates?
- Which requirements identify the actual work of a particular team?
- What fraction of the requisition stock falls into defensibly classified backend/application, distributed systems, infrastructure, databases/search, security, embedded/systems, compilers, ML, graphics, frontend/mobile, and other categories?
- Which jobs truly require a degree, which permit equivalent experience, which merely prefer a degree, and which state no degree rule?
- How do requirements change by level?
- What operational obligations recur: deployment, monitoring, on-call, incident response, documentation, code review, mentoring, or recruiting?
- What does Amazon's generic SDE interview test, and what team-specific knowledge appears only in the job itself?
- Which advertised requirements appear to be waived in actual hiring? That requires evidence beyond job postings.
- How persistent are requisitions, and how many new/removed postings appear between snapshots?

## Current files

- [`jobs/2026-09-16-seed-corpus.md`](jobs/2026-09-16-seed-corpus.md) — ten inspected Amazon postings with source URLs and extracted facts.
- [`demand/2026-09-16-seed-map.md`](demand/2026-09-16-seed-map.md) — initial shape before the full census.
- [`demand/2026-09-16-census.md`](demand/2026-09-16-census.md) — first population-level requisition snapshot and evidence boundary.
- [`demand/2026-09-16-title-signals/`](demand/2026-09-16-title-signals/) — fixed-snapshot ML/AI and software-title signals with auditable title-family assignments.
- [`inventory/`](inventory/) — timestamped machine-readable inventories, classification rules, hashes, screening queues, and receipts.
- [`acquire-software-development.sh`](acquire-software-development.sh) — current-directory-independent public-data acquisition and screening path.
- [`derive-title-signals.sh`](derive-title-signals.sh) — deterministic derivation from the preserved 2026-09-16 snapshot; it does not re-fetch Amazon.
- [`org-tree/2026-09-16-public-evidence.md`](org-tree/2026-09-16-public-evidence.md) — team/organization relationships explicitly supported by postings; not promoted into a complete reporting tree.
- [`interview-versus-work/README.md`](interview-versus-work/README.md) — Amazon's official SDE interview material beside work described in current postings.
- [`../specialties/compilers/README.md`](../specialties/compilers/README.md) — compiler-specialty question map and current result.
- [`../specialties/machine-learning/README.md`](../specialties/machine-learning/README.md) — ML/AI demand question map and current title-level result.

## Identity and source policy

Amazon's JSON `id` is a source-record identifier. Blackball separately records the numeric public requisition ID parsed from `/jobs/<number>/...`. The 2026-09-16 validated snapshot found a one-to-one mapping, but the two fields remain distinct so later changes cannot silently redefine job identity.

Amazon Jobs pages and the search feed are primary sources for Amazon's own advertised vacancies, work, qualifications, and interview process. They are not independent evidence that:

- the work is performed exactly as advertised;
- every listed qualification is enforced;
- every requisition results in a hire;
- one requisition represents exactly one headcount slot;
- a posting remains open after its retrieval time.

If a posting disappears, retain the dated metadata/hash and seek an archived source rather than reconstructing it from memory.

## Next measurement steps

1. Do a body-aware audit of the 836-record ML/AI mention queue, keeping model/science, software systems, data/retrieval infrastructure, hardware, compilers/runtimes, product integration, incidental mentions, management, and uncertain cases separate.
2. Build and manually audit role-level classifiers for ordinary backend/application work and distributed/infrastructure work.
3. Replace the literal degree-language screen with a rule-aware classification of required degree, degree-or-equivalent-experience, preferred degree, and no stated degree condition.
4. Preserve management and individual-contributor requisitions separately.
5. Repeat the exact Amazon snapshot so stock, additions, removals, and persistence can be measured.
6. Apply the same bounded method to another major employer before treating Amazon as representative of the programming labor market.

Only after those stages should Blackball make broader statements about what “software jobs” mostly are or what preparation the employment market rewards.
