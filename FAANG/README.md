# FAANG

`FAANG` is a working retrieval label for large, high-paying technology employers and adjacent corporations. It is not a claim that the original acronym is the right economic category, and later work may include employers such as Microsoft, Uber, X, Cummins, or others when they answer the same employment-demand questions.

The first case is Amazon.

## Primary object: the organization and its demand for work

The backbone of this research is **not a list of programming languages or interview topics**. It is a map of the employer as a productive organization.

Work in this order:

1. identify the corporation's publicly observable business units, organizations, departments, teams, products, and services;
2. record only source-supported relationships among those units;
3. attach dated requisitions to the narrowest supported organizational node;
4. measure how many requisitions and what kinds of work are attached to each node;
5. determine what systems, products, operations, or business functions that node actually owns or supports;
6. only then attach skills, languages, credentials, interview gates, and other worker-side requirements to the organizational nodes that demand them.

A statement such as “Amazon asks for Java” is much less informative than “this organization owns these services, currently advertises this many requisitions, and these particular teams ask for Java.” The first can turn corporate boilerplate into fake labor-market guidance. The second exposes what the institution is actually trying to get done.

## Central questions

- What organizations inside the corporation actually consume technical labor?
- What does each organization own, operate, build, sell, or support?
- How many current requisitions can be attached to each unit?
- Which units are large durable demand centers and which appear narrow or transient?
- How are product teams, infrastructure teams, business functions, centralized hiring pools, and management layers related?
- Which relationships are explicitly documented, and which remain unknown?
- Within each unit, what work is being purchased from programmers and other technical workers?
- Only after that: which skills, languages, credentials, and interview gates recur within or across those units?

The worker-facing goal is to make the employment structure inspectable before someone commits years of training to an assumed market.

## Evidence layers

Keep these separate:

1. **organizational node** — a sourced business unit, organization, department, team, product/service group, or centralized hiring pool;
2. **organizational edge** — a sourced relationship such as `within`, `owns`, `operates`, `supports`, or `reports_to`;
3. **requisition attachment** — a dated vacancy attached to the narrowest supported node;
4. **work demand** — what that node says employees will build, operate, sell, analyze, or support;
5. **posting-level worker requirements** — credentials, experience, skills, languages, and technologies advertised for a vacancy;
6. **interview gate** — what the employer says it assesses before hire;
7. **revealed hiring behavior** — what the employer actually accepts in hires;
8. **realized work** — what employees actually spend their time doing.

Do not jump from layer 5 to a story about the organization. A requirement keyword is an attribute of a requisition; it is not itself a department, a product, a demand center, or proof of what most employees do.

## Worker-access and exit-route layer

The main worker-facing use case is not generic career optimization for people who already have strong bargaining power. It is to answer a harder question for someone stuck in low-wage, low-autonomy, insecure, or otherwise bad work:

> **Is there an evidence-backed way out, and what can I do without gambling years on a path that may never admit me?**

Assume the worker has to finance and execute the attempt while continuing to earn a living. Treat current income, time, family obligations, and the cost of failure as constraints.

For each plausible route, measure separately:

- whether openings actually exist and persist;
- whether the employer accepts people without prior experience in the exact job;
- what evidence can be built independently while the worker remains employed;
- time, cash cost, scheduling burden, relocation, and unpaid-work requirements;
- whether a side-income route can both produce money and build relevant evidence;
- whether credentials are demanded by employers or mainly sold by training providers;
- the smallest reversible step that yields new evidence about the route;
- failure cases and dead ends, not just success stories.

The economic object is the worker's **outside option**: whether they can make leaving a bad employer more realistic. Better outside options can reduce dependence on one employer even before a complete occupational switch succeeds.

Do not promise that effort will be rewarded. The point of the research is to find where effort has observable demand behind it and to rule out attractive-looking paths that do not.

## Degree and training-provider claims are not labor-market evidence

A college saying that computer science, electrical engineering, mechanical engineering, or another program prepares students for a field is evidence about what the college says. It is not evidence that employers are currently hiring graduates into that work.

For each educational path, build the employer side independently:

- what jobs actually exist now;
- which employers repeatedly advertise them;
- what level of experience they demand;
- what degrees or credentials they actually require;
- what alternative evidence they accept;
- how many explicitly junior, new-graduate, apprentice, trainee, technician, or other entry routes are visible;
- what happens to graduates who do not cross the advertised gate.

Only after that should Blackball compare the observed market with college curricula, career-office claims, placement statistics, and marketing.

This also follows the existing Blackball treatment of firm-level job-posting heterogeneity in [`economics/deming-kahn-skill-requirements-across-firms-2017.md`](../economics/deming-kahn-skill-requirements-across-firms-2017.md).

## Measurement rules

- Preserve job IDs, URLs, retrieval dates, legal employer, locations, compensation where published, qualifications, team or organization language, and stated responsibilities.
- Preserve employer-provided business/team metadata separately from manually validated organizational nodes.
- Treat labels such as centralized hiring pools, job-family labels, and “no team listed” as labels, not departments.
- Treat employer search-result counts as dated snapshots. Do not silently turn a changing web count into a durable denominator.
- Do not infer an org-chart edge merely because two names occur in the same posting.
- Do not infer market share from a deliberately selected example set.
- Separate generic corporate qualification templates from requirements that are specific to the actual team or domain.
- Record negative evidence and unresolved questions rather than filling gaps.
- When prevalence matters, enumerate a defined population of postings, deduplicate by requisition ID, state the retrieval window, and preserve the classification rule.

## Current case files

- [`catalog/`](catalog/) — cross-employer opportunity catalog and machine-readable first-pass index.
- [`amazon/`](amazon/) — first employer case; organization-demand map, current requisitions, interview-versus-work comparison, and specialty probes.
- [`anthropic/`](anthropic/) — current job-family map, geography/hybrid constraints, stated nontraditional-background policy, and a worker-access research queue.
- [`meta/`](meta/) — software, AI, infrastructure, production engineering, data-center, security/privacy, research, and hardware/device demand; entry-route census still pending.
- [`uber/`](uber/) — engineering demand plus explicit emerging-talent and Career Prep gates, kept separate from observed hiring outcomes.
- [`google/`](google/) — explicit early-career software and internship gates.
- [`microsoft/`](microsoft/) — software, hardware, data-center, support, facilities, research and early-in-profession routes.
- [`apple/`](apple/) — software/OS, ML/AI, hardware, operations and student internship surfaces.
- [`nvidia/`](nvidia/) — software, systems, silicon, firmware, robotics and explicit new-college-graduate routes.
- [`openai/`](openai/) — research/product/infrastructure/compute plus explicit 0–3 year emerging-talent and residency routes.
- [`cloudflare/`](cloudflare/) — systems/network/security engineering with in-hub, hybrid and distributed arrangements.
- [`specialties/compilers/`](specialties/compilers/) — compiler specialty test case.
- [`specialties/machine-learning/`](specialties/machine-learning/) — ML/AI title-signal case, subordinate to the organization map rather than a substitute for it.

## Related Blackball work

This directory does not replace the existing livelihood and entrepreneurship analysis. Independent business, owner-operator work, family enterprise, franchise, and related alternatives remain under [`economics/entrepreneurship/`](../economics/entrepreneurship/). The eventual comparison should put those arrangements and corporate employment on a common household-risk-and-return ledger rather than duplicating the entrepreneurship hierarchy here.
