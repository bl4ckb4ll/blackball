# Amazon software employment

This is the first employer case in the FAANG working area. The primary task is to map Amazon's productive organization: which business units and teams exist, what they own or operate, and where the current requisition stock attaches. Skills, languages, degrees, and interview gates are attributes of those organizational demand nodes, not the organizing principle of the case.

## Organization map comes first

Use this hierarchy of evidence:

1. Amazon's own public team/business-unit pages;
2. explicit organizational relationships stated in job postings and leadership pages;
3. employer-provided `business_category` and `team` metadata from the jobs feed;
4. requisitions attached to the narrowest supported node;
5. work responsibilities attached to that node;
6. only after that, qualifications, languages, technologies, credentials, and interview requirements.

Do not automatically promote feed labels into departments. Some are recognizable organizational/product labels; others are job-family or recruiting buckets such as `team-sde-primary`, `team-aws-sdm`, or `no-team-listed`.

Amazon's public team catalog currently names high-level organizations such as Amazon Ads, Artificial General Intelligence, Amazon Business, Entertainment, Operations, Security, Amazon Web Services, Devices and Services, Finance and Global Business Services, Fulfillment Technology and Robotics, International Stores, North America Stores, People Experience and Technology, Selling Partner Services, Transportation/Shipping/Logistics, and others:

https://www.amazon.jobs/content/en/teams

The public Devices & Services hierarchy, for example, exposes subteams including Alexa, Amazon Leo, Ring/Blink/Amazon Key/Amazon Sidewalk, Fire TV/Kindle/Tablets, Devices Software & Services, Devices Hardware, Devices Operations & Supply Chain, and Devices Sales/Marketing/Design:

https://www.amazon.jobs/content/en/teams/devices-services/teams

AWS likewise exposes named organizations and service families; AWS Infrastructure Services explicitly owns the design, planning, delivery, and operation of servers, storage, networking, power, and cooling across AWS infrastructure, while AWS Databases names Aurora, DynamoDB, ElastiCache, Neptune, and related database work:

https://www.amazon.jobs/content/en/teams/amazon-web-services
https://amazon.jobs/content/en/teams/amazon-web-services/infrastructure-services
https://www.amazon.jobs/content/en/teams/amazon-web-services/databases

These public hierarchies should be used to validate and interpret the requisition metadata rather than replaced by keyword classification.

## First full requisition snapshot

Blackball has a reproducible global snapshot of Amazon's **Software Development** category.

From **2026-09-16 15:57:26Z through 15:57:53Z**, Amazon's public search endpoint returned:

- 2,613 initial hits;
- 2,613 raw source records;
- 2,613 distinct source-record IDs;
- 2,613 distinct numeric Amazon requisition IDs;
- zero duplicate requisition records;
- zero records without a recoverable numeric requisition ID.

See [`demand/2026-09-16-census.md`](demand/2026-09-16-census.md) and the machine-readable receipt under [`inventory/2026-09-16T155726Z/`](inventory/2026-09-16T155726Z/).

The number is a **dated stock of advertised requisitions**, not a number of hires, employees, or positions actually filled.

## First organizational cut through the 2,613 requisitions

Exact grouping of the frozen feed metadata produces:

- **42** distinct `business_category` labels;
- **125** distinct `team` labels;
- **143** observed business-category/team combinations.

See [`org-tree/2026-09-16-demand-map/`](org-tree/2026-09-16-demand-map/).

The largest feed-level business-category labels in that snapshot are:

- `aws`: 1,224 requisitions;
- `alexa-and-amazon-devices`: 391;
- `advertising`: 115;
- `subsidiaries`: 113;
- `amazon-security`: 87;
- `retail`: 70;
- `selling-partner-services`: 70;
- `ecp`: 66;
- `operations`: 63;
- `amazon-business`: 50;
- `entertainment`: 50.

These counts are useful attachment totals, not yet an org chart. For example, `subsidiaries` is not one operating department, and `ecp` requires interpretation before it can be treated as an organizational node.

Likewise, the largest team-label counts include `team-sde-primary` (904), `team-project-kuiper` (217), `no-team-listed` (202), `team-aws-sdm` (132), `team-amazon-ads` (98), `team-amazon-robotics` (81), `team-ring-key-blink` (52), and `team-aws-security` (44). Some of these are clearly closer to real organizational/product nodes than others. The map must preserve that distinction.

