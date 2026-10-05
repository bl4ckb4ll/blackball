# Amazon public-evidence organization map — 2026-09-16

This file records source-supported organizational nodes and relationships relevant to Amazon's technical labor demand. It deliberately stops short of calling itself a complete personnel org chart. Public sources often establish that a team sits within a business unit or owns a product/service without establishing managerial reporting lines.

Use relation labels rather than converting co-occurrence into hierarchy.

## Company-level public team catalog

Amazon's own jobs team catalog is the starting index for major named organizations:

https://www.amazon.jobs/content/en/teams

At retrieval on 2026-09-16 it listed, among others:

- Amazon Ads
- Artificial General Intelligence
- Amazon Business
- Amazon Entertainment
- Amazon Health Services
- Amazon Legal
- Amazon Operations
- Amazon Security
- Amazon Web Services
- Business and Corporate Development
- Communications and Corporate Responsibility
- Customer Experience and Business Trends
- Customer Service
- Devices and Services
- eCommerce Foundation
- Finance and Global Business Services
- Fulfillment Technology and Robotics
- International Stores
- North America Stores
- People Experience and Technology
- Selling Partner Services
- Shopping
- Stores Economics and Science
- Transportation, Shipping, and Logistics
- Worldwide Grocery Stores

Treat these as public top-level/team-catalog nodes. The page is a recruiting taxonomy, so a listed item is evidence that Amazon publicly organizes recruiting around that named unit; it is not by itself proof of a legal entity or a specific executive reporting line.

## Official suborganization evidence

| Source node | Relation | Destination node | Primary source | Evidence boundary |
| --- | --- | --- | --- | --- |
| Devices & Services | exposes team | Alexa | https://www.amazon.jobs/content/en/teams/devices-services/teams | Official Devices & Services team page. |
| Devices & Services | exposes team | Amazon Leo | https://www.amazon.jobs/content/en/teams/devices-services/teams | Official Devices & Services team page. |
| Devices & Services | exposes team | Ring, Blink, Amazon Key & Amazon Sidewalk | https://www.amazon.jobs/content/en/teams/devices-services/teams | Official Devices & Services team page. |
| Devices & Services | exposes team | Fire TV, Kindle & Tablets | https://www.amazon.jobs/content/en/teams/devices-services/teams | Official Devices & Services team page. |
| Devices & Services | exposes team/function | Devices Software & Services | https://www.amazon.jobs/content/en/teams/devices-services/teams | Official Devices & Services team page. |
| Devices & Services | exposes team/function | Devices Hardware | https://www.amazon.jobs/content/en/teams/devices-services/teams | Official Devices & Services team page. |
| Devices & Services | exposes team/function | Devices Operations & Supply Chain | https://www.amazon.jobs/content/en/teams/devices-services/teams | Official Devices & Services team page. |
| Devices & Services | exposes team/function | Devices Sales, Marketing & Design | https://www.amazon.jobs/content/en/teams/devices-services/teams | Official Devices & Services team page. |
| AWS | contains/uses named organization | AWS Infrastructure Services (AIS) | https://www.amazon.jobs/content/en/teams/amazon-web-services | AWS careers page explicitly describes AIS as the team handling design, planning, delivery, and operation of global AWS infrastructure. |
| AWS Infrastructure Services | owns/operates | AWS global infrastructure | https://amazon.jobs/content/en/teams/amazon-web-services/infrastructure-services | Page explicitly says AIS owns design, planning, delivery, and operation of servers, storage, networking, power, and cooling equipment across AWS data centers. |
| AWS Infrastructure Services | exposes team | Network Services | https://amazon.jobs/content/en/teams/amazon-web-services/infrastructure-services | Official AIS page under “Many teams, one mission.” |
| AWS Infrastructure Services | exposes team | Supply Chain | https://amazon.jobs/content/en/teams/amazon-web-services/infrastructure-services | Official AIS page. |
| AWS Infrastructure Services | exposes team | Data Centers | https://amazon.jobs/content/en/teams/amazon-web-services/infrastructure-services | Official AIS page. |
| AWS | exposes service organization | AWS Databases | https://www.amazon.jobs/content/en/teams/amazon-web-services/databases | Official AWS Databases careers page. |
| AWS Databases | builds/operates product/service | Amazon Aurora | https://www.amazon.jobs/content/en/teams/amazon-web-services/databases | Product/service section on official page. |
| AWS Databases | builds/operates product/service | Amazon DynamoDB | https://www.amazon.jobs/content/en/teams/amazon-web-services/databases | Product/service section on official page. |
| AWS Databases | builds/operates product/service | Amazon ElastiCache | https://www.amazon.jobs/content/en/teams/amazon-web-services/databases | Product/service section on official page. |
| AWS Databases | builds/operates product/service | Amazon Neptune | https://www.amazon.jobs/content/en/teams/amazon-web-services/databases | Product/service section on official page. |
| Amazon Operations | exposes sub-team/function | Global Engineering Services | https://amazon.jobs/content/en/teams/amazon-operations | Official Operations page. |
| Amazon Operations | exposes sub-team/function | Global Procurement | https://amazon.jobs/content/en/teams/amazon-operations | Official Operations page. |
| Amazon Operations | exposes sub-team/function | Workplace Health and Safety | https://amazon.jobs/content/en/teams/amazon-operations | Official Operations page. |
| Amazon Operations | exposes sub-team/function | Security & Loss Prevention | https://amazon.jobs/content/en/teams/amazon-operations | Official Operations page. |
| Finance and Global Business Services | exposes team | AWS Finance | https://www.amazon.jobs/content/en/teams/fgbs | Official FGBS page. |
| Finance and Global Business Services | exposes team | Finance Tech | https://www.amazon.jobs/content/en/teams/fgbs | Official FGBS page. |
| Finance and Global Business Services | exposes team | Devices & Services Finance | https://www.amazon.jobs/content/en/teams/fgbs | Official FGBS page. |
| Finance and Global Business Services | exposes team | Worldwide Amazon Stores Finance | https://www.amazon.jobs/content/en/teams/fgbs | Official FGBS page. |

