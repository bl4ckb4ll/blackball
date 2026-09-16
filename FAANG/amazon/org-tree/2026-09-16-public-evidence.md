# Amazon public-evidence team map — 2026-09-16

This file begins the requested Amazon software organization map, but it deliberately stops short of calling itself a complete org chart. Job postings often name several organizations, products, and teams without establishing reporting lines.

Use relation labels rather than converting co-occurrence into hierarchy.

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

## Useful sketch, with edge types preserved

```text
Amazon
├── AWS
│   ├── AWS Networking
│   │   └── BERE                         [explicit “within AWS Networking”]
│   ├── Amazon OpenSearch Service
│   │   └── OpenSearch team              [explicit role-on-team]
│   ├── AWS Identity                     [team/product responsibility]
│   │   └── Utility Computing context    [membership stated; reporting edge unresolved]
│   ├── Amazon Quick Suite
│   │   └── AWS Quick RAG                [product-support relation]
│   ├── AWS Security / HawkEye           [posting context]
│   └── Annapurna Labs / AWS Neuron      [strong posting association; formal reporting tree unresolved]
│       ├── Neuron Compiler team         [explicit]
│       └── Neuron Compiler Engineering  [explicit current team name]
├── Amazon Devices
│   └── Machine Learning Compilers       [current vacancy/work area]
└── People Experience and Technology Central Science (PXTCS)
    └── production systems for workforce-science models
```

The indentation above is a retrieval aid, not a claim that every line represents a legal or managerial reporting edge. The table is authoritative about what type of relation has actually been observed.

## Managers

No hiring-manager name was stated on the ten inspected seed-posting pages. Job 10470595 links to a public AWS Global Connectivity and Network Availability video identifying a Robert as a VP, but the posting does not establish that he is the hiring manager or direct manager for this vacancy. Do not attach him to the requisition without stronger evidence.

Current rule: record a named manager only when a primary corporate source, the posting itself, or another inspectable source connects that person to the specific team/role with a dated relationship.

## Next org-mapping work

- Inspect official AWS/Amazon team pages and leadership pages for stronger organizational edges.
- Preserve dates because teams and executive structures change.
- Map each enumerated vacancy to the narrowest team/product explicitly supported.
- Keep `unknown_parent`, `associated_with`, `member_of`, `builds`, and `reports_to` as different relationships.
- Add managers only with source URLs and relationship dates.
