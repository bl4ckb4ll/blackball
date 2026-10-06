# Coding-agent and agent-systems competitor map — 2026-10-01

This cross-employer map records organizations hiring for work materially similar to agent harnesses, coding-agent infrastructure, evals, developer productivity, CI, sandboxed execution and long-running autonomous workflows.

Similarity of work does **not** imply identical hierarchy, seniority, hiring standards or product strategy.

## Anthropic

### Platform → Agentic Systems → Claude Managed Agents

Source:
- https://job-boards.greenhouse.io/anthropic/jobs/5395767008

Anthropic explicitly places **Agentic Systems** inside its **Platform organization**. The team builds **Claude Managed Agents**, a hosted platform with:
- an Anthropic-built agent harness;
- long-lived/stateful sessions;
- sandboxes and self-hosted environments;
- tools, memory and permissions;
- credential handling and error recovery;
- durable execution;
- APIs/SDK/CLI contracts.

### Infrastructure → Developer Productivity → Developer Acceleration

Source:
- https://job-boards.greenhouse.io/anthropic/jobs/5290360008

Developer Acceleration is inside **Developer Productivity**, within Anthropic's **Infrastructure organization**. Its stated responsibility is infrastructure that lets employees be productive through agents.

### Developer Productivity → Continuous Integration

Source:
- https://job-boards.greenhouse.io/anthropic/jobs/5073998008

The CI team owns automated testing/code-quality infrastructure, multi-cloud Kubernetes test execution, test selection, merge queues, branching, flake detection/quarantine, recovery and observability.

### Claude Code → model-performance/evaluation infrastructure

Source:
- https://job-boards.greenhouse.io/anthropic/jobs/5098025008

The Model Performance Software Engineer role sits on the **Claude Code team** and centers on eval frameworks, research infrastructure, internal tooling, experiment scaling and production reliability.

### AI Reliability Engineering (AIRE)

Source:
- https://job-boards.greenhouse.io/anthropic/jobs/5113224008

AIRE is a cross-cutting reliability group spanning the token-serving path from SDK/network/API layers through serving infrastructure and accelerators.

The reviewed official postings do not name an individual hiring manager. Person-level Anthropic hiring edges remain in ../../FAANG/anthropic/authority-edges.tsv, where direct evidence is preserved separately.

## Cursor

Careers:
- https://cursor.com/careers

Cursor exposes several teams that line up closely with the agent-systems decomposition.

### Engineering → Agent Harness

Source:
- https://cursor.com/hi/careers/software-engineer-agent-harness

The Agent Harness team owns:
- agent loop;
- tools;
- prompts;
- execution environment;
- guardrails;
- orchestration;
- model behavior tuning;
- multi-agent coordination;
- model integration/evaluation/rollout.

### Engineering → Agent Quality

Source:
- https://cursor.com/careers/software-engineer-agent-evaluation-and-quality

The Agent Quality role builds measurement, evaluation and feedback-loop infrastructure for the core agent.

### Engineering → Developer Productivity

Source:
- https://cursor.com/careers/software-engineer-developer-productivity

Developer Productivity owns build systems, development environments, CI/CD, merge queues, build caching, flaky-test quarantine, observability, safe rollouts, machine provisioning and dev/CI parity.

### Engineering → Core Services / Infrastructure / ML Platform

Sources:
- https://cursor.com/careers/software-engineer-core-services
- https://cursor.com/careers/software-engineer-infrastructure
- https://cursor.com/careers/software-engineer-ml-platform

Core Services explicitly owns backend infrastructure for agent workflows and end-to-end agent reliability. Infrastructure owns cloud/network/container foundations and compute runtimes. ML Platform owns shared research environments, pipelines, observability and ML developer experience.

### Engineering → Agent & Product Security

Source:
- https://cursor.com/hi/careers/engineering-manager-agent-product-security

This manager role describes a team responsible for agent identity, delegated authority, policy enforcement, secure tool execution, prompt-injection containment, isolation, secrets and accountability for increasingly autonomous agents.

The official Cursor pages reviewed name roles and teams but not an incumbent hiring manager for the individual-contributor requisitions.

## Replit

### Engineering Platform → Agent Platform

Source:
- https://jobs.ashbyhq.com/replit/43bd4e63-22c3-4b80-abd2-67eaf2c89790/

The Agent Platform role combines systems engineering, developer experience and product engineering. It describes shared shells/filesystems/state, durable interfaces between the agent and internal/external systems, and infrastructure that lets product engineers iterate rapidly on the agent.

### Engineering SRE → Developer Experience

Source:
- https://jobs.ashbyhq.com/Replit/d0e0dd7d-59d1-4de8-afbb-54aea680b51d

Developer Experience owns build/test pipelines, codebase/tooling structure, developer workflows and CI/CD, and says it partners with Replit's internal AI platform to improve agent output. The posting reports that this platform already generates more than 60% of merged PRs; preserve that as an employer claim.

### Cloud, compute and reliability substrate

Sources:
- https://jobs.ashbyhq.com/replit/7fa1826e-d7fd-4837-8485-97de895ba7fc
- https://jobs.ashbyhq.com/Replit/659a8e1e-69ba-44c0-a632-96665051a3e8
- https://jobs.ashbyhq.com/replit/6481ec1e-527c-4c1f-a041-2fb5021e7bd5

These roles cover Replit Cloud, compute platform, CI/CD, self-healing infrastructure, Kubernetes/cloud systems, reliability and services the Replit Agent can use.

## Cognition

Cognition builds Devin and exposes relevant work under **Research & Development**.

Sources:
- https://jobs.ashbyhq.com/cognition/e8086415-62bc-4cc0-96a4-84bb56182d35
- https://jobs.ashbyhq.com/cognition/13fdacf7-b4dc-4b9a-ac43-addc87de79ec
- https://jobs.ashbyhq.com/cognition/b6f96827-ce14-44f4-98fa-b1b8640858b6
- https://jobs.ashbyhq.com/cognition/72d3db28-07d3-4c28-b49f-1bdf6e8e0f10/

The work surface includes:
- long-horizon software agents;
- subagent coordination;
- reliable tool use;
- sandboxed compute environments;
- VM/container orchestration and isolation;
- agent execution infrastructure;
- training and evaluation loops;
- ML infrastructure and post-training.

## Cross-company structural comparison

Current requisitions repeatedly split the same engineering problem into recognizable layers:

agent behavior / harness
→ execution environment / sandbox
→ orchestration / durable state
→ evals / measurement / feedback
→ developer build-test-CI machinery
→ deployment / reliability / observability
→ security / identity / permissions
→ research/training infrastructure

OpenAI, Anthropic, Cursor, Replit and Cognition draw the boundaries differently, but these postings show that the layers are recurring labor-demand surfaces rather than one company's idiosyncratic title.

See [roles.tsv](roles.tsv) for a compact inventory.