These are public organizational/product edges. `exposes team` means the parent page presents the child under its team structure; it is stronger than simple co-occurrence in a posting but still does not imply a particular manager-to-manager reporting line.

## Explicit or near-explicit relationships in inspected postings

| Source node | Relation supported by posting | Destination node | Job ID | Evidence note |
| --- | --- | --- | --- | --- |
| AWS Networking | contains organization | Backbone Enterprise and Regional Engineering (BERE) | 10470595 | Posting explicitly says “Within AWS Networking” BERE is responsible for specified networking infrastructure. |
| AWS Infrastructure Services | role situated in | network-backbone work | 10470595 | Posting opens by describing AWS Infrastructure Services and then the AWS Network Backbone Organization. Do not infer a finer reporting edge from this alone. |
| AWS Network Backbone Organization | owns stated solutions | containerized network-protection solutions | 10470595 | Direct posting language; this is a responsibility edge, not a personnel-reporting edge. |
| Amazon OpenSearch Service | role on | OpenSearch team | 10475911 | Posting explicitly calls the employee an SDE on the OpenSearch team. |
| AWS Identity | builds/operates | identity, authentication, authorization stack | 10438698 | Direct responsibility statement. |
| AWS Utility Computing | membership context | AWS Identity role | 10438698 | Posting says the applicant would be a member of the UC organization. This does not establish the complete Identity reporting tree. |
| Amazon Quick Suite | powered in part by | AWS Quick RAG team | 10424087 | Posting says Quick RAG powers Quick Suite document processing/search capabilities. |
| AWS Quick RAG | responsible for | intelligent-document-processing backbone | 10424087 | Direct team-responsibility statement. |
| Amazon Security / AWS Security | role/team context | HawkEye SDE vacancy | 10496986 | Title and body place the role in AWS Security/HawkEye; no manager named. |
| People Experience and Technology Central Science (PXTCS) | interdisciplinary team | economics + behavioral science + statistics + ML + GenAI production systems | 10510025 | Direct team description. |
| Annapurna Labs | builds | AWS Neuron software/hardware-adjacent stack | 10528817, 10528830 | Current postings connect Annapurna Labs with AWS Neuron and custom accelerators. Treat as an organizational/product association unless a stronger corporate source supplies formal reporting structure. |
| AWS Neuron | contains named team | Compiler team | 10528817 | Posting explicitly says the role is in the Compiler team for AWS Neuron. |
| Neuron Compiler Engineering | develops | Neuron compiler development infrastructure | 10528830 | Posting names the team and its work. |
| Amazon Devices | current compiler work | Machine Learning Compilers role | 10447886 | Current posting places compiler/custom neural-accelerator work in the Devices organization. |

## Cross-organizational evidence

