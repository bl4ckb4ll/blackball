# Large-employer opportunity map

This directory generalizes the employer work beyond the initial `FAANG/` seed.

The unit is not a job title. The target relation is:

```text
employer
→ business / practice / service line / operating unit
→ team or department
→ hiring or budget authority where public evidence exists
→ work the unit buys
→ current entry gate
→ evidence date and source
```

Different employers expose different public structures:

- technology companies often expose teams and product organizations;
- consultancies expose practices, industries, capabilities, and integrated internal teams;
- banks expose lines of business plus cross-enterprise functions such as technology, operations, risk, finance, and controls;
- manufacturers expose business segments, plants, engineering/manufacturing functions, supply chain, service, and corporate functions;
- facilities/real-estate firms expose client service lines and account organizations rather than a simple product hierarchy;
- media companies may expose consumer brands separately from shared parent-company technology, production and corporate functions;
- game companies may expose publishers, platform groups, studios and technical subsidiaries as separate hiring markets.

Do not normalize those differences away.

## Current seed set

The initial technology cases remain under `../FAANG/` and are now treated as one subset of a larger employer universe. Apple is also indexed here and its team map has been expanded.

Current mapped/seeded employers include:

- Amazon, Anthropic, Meta, Uber, Apple and the other `FAANG/` technology cases;
- IBM;
- Booz Allen Hamilton, McKinsey & Company and Bain & Company;
- JPMorganChase, Capital One and Wells Fargo;
- Stryker and Cummins;
- Walmart corporate;
- CBRE and JLL;
- Daifuku Services America / the ELS recruiting surface;
- Disney and ESPN;
- Nintendo of America;
- Nickelodeon;
- Georgia-Pacific.

See `catalog.tsv` for the cross-employer index and `entry-gates.tsv` for current explicit access routes.

## Household-name coverage

Brand familiarity is useful as a coverage heuristic, not as evidence that the employer is desirable or accessible. Household names often contain labor markets that are invisible from the consumer product: factories, reliability, maintenance, finance, distribution, facilities, broadcast operations, localization, licensing, data systems and supply chain.

The coverage queue now explicitly tracks media/entertainment, games, consumer manufacturing and household technology so the directory does not drift back toward only software companies.

## Research order

For each employer:

1. identify the public organizational surface;
2. distinguish formal business units from recruiting categories;
3. attach current requisitions to the narrowest supported node;
4. identify explicit early-career, apprenticeship, technician, rotational, or other entry gates;
5. identify named hiring/budget authority only when direct evidence supports it;
6. record the worker's cost before feedback: degree requirement, relocation, unpaid time, full-time program, travel, licensing, clearance, etc.;
7. repeat the snapshot so stale advice becomes visible.

The catalog is successful when it turns "large prestigious employer" into inspectable, dated institutional structure.

## Agent-systems and coding-agent organizations

A thematic cross-employer map now tracks the organizational layers around coding agents and increasingly autonomous software work:

- [agent-systems/](agent-systems/) — OpenAI/Anthropic-adjacent comparison covering agent harnesses, sandboxing/execution, durable orchestration/state, evals, developer productivity/CI, reliability/observability, security/permissions and research infrastructure.

The map currently includes Anthropic, Cursor, Replit and Cognition, with the detailed OpenAI case under [../FAANG/openai/](../FAANG/openai/).
