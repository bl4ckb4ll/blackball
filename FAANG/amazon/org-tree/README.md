# Amazon organization-demand map

This directory is the primary spine of the Amazon case.

The object is not an abstract list of skills. The object is the institution: its business units, departments, teams, products, services, and centralized hiring pools; the relationships among those nodes; and the work/requisitions attached to them.

## Node types

Do not collapse these into one generic “team” field:

- `business_unit` — large named organization such as Amazon Web Services or Devices & Services;
- `organization` — named suborganization inside a business unit;
- `department_or_function` — finance, security, supply chain, professional services, etc. when the source actually treats it that way;
- `product_or_service_group` — organization centered on a product/service such as DynamoDB, Aurora, Alexa, Ring, or Amazon Leo;
- `team` — explicitly named working team;
- `central_hiring_pool` — requisition or recruiting mechanism that hires fungibly across multiple teams;
- `job_family_label` — metadata describing a kind of worker rather than an organizational unit;
- `unresolved_label` — employer metadata whose organizational meaning has not yet been established.

A label is not promoted to `team`, `department_or_function`, or another organizational node merely because it appears in the jobs feed.

## Edge types

Preserve relationship semantics:

- `within`
- `contains`
- `owns`
- `operates`
- `builds`
- `supports`
- `serves`
- `hires_for`
- `reports_to`
- `associated_with`

`reports_to` requires stronger evidence than simple co-occurrence in a posting.

## Source hierarchy

Prefer, in order:

1. official Amazon team/business-unit pages;
2. official leadership pages and named organizational descriptions;
3. explicit “about the team” or “within X” language in individual job postings;
4. employer-provided `business_category` and `team` metadata from the search feed;
5. secondary reporting only when the primary record is insufficient, with attribution.

Useful Amazon primary-source entry points:

- Amazon team catalog: https://www.amazon.jobs/content/en/teams
- AWS: https://www.amazon.jobs/content/en/teams/amazon-web-services
- AWS Infrastructure Services: https://amazon.jobs/content/en/teams/amazon-web-services/infrastructure-services
- AWS Databases: https://www.amazon.jobs/content/en/teams/amazon-web-services/databases
- Devices & Services teams: https://www.amazon.jobs/content/en/teams/devices-services/teams
- Amazon Operations: https://amazon.jobs/content/en/teams/amazon-operations
- Finance and Global Business Services: https://www.amazon.jobs/content/en/teams/fgbs

## Requisition attachment

Attach each requisition to the **narrowest organizational node supported by evidence**.

If a posting says it is a centralized/fungible requisition spanning many teams, attach it to the central hiring pool and record the teams it can feed. Do not multiply one requisition across every possible destination and then count those copies as separate vacancies.

If only a broad business-category label is available, attach the requisition provisionally at that level and mark the narrower organization unknown.

## What gets measured at each node

For each validated node, eventually record:

- source-backed parent/child relationships;
- what the unit owns, builds, operates, sells, or supports;
- dated requisition stock;
- additions/removals/persistence across snapshots;
- management versus individual-contributor requisitions;
- geography;
- child teams/products/services;
- major work families;
- only then worker requirements such as languages, technologies, credentials, experience, and interview gates.

## 2026-09-16 feed-level attachment map

The frozen 2,613-requisition Amazon Software Development snapshot contains:

- 42 distinct `business_category` labels;
- 125 distinct `team` labels;
- 143 observed business-category/team pairs.

The exact metadata derivation is under [`2026-09-16-demand-map/`](2026-09-16-demand-map/).

This is **not yet the final org chart**. It is the attachment substrate to be validated against public organizational evidence.

Examples of why validation matters:

- `team-project-kuiper`, `team-amazon-ads`, `team-ring-key-blink`, and `team-amazon-robotics` correspond plausibly to recognizable product/organization nodes;
- `team-sde-primary` and `team-aws-sdm` are primarily hiring/job-family labels, not useful departments;
- `no-team-listed` is missing data, not an organization;
- `subsidiaries` is a broad bucket containing multiple organizations rather than a single department.

## Current evidence graph

[`2026-09-16-public-evidence.md`](2026-09-16-public-evidence.md) contains the first explicit organization relationships extracted from inspected postings. Extend that file or replace it with a machine-readable graph as coverage grows, but keep relation types and source URLs attached to every edge.
