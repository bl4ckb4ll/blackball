# Parsing résumés and academic CVs: readers, evidence, and research questions

Recorded: 2026-10-25. Scope: Blackball's professor/academic-institution research.
Status: research and requirements, not a reader selection, implementation claim, or acceptance receipt.

## What this work is for

The purpose is to establish **what professors present as important, how they present themselves, what their careers actually contain, and how academic hiring and institutional hierarchy work**. It is not an employer résumé-screening service, candidate-ranking system, or another device for treating institutional prestige as merit. Blackball works for the individual trying to understand education and careers, not for the institution selling them.

A motivating question from the maintainer is whether a Harvard graduate can teach at institutions below Harvard in the prestige hierarchy while graduates of less prestigious institutions have greater difficulty moving upward. The research must make that question answerable, not bury it beneath document-conversion engineering. It must also retain observations that contradict a proposed pattern.

The related questions include professors' experience of work outside academia, the relative prominence given to publications, grants, teaching and service, and the difference between educating people for their lives and reproducing the academic profession.

Keep three distinct layers:

1. **Presentation:** what this CV or biography includes, omits, emphasizes, and calls things.
2. **Career claims and corroboration:** degrees, appointments, work, dates, publications, funding, teaching and other activities, with sources and disagreements.
3. **Research findings:** patterns across a defined population, with denominators, time periods, missingness and alternative explanations.

A CV directly supports a claim about its presentation. An appointment entry supports “the author reports this appointment”; independent records may corroborate it. A section's length or position does not, by itself, reveal the author's private values. Promotion rules, job advertisements, interviews and observed decisions provide additional evidence about what institutions actually reward. These distinctions are requirements for this project, not reasons to avoid asking the questions.

## Existing implementation boundary

The [intake README](../resume/README.md) and [reader evaluation](../_/resume/reader-evaluation.md), inspected at `b286e07b35d33ad2d11aa7e80375eae458c74cb4`, describe a **partial plaintext implementation**. PDF/DOCX decoding, structured career-event interpretation and independent semantic acceptance remain unfinished there. The existing evaluation investigates `hpdft` and `pdf-toolbox`; its failed compiler acquisition is not evidence that those readers are intrinsically unusable.

This note expands the comparison set. It does not silently substitute another reader, change that implementation's status, or authorize a merge. No reader listed below was built or benchmarked for this note. Upstream documentation describes advertised interfaces, not demonstrated Blackball accuracy.

## Reader research beyond Pandoc

### Basic correction

**Pandoc reads DOCX but does not provide a PDF input reader.** Its PDF facility is output generation. It is a Haskell document-conversion library and executable with a common document model, but its manual explicitly warns that conversion can discard formatting and other information. Use it as a DOCX/semantic-conversion candidate, not as a complete PDF ingestion solution. [P1]

### Candidates and their roles