Some postings establish that work crosses large organizations without implying one contains the other. For example, current Alexa program-management material describes initiatives spanning Alexa, AWS, and AGI. Preserve such evidence as cross-organizational collaboration rather than forcing it into a tree.

## Useful sketch, with edge types preserved

```text
Amazon
├── Amazon Web Services                                  [public team catalog]
│   ├── AWS Infrastructure Services                      [official AWS page]
│   │   ├── Network Services                             [official AIS page]
│   │   ├── Supply Chain                                 [official AIS page]
│   │   └── Data Centers                                 [official AIS page]
│   ├── AWS Databases                                    [official service organization]
│   │   ├── Aurora
│   │   ├── DynamoDB
│   │   ├── ElastiCache
│   │   └── Neptune
│   ├── AWS Networking
│   │   └── BERE                                         [explicit “within AWS Networking”]
│   ├── Amazon OpenSearch Service
│   │   └── OpenSearch team                              [explicit role-on-team]
│   ├── AWS Identity                                     [team/product responsibility]
│   ├── Amazon Quick Suite / AWS Quick RAG               [product-support relation]
│   └── Annapurna Labs / AWS Neuron                      [strong posting association]
│       ├── Neuron Compiler team
│       └── Neuron Compiler Engineering
├── Devices & Services                                   [public team catalog]
│   ├── Alexa
│   ├── Amazon Leo
│   ├── Ring / Blink / Amazon Key / Amazon Sidewalk
│   ├── Fire TV / Kindle / Tablets
│   ├── Devices Software & Services
│   ├── Devices Hardware
│   ├── Devices Operations & Supply Chain
│   └── Devices Sales / Marketing / Design
├── Amazon Ads                                           [public team catalog]
├── Amazon Security                                      [public team catalog]
├── Amazon Operations                                    [public team catalog]
├── Finance and Global Business Services                 [public team catalog]
├── People Experience and Technology                     [public team catalog]
│   └── PXT Central Science                              [posting evidence]
└── ...                                                  [other public catalog nodes]
```

The sketch is a retrieval map, not a personnel-reporting chart. Each relationship must retain its relation type and source.

## Requisition attachment layer

The frozen 2026-09-16 Software Development snapshot now has a separate metadata attachment map under [`2026-09-16-demand-map/`](2026-09-16-demand-map/). It records exact `business_category` and `team` label counts without assuming those labels are true departments.

The attachment map is useful because it shows where validation effort matters most. For example:

- `aws` has 1,224 requisitions;
- `alexa-and-amazon-devices` has 391;
- `advertising` has 115;
- `amazon-security` has 87;
- `operations` has 63.

But within AWS, `team-sde-primary` alone covers 904 requisitions and is clearly a poor final organizational node. Those requisitions need to be pushed downward using posting bodies, product/service names, and official AWS organization pages.

Conversely, labels such as `team-project-kuiper` (217), `team-amazon-ads` (98), `team-amazon-robotics` (81), `team-ring-key-blink` (52), and `team-aws-security` (44) are much closer to useful organizational/product nodes and can be validated against public Amazon pages.

## Managers and leadership

No hiring-manager name was stated on the ten inspected seed-posting pages. Do not infer a hiring manager merely from a VP or director appearing on a team page.

Leadership names can still be useful for mapping a node when the official page explicitly ties a named executive to an organization. Record the person's role, organizational node, source URL, and retrieval/publication date separately from the question of who manages a specific vacancy.

Current rule: attach a named manager to a requisition only when a primary corporate source, the posting itself, or another inspectable source connects that person to the specific team/role with a dated relationship.

## Next org-mapping work

1. Validate and type every high-volume `business_category` label against Amazon's public team catalog.
2. Separate real team/product labels from centralized hiring pools, job-family labels, and missing-data labels.
3. Within AWS, push the large `team-sde-primary` and `team-aws-sdm` pools downward using named services and “about the team” text.
4. Within Devices & Services, attach requisitions to Alexa, Leo, Ring/Blink/Key/Sidewalk, Fire TV/Kindle/Tablets, Devices Software & Services, Hardware, Operations/Supply Chain, and Sales/Marketing/Design where evidence supports it.
5. Repeat the same process for Ads, Security, Operations, Stores, Selling Partner Services, PXT, and subsidiaries.
6. Map each enumerated vacancy to the narrowest validated node possible; preserve unresolved attachment explicitly.
7. Record what each validated node owns/builds/operates before aggregating skill requirements.
8. Add leadership and reporting edges only with direct public evidence.
