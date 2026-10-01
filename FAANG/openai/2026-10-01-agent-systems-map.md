# OpenAI agent-systems organization map — 2026-10-01

This note records the organizational nodes around the current **AI Systems Engineer, Codex Agents** posting and adjacent work. It is an employer-structure dossier, not an inferred org chart.

## Codex → Engineering → Codex Core Agent(s)

Primary source:
- https://openai.com/careers/ai-systems-engineer-codex-agents-san-francisco/

The careers metadata places **AI Systems Engineer, Codex Agents** in **Codex - Engineering**. The posting names the **Codex Core Agents team** and says it builds the agent harness around the model.

Named work includes:
- agent harness and execution loop;
- model interaction;
- sandboxed execution and isolation;
- orchestration, state and workflows;
- evals and experimentation;
- production reliability;
- observability, profiling and diagnostics;
- inference/runtime and GPU/fleet debugging;
- token, latency, cost, capacity and quality tradeoffs;
- production feedback into model and harness improvements.

The posting calls the desired engineer an **agent-systems builder** and explicitly names distributed systems, infrastructure, developer tooling, sandboxing/virtualization, ML systems, compiler/runtime performance and developer platforms.

Closely attached requisitions:
- Software Engineer, Codex Core Agents — https://openai.com/careers/software-engineer-codex-core-agents-san-francisco/
- Applied AI Engineer, Codex Core Agent — https://openai.com/careers/applied-ai-engineer-codex-core-agent-san-francisco/

The Software Engineer posting describes the Core Agent team as building the **kernel of Codex** and owning execution, tools, long-running tasks, sandboxing, orchestration, state/memory, testing/debugging model-generated code, reliability, latency, cost and capacity.

The Applied AI role emphasizes real-task agent behavior, evals, production failure analysis, prompting, tool-use strategies, context construction and feedback loops.

## Codex → Engineering → Cloud Agents

Source:
- https://openai.com/careers/software-engineer-cloud-agents-san-francisco/

The **Cloud Agents** team builds product infrastructure for long-running agents:
- orchestration;
- sandboxing and isolation;
- storage;
- secure environment connectivity;
- secrets and identity;
- observability;
- reliability;
- cost controls.

The posting says these systems run agentic workloads for Codex, ChatGPT and the OpenAI API.

## Research → Codex

Source:
- https://openai.com/careers/performance-and-systems-engineer-codex-san-francisco/

The **Performance & Systems Engineer, Codex** role is categorized under **Research**. The posting describes whole-system optimization across LLM inference, cloud orchestration, agentic work management and product surfaces.

Related research role:
- https://openai.com/careers/research-engineer-codex-san-francisco/

That role covers agentic model behavior, training/evals, tool use, computer use, multi-agent work, long-horizon tasks, diagnostics and research-to-product integration.

## Compute → Agent Infrastructure

Source:
- https://openai.com/careers/software-engineer-agent-infrastructure-san-francisco/

The **Agent Infrastructure** team is in **Compute**. It builds:
1. training environments in which agentic models execute code, debug and develop software; and
2. the production execution platform used by Codex, Operator, ChatGPT tool use and future agents.

The posting names large-scale container orchestration, APIs, Terraform, research-training integration, sandboxed execution and scaling from experiments to very large clusters.

OpenAI's broader Compute Infrastructure posting separately lists **Agent Infrastructure** as a compute lane:
- https://openai.com/careers/software-engineer-compute-infrastructure-san-francisco/

## Applied AI Infrastructure → Engineering Acceleration → Build Systems / CI

Source:
- https://openai.com/careers/software-engineer-build-systems-ci-san-francisco/

The careers metadata places this role in **Applied AI Infrastructure**. The posting names the **Engineering Acceleration team** as the group building systems engineers use to build, test and ship ChatGPT, the API and OpenAI infrastructure.

Named systems/problems:
- Bazel and Starlark;
- Buildkite;
- test selection;
- remote caching and remote execution;
- reproducible/hermetic builds;
- sharding, retry behavior and flake isolation;
- Docker/OCI and Kubernetes runners;
- CI observability;
- reproducing CI locally;
- AI-assisted failure analysis, flaky-test debugging, PR triage and automatic remediation.

This is adjacent but organizationally distinct from Codex Core Agents: it works on the development/verification system used by engineers rather than the Codex harness itself.

## Applied AI Infrastructure → Engineering Acceleration → Delivery / CD

Source:
- https://openai.com/careers/software-engineer-delivery-cd-san-francisco/

The Delivery / Continuous Deployment team owns deployment infrastructure, release pipelines, staged/canary rollouts, automated rollback and increasingly autonomous production delivery.

## Hiring-authority evidence

The official postings reviewed above do **not name an individual hiring manager** for Codex Core Agents, Cloud Agents, Agent Infrastructure or Engineering Acceleration.

Do not infer a hiring manager from a prominent Codex employee, a blog author, a recruiter on a repost, or a manager elsewhere in Codex.

A current posting for **Manager, Applied AI Engineering (Codex)** establishes a distinct customer-facing Codex Applied AI Engineering management layer, but not management of Codex Core Agents:
- https://www.linkedin.com/jobs/view/manager-applied-ai-engineering-codex-at-openai-4458658291

Add person-level authority only with direct evidence: a self-authored hiring statement tied to the named unit, an official reporting line, or an official team page establishing management responsibility.

## Companion data

See [agent-systems-roles.tsv](agent-systems-roles.tsv).

## Research queue

1. Find direct public hiring statements by managers of Codex Core Agents, Cloud Agents, Agent Infrastructure and Engineering Acceleration.
2. Preserve names only with dated authority evidence.
3. Track whether these requisitions persist, close or re-open.
4. Map reporting edges among Codex Engineering, Codex Research, Compute and Applied AI Infrastructure only where a source explicitly establishes them.
5. Keep role similarity separate from hierarchy.


## Role-level public-profile lens

The target role now has a dedicated evidence dossier:
- [AI Systems Engineer, Codex Agents role dossier](roles/ai-systems-engineer-codex-agents/)

That directory separates:
1. requisition and organization facts established by public sources;
2. public Codex contributor evidence, without inferring hiring authority; and
3. a descriptive role-specific public-profile lens for repeatable Looking Glass experiments.

The profile lens records visible role-relevant evidence, adjacent evidence, presentation friction and unknowns.
It does not rank candidates or make hiring recommendations.