| Project | Documented capability or existing evidence | Relevance and qualification needed here |
|---|---|---|
| **Pandoc** | DOCX and other structured input readers; common document model and JSON representation. [P1] | Compare DOCX extraction. A successful conversion does not establish original OOXML anchors, complete text-box coverage, or visual fidelity. Do not fork merely to obtain PDF intake. |
| **Docling** | Multiple formats, including PDF and DOCX; layout, reading order and tables; a structured `DoclingDocument` with provenance/layout fields where available. [P2] | Study its shared document representation and layout pipeline. Preserve structured output rather than keeping only Markdown. Check which provenance fields each input backend actually supplies. |
| **Docling.rs** | Rust implementation with structured JSON output and a documented C ABI, `docling-ffi`. Its current README distinguishes model-free Office processing from PDF/image processing that needs model assets. [P3] | A possible narrow interface to Idriç. Audit the exact build, model/backend dependencies, licensing and target support before selecting it. A Rust-facing interface does not establish a wholly Rust or C++-free dependency tree. |
| **MuPDF** | C library; `mutool draw` offers rendering and structured-text XML/JSON output. Upstream offers AGPL and commercial licensing. [P4] | Candidate for PDF text/geometry and independent page rendering. Preserve original bytes and coordinates. Inspect the chosen dependency/license bundle before reuse or distribution. |
| **Poppler** | `pdftotext -bbox-layout` emits block, line and word boxes; `-tsv` also exposes that geometry. [P5] | Useful comparison reader. Plain `pdftotext` output alone is insufficient for source anchoring. Do not promote a locally available executable into the selected production reader without qualification. |
| **PDFium** | Public C interface includes Unicode/text operations and `FPDFText_GetCharBox`; implementation uses C++. Core license is BSD-style, with additional notices. [P6] | Candidate or independent reference for character-level geometry. A C ABI is not evidence of a C implementation. Pin and inspect the actual build and third-party components. |
| **pdfplumber** | Python library built on `pdfminer.six`, exposing character geometry, lines, rectangles, tables and visual-debugging facilities. It is aimed primarily at machine-generated PDFs. [P7] | Strong investigation/reference candidate for columns and table layouts, not an automatic runtime choice. Retain extraction disagreements rather than assuming it is ground truth. |
| **Mammoth** | DOCX-to-HTML conversion using semantic styles, intentionally not exact visual styling. [P8] | Useful for studying headings, lists and tables and comparing DOCX semantics. Its intentional formatting loss makes it insufficient alone for research about visual emphasis. |
| **OCRmyPDF** | Adds an OCR text layer to scanned PDFs. [P9] | Fallback for pages that need recognition. Keep the original scan, OCR-derived file and recognition provenance separately. Do not OCR readable text merely because a reader failed. |
| **pyresparser** | Résumé-specific extraction of names, degrees, institutions, employers, designations, skills and experience using Python/NLP dependencies. [P10] | Study heuristics and failure cases. Its résumé field list is not the ontology for academic CVs. Do not inherit candidate ranking, unsourced experience totals, or employer-screening objectives. |
| **MarkItDown** | Microsoft's Python document-to-Markdown project; supports PDF/Word and preserves semantic structures such as headings, lists and tables. [P11] | Useful convenience/comparison output. Markdown alone cannot be the complete evidence record for page geometry, original styles and source anchors. |
| **Apache Tika** | Broad content-type detection and extraction of text and metadata, available through Java APIs and related interfaces. [P12] | Reference for format coverage and legacy-document handling. Not a reason to introduce a JVM into Blackball's core. Qualify actual format handlers separately. |
| **Unstructured** | Format-specific and automatic partitioning into document elements; PDF processing supports different extraction/inference paths. [P13] | Compare segmentation and reading-order decisions. Record the selected strategy, dependencies and local/remote execution; do not assume all routes have the same evidence properties. |
| **hpdft / pdf-toolbox** | The existing local evaluation records Haskell extraction interfaces with page/glyph geometry and license inspections, but no completed fixture qualification. [L1] | Retain the earlier investigation and its pins. Repair the acquisition/build boundary before making claims about extraction quality. Compare rather than discard on the strength of another README. |

### Docling.rs interface: promising, not accepted

The inspected C-ABI documentation exposes conversion from bytes, a length, a filename and options, with result-output/error accessors and a corresponding free operation. JSON is an available output format. The documented interface is a plausible foreign-reader boundary, **not a tested Idriç binding**. [P3]

Important checks before adoption: ownership and output lengths; error handling; untrusted filename versus inspected format; exact JSON schema; original-source anchors; offline model provisioning; memory/page limits; and the actual dependencies of the chosen PDF backend. The upstream PDF-conformance documentation describes a C++ shim in one path. “Rust port” must not become an unsupported promise that every selected path avoids C++, Python, models or external assets. No Android/ARM32 compatibility has been demonstrated here. [P3]

### Forking decision

Do not choose a broad fork yet. First compare the existing Haskell candidates, an independent PDF reader, and DOCX readers on the same fixtures. Retain a small adapter when it suffices. Fork only for a reproduced limitation that cannot be addressed cleanly upstream or through the interface; record the failing fixture, required change, maintenance cost and license conditions.

The shortlist is a research inventory, not permission to add every listed runtime. Idriç continues to own validated evidence and résumé/CV interpretation. Foreign readers should have narrow, inspectable boundaries. Production qualification and reference-only use must remain distinct.

## Preserve both career facts and the document's presentation

Proposed flow, extending rather than replacing the current intake architecture:

