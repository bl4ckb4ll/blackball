# Amazon organization-demand attachment map — 2026-09-16

This directory is derived deterministically from the frozen 2,613-requisition Amazon Software Development inventory at `FAANG/amazon/inventory/2026-09-16T155726Z/jobs.tsv`.

It answers a narrower question than a final org chart:

**Which employer-provided business and team labels are attached to the current requisition stock, and how large are those attachment buckets?**

It does not assume every label is a department or real reporting node.

## Population

- requisitions: **2,613**
- distinct `business_category` labels: **42**
- distinct `team` labels: **125**
- observed business-category/team pairs: **143**

## Largest business-category attachment buckets

| feed label | requisitions | management requisitions | IC or unidentified | distinct team labels |
| --- | ---: | ---: | ---: | ---: |
| `aws` | 1,224 | 157 | 1,067 | 14 |
| `alexa-and-amazon-devices` | 391 | 47 | 344 | 14 |
| `advertising` | 115 | 10 | 105 | 3 |
| `subsidiaries` | 113 | 10 | 103 | 3 |
| `amazon-security` | 87 | 12 | 75 | 6 |
| `retail` | 70 | 15 | 55 | 9 |
| `selling-partner-services` | 70 | 11 | 59 | 3 |
| `ecp` | 66 | 15 | 51 | 14 |
| `operations` | 63 | 7 | 56 | 12 |
| `amazon-business` | 50 | 8 | 42 | 2 |
| `entertainment` | 50 | 11 | 39 | 4 |

The complete table is [`business-category-counts.tsv`](business-category-counts.tsv).

## Largest team-label attachment buckets

| feed label | requisitions | interpretation status |
| --- | ---: | --- |
| `team-sde-primary` | 904 | job-family / centralized hiring-style label; not a useful final department |
| `team-project-kuiper` | 217 | recognizable product/organization label; validate against current Amazon Leo naming |
| `no-team-listed` | 202 | missing data, not an organization |
| `team-aws-sdm` | 132 | management/job-family hiring label; not a useful final department |
| `team-amazon-ads` | 98 | recognizable organization label |
| `team-amazon-robotics` | 81 | recognizable organization label |
| `team-ring-key-blink` | 52 | recognizable Devices & Services product/team grouping |
| `team-aws-security` | 44 | recognizable organization/function label |
| `team-machine-learning-primary` | 40 | job-family/specialty recruiting label until proven otherwise |
| `team-pro-serv` | 36 | AWS Professional Services-style function label; validate exact node name |
| `devices-and-services-teams` | 35 | broad parent/team-navigation label, not one department |

The complete table is [`team-label-counts.tsv`](team-label-counts.tsv).

## Why the counts are useful

They identify where organizational reconstruction matters most.

For example, AWS holds 1,224 requisitions in the frozen software snapshot, but 904 are attached to `team-sde-primary`. Treating that label as the answer would tell us almost nothing about what AWS needs. Those requisitions need to be redistributed, where evidence permits, into service and organizational nodes such as databases, networking, infrastructure services, security, identity, compute, storage, Neuron/Annapurna, and others.

The Devices & Services bucket is more immediately structured because Amazon publishes a parent hierarchy including Alexa, Amazon Leo, Ring/Blink/Key/Sidewalk, Fire TV/Kindle/Tablets, Devices Software & Services, Hardware, Operations & Supply Chain, and Sales/Marketing/Design. Feed labels such as `team-project-kuiper`, `team-ring-key-blink`, `team-alexa-echo-devices`, and `amazon-device-software-and-services` can therefore be tested against that public structure.

## Files

- [`business-category-counts.tsv`](business-category-counts.tsv) — exact requisition counts by feed-level business category.
- [`team-label-counts.tsv`](team-label-counts.tsv) — exact counts by feed-level team label.
- [`business-team-counts.tsv`](business-team-counts.tsv) — observed business/team combinations.
- [`top-titles-by-business.tsv`](top-titles-by-business.tsv) — top title strings within each business bucket, useful for discovering product/service clusters without promoting titles into org nodes automatically.
- [`receipt.tsv`](receipt.tsv) — population and derivation boundary.

## Next pass

The next pass is not another keyword taxonomy. It is node validation and attachment refinement:

1. classify each high-volume feed label as `business_unit`, `organization`, `product_or_service_group`, `team`, `central_hiring_pool`, `job_family_label`, `unresolved_label`, or missing data;
2. attach primary-source URLs to validated nodes and edges;
3. push requisitions from broad/centralized pools down to named service/product/team nodes when posting evidence supports it;
4. record what each node actually builds, operates, sells, or supports;
5. measure demand by those validated nodes;
6. only afterward summarize languages, credentials, or interview requirements inside the nodes.
