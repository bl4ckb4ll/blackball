# Amazon software employment

This is the first employer case in the FAANG working area. The immediate task is descriptive: build a dated corpus of what Amazon publicly says it is hiring software workers to do, then compare advertised work with advertised qualifications and the official interview gate.

## Snapshot boundary

On 2026-09-16, Amazon's global **Software Development** category page displayed **2,613 open jobs**:

https://www.amazon.jobs/en/job-category/software-development

That number is a volatile web snapshot, not yet the denominator for any claim in this directory. It is global, can change during the day, and may include different titles and management roles inside Amazon's own category. A defensible prevalence estimate requires enumerating and deduplicating the underlying job IDs at a defined time.

The first seed corpus is deliberately selected to expose different kinds of software work rather than to estimate their frequencies. It includes a general 2026 US SDE pipeline, a fungible experienced-SDE pipeline, distributed search, identity, networking, RAG/document processing, security, people-science production systems, ML compilers, and AI/ML network infrastructure.

## Research questions

For Amazon, keep asking:

- Which requirements appear across unrelated SDE postings because they are standard Amazon templates?
- Which requirements identify the actual work of a particular team?
- What fraction of current vacancies falls into backend/application, distributed systems, infrastructure, databases/search, security, embedded/systems, compilers, ML, graphics, frontend/mobile, and other defensible categories?
- Which jobs explicitly require a degree, and which accept experience without one?
- How do requirements change by level?
- What operational obligations recur: deployment, monitoring, on-call, incident response, documentation, code review, mentoring, or recruiting?
- What does Amazon's generic SDE interview test, and what team-specific knowledge appears only in the job itself?
- Which advertised requirements appear to be waived in actual hiring? That last question requires evidence beyond job postings.

## Current files

- [`jobs/2026-09-16-seed-corpus.md`](jobs/2026-09-16-seed-corpus.md) — ten inspected Amazon postings with source URLs and extracted facts.
- [`demand/2026-09-16-seed-map.md`](demand/2026-09-16-seed-map.md) — what can and cannot yet be inferred from those examples.
- [`org-tree/2026-09-16-public-evidence.md`](org-tree/2026-09-16-public-evidence.md) — team/organization relationships explicitly supported by the postings; this is not promoted into a complete reporting tree.
- [`interview-versus-work/README.md`](interview-versus-work/README.md) — Amazon's official SDE interview material beside the work described in current postings.
- [`../specialties/compilers/README.md`](../specialties/compilers/README.md) — current compiler-specialty evidence.

## Source policy

Amazon Jobs pages are primary sources for Amazon's own advertised vacancies and interview process. They are not independent evidence that the work is performed exactly as advertised, that every listed qualification is enforced, that every open requisition results in a hire, or that a vacancy remains open after the retrieval date.

Use job ID as the stable record key where possible. Preserve the legal employer named on the posting separately from product/team names. If a posting disappears, retain the dated extracted facts and seek an archived copy rather than reconstructing it from memory.

## Next measurement step

Build a reproducible dated inventory of the complete Amazon Software Development category:

1. enumerate all visible job IDs at a recorded retrieval time;
2. save title, legal employer, location, category, URL, and posting text/source receipt where permitted;
3. deduplicate by job ID;
4. classify with explicit multi-label rules rather than mutually exclusive guesses;
5. audit a sample manually;
6. publish counts with the population definition and retrieval timestamp;
7. repeat later so job stock, additions, removals, and persistence can be distinguished.

Only then should this case make statements such as "compiler jobs are X% of Amazon software vacancies."