```text
Original bytes + acquisition record + digest
                    ↓
Bounded format inspection
                    ↓
Isolated, pinned format reader
                    ↓
Validated text + structure + layout + source anchors
                    ↓
Idriç evidence-backed CV draft
          ↙                         ↘
Career events                 Presentation observations
          ↘                         ↙
Research queries with sources, scope and unknowns
```

### Source and location record

Retain the source URL/reference, retrieval date, any stated document date, author/issuer, document version and digest. Acquisition and document dates are different. A university-hosted biography and an author-written CV are different kinds of source even when they describe the same person.

For PDFs, require page identity, coordinate convention, rotation/crop transformations, text spans and geometry when available. Preserve ambiguous reading order instead of fabricating a single confident sequence. For DOCX, require package-part and XML/block/run references where obtainable, plus the original styles, section/table structure and relevant relationships. Do not invent stable DOCX page numbers from a format that has not been rendered under recorded conditions.

For OCR, retain page-image references, recognition engine/version/language, transformation parameters and confidence only when the engine supplies it. Missing confidence is not perfect confidence. Distinguish encrypted, malformed, unsupported, extraction-failed, image-only and mixed text/image cases.

Markdown or plain text is a useful derived view, never a replacement for the original document and evidence anchors.

### Career-event fields needed for the actual questions

| Record | Required distinctions |
|---|---|
| Person | Source names, aliases and identity evidence; no automatic merging on name similarity alone. |
| Education | Institution, campus/school/department, degree level, field, dates and completion status. Bachelor's, PhD, honorary degree, short course, fellowship and visiting affiliation must not collapse into “went to Harvard.” |
| Appointment | Employer, department, literal title, normalized role, start/end dates and source. Separate tenured/tenure-track faculty, lecturer, adjunct, visitor, postdoc, research-only staff and administrator. |
| Work outside academia | Named employer, actual role, paid/unpaid/unknown status, duration and evidence. Separate ordinary paid work, professional practice, consultancy, ownership and prestige affiliations. Omission from a CV does not establish absence from a life. |
| Teaching | Courses, level, actual instructional role, advising/mentoring and dated teaching statements. Institutional affiliation or a job title alone does not prove which teaching occurred. |
| Publications and grants | Publication type/status and dates; grant awarded versus applied for, role, amount and currency when explicit. Preserve entries rather than treating counts or funding totals as quality. |
| Honors, talks and service | Exact category and wording; invitations, memberships, awards and employment remain different relations. |
| Dates | Original wording, precision and uncertainty; unknown starts/ends, overlapping roles and “present” relative to the document's date. Do not silently invent month/day precision or sum overlapping work twice. |

These are proposed extraction requirements, not claims that the current plaintext interpreter already produces them.

### Presentation observations needed for “what matters to professors?”

Keep exact section titles, their order, page/word allocations, typography where recoverable, institutional name prominence, selected versus complete lists, and the vocabulary used for distinction, impact, excellence, teaching and public service. Record empty or absent categories against the specific document/version, not against the person's entire career.

Compare like documents: a full academic CV, a one-page biography, a grant biosketch and a departmental template impose different constraints. Record template/audience evidence when known. An institution may author or constrain a page; do not automatically attribute every presentation choice to the individual.

Compare successive versions to ask what was added, removed, renamed or moved forward. For example, a documented outside-academia job present in one version but missing from another is a version difference. Motive remains a separate question. Preserve the earlier evidence rather than overwriting it.

Cross-link CV observations to promotion/tenure criteria, hiring advertisements, stated educational aims and actual teaching responsibilities. That allows the project to compare what is advertised, what is rewarded and what is done without pretending that one document settles all three.

## Making the Harvard / upward-hiring question answerable

### Do not flatten distinct questions

Start with the doctoral-degree institution for research-faculty hiring, while preserving other degree levels for separate analyses. Use department/field and time-specific institutional status, not an unexplained universal ordering. “Higher” and “lower” refer to an explicitly chosen prestige measure, not teaching quality, intellectual worth or the worth of students.

Keep separate relations:

```text
Doctoral institution → first qualifying faculty appointment
Doctoral institution → faculty employer at a specified census date
Previous employer    → subsequent employer
```