## What the map should eventually answer

For every validated node, record:

- parent organization where explicitly sourced;
- node type: business unit, department, team, product/service organization, centralized hiring pool, or unresolved label;
- what the node owns, builds, operates, sells, or supports;
- current requisition count and historical snapshots;
- management versus individual-contributor requisitions;
- locations;
- major child teams/products/services;
- attached work categories;
- then, secondarily, recurring languages, technologies, credentials, and interview gates.

A worker should be able to traverse something like:

`Amazon → AWS → Databases → DynamoDB → advertised work → current requisitions → worker requirements`

rather than beginning from a decontextualized statement such as “learn distributed systems.”

## Specialty screens are subordinate probes

The compiler and ML/AI work remains useful, but primarily as probes attached to organizational demand.

The compiler screen narrowed 120 compiler/toolchain mentions to **12 compiler-centered requisitions**, concentrated mainly around AWS Neuron/Annapurna Labs plus Devices work. That result becomes more useful when interpreted as demand inside those organizations rather than as a free-floating language/compiler statistic.

The ML/AI title derivation found 264 requisitions whose titles explicitly foreground ML or AI, but those titles span software/systems, hardware/firmware/silicon, model/science, compiler, management, and other work. Again, the organization owning the work is part of the explanation.

See [`../specialties/compilers/`](../specialties/compilers/) and [`../specialties/machine-learning/`](../specialties/machine-learning/).

## Current files

- [`org-tree/README.md`](org-tree/README.md) — organizational mapping rules and source hierarchy.
- [`org-tree/2026-09-16-demand-map/`](org-tree/2026-09-16-demand-map/) — fixed-snapshot business/team attachment counts.
- [`org-tree/2026-09-16-public-evidence.md`](org-tree/2026-09-16-public-evidence.md) — source-supported organizational relationships from inspected postings.
- [`jobs/2026-09-16-seed-corpus.md`](jobs/2026-09-16-seed-corpus.md) — ten inspected Amazon postings with source URLs and extracted facts.
- [`demand/2026-09-16-census.md`](demand/2026-09-16-census.md) — first population-level requisition snapshot and evidence boundary.
- [`demand/2026-09-16-title-signals/`](demand/2026-09-16-title-signals/) — subordinate ML/AI title signal derivation.
- [`inventory/`](inventory/) — timestamped machine-readable requisition inventory and receipts.
- [`acquire-software-development.sh`](acquire-software-development.sh) — public-data acquisition path.
- [`derive-organization-demand.sh`](derive-organization-demand.sh) — fixed-snapshot organizational metadata derivation.
- [`interview-versus-work/README.md`](interview-versus-work/README.md) — interview gate versus advertised work, to be attached to organizational nodes as the map matures.

## Identity and source policy

Amazon's JSON `id` is a source-record identifier. Blackball separately records the numeric public requisition ID parsed from `/jobs/<number>/...`. The 2026-09-16 validated snapshot found a one-to-one mapping, but the two fields remain distinct.

Amazon Jobs pages and the search feed are primary sources for Amazon's own advertised vacancies, organizational labels, work, qualifications, and interview process. They are not independent evidence that:

- a feed label is a formal department;
- two co-occurring organization names have a reporting relationship;
- every requisition results in a hire;
- one requisition represents exactly one headcount slot;
- the work is performed exactly as advertised;
- a posting remains open after its retrieval time.

## Next measurement steps

1. Validate the largest feed-level business and team labels against Amazon's public team pages and posting bodies; assign node types instead of assuming every label is a department.
2. Build the high-level Amazon → organization → subteam/product/service graph, beginning with AWS, Devices & Services, Ads, Security, Operations, Stores, Selling Partner Services, PXT, and major subsidiaries represented in the software census.
3. Attach all 2,613 requisitions to the narrowest validated node possible; keep unresolved attachments explicit.
4. For each major node, summarize what it actually owns/builds/operates from primary sources.
5. Add management/leadership evidence where public sources support it.
6. Only then aggregate skills, languages, degrees, and interview gates within and across those nodes.
7. Repeat snapshots to measure organizational demand persistence and change.

The central question is what Amazon needs done, where inside Amazon that need lives, and how much observable demand attaches to it. Worker requirements are downstream of that map.
