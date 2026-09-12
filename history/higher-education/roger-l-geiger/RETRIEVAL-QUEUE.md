# Roger L. Geiger — retrieval and inspection queue

## Priority 0 — preserve evidentiary boundaries

- Do not call the Johns Hopkins “students were an afterthought” formulation a Geiger quotation.
- Do not mirror copyrighted book scans into the public repository without a redistribution right.
- Do not treat publisher descriptions, search snippets, reviews, or catalog summaries as substitutes for inspecting the work.
- Do not call the bibliography complete until Geiger's archived curriculum vitae has been checked.

## Priority 1 — the Johns Hopkins passage

1. Obtain lawful access to *The History of American Higher Education*.
2. Inspect chapter 8 and the index entries for Johns Hopkins and Daniel Coit Gilman.
3. Search the actual text for `afterthought`, `students`, `undergraduates`, `college`, `graduate`, `faculty`, and `professors`.
4. Record:
   - edition;
   - page;
   - exact wording;
   - paragraph context;
   - whether “students” means all students or undergraduates;
   - Geiger's footnote/endnote;
   - the upstream source cited.
5. Inspect the upstream source.
6. Compare with Gilman's 1876 address and Hugh Hawkins's *Pioneer*.
7. Replace the provisional claim in `JOHNS-HOPKINS.md` with a page-backed claim or a documented correction.

Acceptance condition:

```text
PASS only if exact Geiger page + wording/paraphrase boundary + upstream citation are recorded.
```

## Priority 2 — two-volume national history

For each chapter of:

- *The History of American Higher Education*;
- *American Higher Education Since World War II*;

create:

- a chapter summary;
- a claim ledger;
- named institutions and people;
- time span;
- central mechanisms;
- tables/figures inventory;
- full bibliography/endnote extraction;
- citation edges to upstream sources;
- disagreements or omissions;
- links to Blackball case files.

Do not reduce chapters to generic prose. Extract atomic claims usable in later retrieval.

## Priority 3 — research-university sequence

Inspect in order:

1. *To Advance Knowledge*.
2. *Research and Relevant Knowledge*.
3. *Knowledge and Money*.
4. *Tapping the Riches of Science*.

Build a longitudinal ledger for:

- philanthropy and foundations;
- public appropriations;
- federal contracts and grants;
- research overhead;
- faculty time and status;
- graduate labor;
- undergraduate instruction;
- patenting and technology transfer;
- industrial sponsorship;
- regional-development promises;
- administrative growth;
- institutional stratification.

For every claimed benefit, seek the corresponding cost, recipient, time horizon, and enforcement mechanism.

## Priority 4 — official recent full-text routes

From Geiger's official publications page, retrieve and inspect the lawful author copies or publisher pages for:

- “The Brain of Society”;
- “Merit Exists, and So Does Inequality”;
- the Altbach–Geiger policy dialogue;
- “Becoming a Modern Public Research University”;
- “Universities before their Time”;
- the review of *Exchange of Ideas*;
- “The Ten Generations of American Higher Education”;
- the review of *The Lost Promise*;
- “University of Admin.”

For each file:

- record the canonical publication;
- checksum the downloaded research copy if one is lawfully obtained;
- record whether redistribution is permitted;
- if not redistributable, keep it outside the public repository and store only notes, citation, checksum, and access route;
- inspect every bibliography or endnote rather than merely saving the PDF.

## Priority 5 — complete bibliography

Locate and inspect the Penn State archival finding aid for Roger L. Geiger's papers.

Targets explicitly reported in the collection:

- curriculum vitae;
- “Career Outline, 1963–2023”;
- publication lists;
- drafts and correspondence where open to research;
- records from *History of Higher Education Annual* / *Perspectives on the History of Higher Education*.

Resolve:

- the reported count of eight single-authored books;
- the identity of works missing from the current seed ledger;
- original versus reprint dates;
- authored versus edited volumes;
- full article and chapter bibliography;
- translations and revised editions.

Produce:

- `works.yml` expanded to all confirmed works;
- a BibTeX or CSL-JSON export;
- stable identifiers: DOI, ISBN, OCLC, JSTOR, Open Library, publisher URL;
- availability and rights fields.

## Priority 6 — annual and edited-volume inventory

Create one file per volume of *History of Higher Education Annual* / *Perspectives on the History of Higher Education*.

Each file must include:

- exact title and year;
- publisher and identifiers;
- editor(s);
- complete table of contents;
- each contributor;
- Geiger-authored introduction or chapter;
- period and institutions covered;
- references worth following;
- lawful access route.

## Priority 7 — coverage tests

Measure Geiger's coverage rather than assuming comprehensiveness.

For each national-history chapter, tag attention to:

- students versus faculty and administrators;
- class and wealth;
- race and enslavement;
- sex and coeducation;
- religion and denominations;
- region;
- public/private control;
- community colleges and non-elite institutions;
- occupational and professional education;
- student debt, tuition, and family finance;
- employment outcomes;
- institutional self-reproduction;
- labor performed by students and junior scholars.

A low count does not by itself prove neglect; it identifies where supplementary histories are required.

## Priority 8 — Blackball metrics derived from the history

Turn recurring historical criticisms into comparable measures:

- **constituency priority:** who received the first and largest institutional commitments;
- **teaching centrality:** teaching expenditure, teaching load, and governance relative to research and administration;
- **student specification:** how clearly the intended student population was defined;
- **revenue dependence:** dependence on tuition and student fees despite rhetoric that subordinates students;
- **mission addition:** when new missions were added and whether old resources were diluted;
- **promise-realization:** whether advertised student benefits were actually delivered;
- **back-door accountability:** whether institutions bore losses when education or career promises failed;
- **knowledge-to-authority conversion:** how research prestige increased institutional and individual power;
- **internal-placement share:** how much apparent career success depended on higher education employing its own graduates;
- **capital-allocation counterfactual:** what students or families could have purchased with the same resources.

Use distributions, dates, and institutional comparisons. Do not turn a memorable sentence into a universal conclusion.

## Suggested repository artifacts

```text
roger-l-geiger/
├── README.md
├── BIBLIOGRAPHY.md
├── JOHNS-HOPKINS.md
├── RETRIEVAL-QUEUE.md
├── works.yml
├── books/
│   ├── history-of-american-higher-education/
│   ├── american-higher-education-since-world-war-ii/
│   ├── to-advance-knowledge/
│   ├── research-and-relevant-knowledge/
│   ├── knowledge-and-money/
│   ├── private-sectors-in-higher-education/
│   └── tapping-the-riches-of-science/
├── articles/
├── annuals/
└── citation-graph/
```

Create empty directories only when they gain a receipt or index; Git does not preserve empty directories.