The first two describe placement or the composition of an observed faculty population; the third describes career moves. A person with several appointments must not accidentally count as several independent graduates. Self-hires, joint appointments, foreign degrees and unknown origins need explicit handling.

Proposed first queries:

- Where do Harvard PhDs in a specified field/cohort obtain their first tenure-track appointments, and where do PhDs from the comparison institutions go?
- Where did the faculty at a specified department earn their doctorates? How concentrated are those origins?
- How many observed placements or career moves go upward, downward, sideways or cannot be ranked, and what documented counterexamples exist?
- Does the pattern change for adjunct/teaching roles, research roles, institutions without doctoral programs, countries or historical periods?

### Counts, rates and the missing denominator

Construct source-backed counts of doctorate-to-employer edges within a declared field/cohort/appointment definition. Publish raw counts and coverage before derived rankings or headline conclusions.

Among observed hires, a fraction placed upward estimates an **observed placement pattern**. It is not the probability that an arbitrary graduate gets hired. A fraction of an elite department's faculty trained at elite institutions is an **origin-composition statistic**, not the success rate of elite applicants.

To estimate “harder to get hired upward,” seek applicant numbers, relevant PhD-cohort sizes, applications, offers, acceptances and people who never entered or left academia. Specify which denominator is actually available. CV collections selected from current faculty omit unsuccessful applicants and many leavers; they can reveal a hierarchy without measuring every person's chances of crossing it.

Account for cohort, discipline, department size, hiring volume, career stage, country and appointment type. Report missing CVs and failed extraction by institution rather than letting availability become an invisible sampling rule. Separate descriptive association from claims about the causal effect of attending Harvard.

An ordering fitted to maximize downward edges will mechanically favor a hierarchy. Label network-derived prestige as such, report its uncertainty and compare held-out periods or an independently specified measure before presenting the same fitted edges as an independent test. Do not equate this caution with a conclusion that hierarchy is absent.

### Starting literature, with source status

**Wapman, Zhang, Clauset and Larremore (2022), “Quantifying hierarchy and dynamics in US faculty hiring and retention,” Nature 610, 120–127.** The publisher HTML was inspected. The analysis covers tenured/tenure-track faculty at 368 US PhD-granting universities during 2011–2020. It reports steep hiring hierarchies and concentrated doctoral origins; 80% of domestically trained faculty in its data received doctorates from 20.4% of universities. This is directly relevant evidence of system-level concentration, not an applicant-level Harvard hiring probability or a census of all teaching jobs. The publisher links a 2023 author correction; retain it with the article. Its full text was not successfully inspected during this note's preparation. [R1–R2]

**Clauset, Arbesman and Larremore (2015), “Systematic inequality and hierarchy in faculty hiring networks,” Science Advances 1, e1400005.** A directly relevant earlier source identified through publisher metadata and the 2022 paper's bibliography. The publisher/full-text requests were blocked during preparation; treat this entry as a verified bibliographic lead, not a completed independent review of its methods or numerical findings. [R3]

No Blackball faculty dataset, Harvard-specific rate or causal estimate was produced in this documentation change. The published research is a starting comparison, not a substitute for the source-backed questions above.

## Qualification corpus and acceptance questions

Use synthetic documents first, plus suitably handled public academic documents where authorized. Do not commit private résumés, contact details or full copyrighted documents merely to supply fixtures. Keep real intake records outside Git under the existing implementation policy.

Test born-digital PDFs; two columns; dates in a narrow column; table-based and text-box DOCX; headers/footers; long publication lists across pages; Unicode/ligatures; scans; mixed pages; malformed archives; encrypted input; misleading extensions; tracked changes; duplicate names; overlapping appointments; and conflicting document versions.

Include adversarial academic cases: Harvard appears only as a conference venue, publisher, collaborator's affiliation or honorary award; a postdoc is mistaken for a PhD; a visitor is mistaken for permanent faculty; a grant application is mistaken for an award; and missing outside work is turned into “never had a nonacademic job.”

Measure extraction, source-anchor correctness, reading order, event association, entity resolution, date handling, presentation retention and uncertainty separately. Inspect page images against extracted text and boxes. Agreement between readers is useful but not a proof when they share dependencies or assumptions. Keep independently authored expected results and visible failure cases.

