# If not college, then what?

This is a source corpus for a practical question people repeatedly ask:

> If college is not the path, what do people who actually work in high-paying technical fields say to learn and do instead?

The corpus does **not** assume that following this advice produces employment. It records the advice so that the information itself is not confined to students who happen to attend a feeder school, know the right engineers, live in a technology hub, or have parents who know how the labor market works.

A student in an ordinary public school should be able to inspect the same map.

## Scope

Record concrete prescriptions from:

- employers describing their own technical screens;
- engineers and researchers describing how they prepared;
- technical-interview authors and instructors;
- AI/ML/LLM engineers describing current production skills;
- quant/software engineers describing the technical material they expect;
- founders and engineering leaders describing what they expect people to be able to build.

The basic object is:

**source → speaker/background → target work → what they say to learn → what they say to build/practice → assumed prerequisites → time/cost → access requirements**

Do not turn it into a motivational-success-story collection.

## Separate advice from access

A source can contain useful technical advice even when its author had advantages unavailable to an ordinary entrant.

Record those advantages rather than discarding the advice:

- selective school;
- relevant degree;
- prior technical employment;
- internships;
- professional network;
- employee referral;
- recruiter outreach;
- ability to study full-time;
- money for courses, coaching, hardware, or relocation.

The corpus can therefore say:

> “This person says to learn X, Y, and Z.”

without also saying:

> “Doing X, Y, and Z gives an unconnected novice a realistic chance of receiving the same job.”

## Strict employment evidence boundary

For the separate employment question, a clean positive case requires both:

1. no relevant software/ML/data/quant experience before the attempt; and
2. no useful professional connections, employee referral, recruiter relationship, or feeder pipeline.

Cases failing either condition may still supply useful curriculum advice, but they do not answer that employment question.

Until qualifying evidence appears, record the pathway as **not demonstrated**. Do not manufacture a numerical probability from absence of evidence.

## Initial curriculum families

The first sources repeatedly point toward a much broader curriculum than “learn one programming language.”

### General software-engineering interview material

Recurring topics:

- arrays, strings, linked lists, stacks, queues, hash tables;
- trees and graphs;
- searching and sorting;
- recursion and backtracking;
- dynamic programming and greedy methods;
- Big-O time and space analysis;
- coding cleanly under time pressure;
- tests and edge cases;
- explaining the solution while solving it;
- mock interviews.

For experienced roles, the advice expands toward:

- API and service design;
- databases, indexing, sharding, replication;
- caching;
- load balancing;
- queues and asynchronous processing;
- distributed systems;
- reliability and failure modes;
- system-design tradeoffs.

### Quant / Two Sigma-style software work

Published and candidate-facing material emphasizes:

- algorithms and data structures;
- probability and statistics for quantitative roles;
- open-ended problem solving;
- clean scalable code;
- testing;
- architecture/design;
- concurrency;
- tree and graph traversal;
- recursion;
- searching and sorting;
- hash tables.

Keep quantitative research, software engineering, and data-science tracks separate.

### Current AI/LLM application engineering

Current AI-engineering sources increasingly tell engineers to learn:

- model APIs;
- structured model outputs;
- retrieval and RAG;
- embeddings and vector/search systems;
- tool/function calling;
- agents and agent control flow;
- MCP and other tool interfaces where used;
- evaluation and benchmarks;
- observability/tracing;
- context management;
- production deployment;
- cost and latency;
- reliability and security around agent actions;
- ordinary software-engineering fundamentals underneath all of the above.

This is an evolving layer. Date every source.

## Machine-readable ledger

See [advice.tsv](advice.tsv).

Each row records a source's advice rather than Blackball's endorsement of it.

## Relation to FAANG interview-prep work

The detailed employer/interview resource index remains in [../../FAANG/interview-prep/](../../FAANG/interview-prep/).

That corpus can answer “what does Amazon/Google/Meta/Two Sigma tell candidates to prepare?” This education corpus asks the broader question: “what body of knowledge is being presented to people as the practical route outside or beside formal schooling?”

## Future comparisons

Useful later comparisons include:

- ordinary high-school computing curricula;
- community-college programming curricula;
- four-year CS curricula;
- bootcamps;
- self-study curricula;
- vocational technical programs;
- current employer/interview expectations;
- AI-engineering advice;
- actual entry-level job postings.

The comparison should preserve dates. A school teaching an older tool is not automatically failing if it teaches durable concepts well; conversely, a modern-looking language name does not prove that students receive the algorithms, systems, debugging, communication, and project experience that current advice assumes.