The research gate is not “the Markdown looks good.” It is whether a reader preserves enough evidence to answer the actual faculty-career and presentation questions without inventing facts. Record unsupported/unknown explicitly and keep the original passage accessible.

## Next decisions

First preserve this research aim in implementation requirements and evaluation fixtures. Then finish or explicitly revise the existing reader-comparison work, pin candidates and dependencies, and qualify the isolated reader boundary. Compare DOCX semantic readers with original OOXML anchoring; compare PDF geometry readers with rendered source pages. Use OCR only for material that actually requires recognition.

After event extraction works, begin with a bounded, declared department/field/cohort sample and publish both the source-backed observations and missingness. Expand only after the Harvard/degree/appointment distinctions and presentation questions survive manual checks. Do not report an implementation milestone as an empirical finding about professors.

## Sources and recovery links

Documentation inspected or discovered on 2026-10-25. Mutable upstream branches describe that inspection, not pinned build artifacts; pin exact revisions when execution begins. Capability claims above come from the indicated documentation. Recommendations and measurement requirements are Blackball design proposals.

- **[L1] Existing local evaluation:** [reader-evaluation.md](../_/resume/reader-evaluation.md), [dependency pins](../_/resume/dependencies.tsv), [requirements](../_/resume/requirements.md), [implementation README](../resume/README.md). Inspected baseline: `b286e07b35d33ad2d11aa7e80375eae458c74cb4`.
- **[P1] Pandoc:** https://pandoc.org/MANUAL.html — supported input/output formats, modular readers/writers and stated representation loss.
- **[P2] Docling:** https://docling-project.github.io/docling/ and https://docling-project.github.io/docling/concepts/docling_document/ — format support and document representation; technical report: https://arxiv.org/html/2501.17887v1 .
- **[P3] Docling.rs:** https://github.com/docling-project/docling.rs ; C ABI: https://github.com/docling-project/docling.rs/blob/master/crates/docling-ffi/README.md ; dependency/conformance details: https://github.com/docling-project/docling.rs/blob/master/docs/PDF_CONFORMANCE.md .
- **[P4] MuPDF:** https://mupdf.readthedocs.io/en/latest/tools/mutool-draw.html and https://mupdf.readthedocs.io/en/latest/license.html .
- **[P5] Poppler:** upstream `pdftotext` manual as distributed by Debian: https://manpages.debian.org/trixie/poppler-utils/pdftotext.1.en.html . The freedesktop GitLab page was access-blocked during inspection.
- **[P6] PDFium:** https://pdfium.googlesource.com/pdfium/+/refs/heads/main/public/fpdf_text.h ; implementation: https://pdfium.googlesource.com/pdfium/+/refs/heads/main/fpdfsdk/fpdf_text.cpp ; notices: https://pdfium.googlesource.com/pdfium/+/refs/heads/main/LICENSE .
- **[P7] pdfplumber:** https://github.com/jsvine/pdfplumber/blob/stable/README.md .
- **[P8] Mammoth:** https://github.com/mwilliamson/mammoth.js .
- **[P9] OCRmyPDF:** https://github.com/ocrmypdf/OCRmyPDF .
- **[P10] pyresparser:** https://github.com/OmkarPathak/pyresparser .
- **[P11] MarkItDown:** https://github.com/microsoft/markitdown .
- **[P12] Apache Tika:** https://tika.apache.org/ .
- **[P13] Unstructured:** https://docs.unstructured.io/open-source/core-functionality/partitioning .
- **[R1] Wapman et al. (2022):** https://doi.org/10.1038/s41586-022-05222-x ; inspected publisher text: https://www.nature.com/articles/s41586-022-05222-x .
- **[R2] Author correction (2023):** https://doi.org/10.1038/s41586-023-06379-9 ; full-text review pending, not silently assumed immaterial.
- **[R3] Clauset et al. (2015):** https://doi.org/10.1126/sciadv.1400005 ; alternative primary full-text location to revisit: https://pmc.ncbi.nlm.nih.gov/articles/PMC4644075/ . Bibliography verified; full-text review pending.
