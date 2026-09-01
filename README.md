# blackball

Blackball is an LLM-facing RAG bin: a model-independent evidence corpus, claim ledger, source trail, and retrieval surface for questions that should not be answered from model memory alone.

It is built to make later answers inspectable.

The basic retrieval path is:

**question → candidate claims → evidence → source owner → scope/time → disagreement → answer**

Blackball is not primarily a syllabus, recommendation list, or human-facing course guide. A syllabus can be evidence in Blackball; it is not the organizing object.

## What belongs here

- primary sources and stable source records;
- careful source-review notes;
- atomic evidence-backed claims;
- institutional and historical cases;
- citation graphs that preserve who actually produced an idea, measurement, document, or observation;
- competing interpretations and negative evidence;
- scope, timeframe, and confidence labels;
- explicit unknowns and retrieval queues;
- source snapshots sufficient to recover or verify a claim later;
- question maps that say which evidence would actually decide an issue.

## Evidence rule

Never promote metadata, a title, a search snippet, a review, or an LLM reconstruction into stronger evidence than it is.

Prefer:

**upstream primary source > inspected primary author > inspected secondary analysis > discovery metadata**

unless the question is specifically about the secondary author's interpretation.

A credential, ranking, institutional label, or professional title carries only the evidentiary weight of the process it actually certifies. Do not silently substitute broad claims about intelligence, competence, employability, judgment, or authority.

## Current question surfaces

- [Why are business schools bundled with universities and liberal arts?](llm/questions/business-school-university-bundle.md)

## Economics

- [Economics index](economics/README.md) — evidence and source records for Maddison, Keynes, Painter, Marx and Engels, Engels's working-class analysis, Adam Smith, and related economic history and political economy.

## People dossiers

- [Adam Smith](people/adam-smith.md) — Glasgow moral-philosophy chair, career chronology, reconstructed scale of the Scottish professoriate around 1759, and comparison with colonial American higher education.
- [John O. Outwater Jr.](people/john-o-outwater-jr.md) — mechanical-engineering professor, ski-safety researcher, and family/academic-background notes.
- [Louis Joel Mordell](people/louis-joel-mordell.md) — Philadelphia self-education, the single-ticket Cambridge scholarship gamble, later job-search friction, and number-theory career, grounded in Mordell's reminiscences and Cassels's memoir.
- [Matt Mahoney](people/matt-mahoney.md) — Florida Tech, PAQ/ZPAQ, *Data Compression Explained*, Ocarina Networks, Dell acquisition chronology, and explicit correction of the unsupported founder/personal-$1m story.

## Source dossiers

- [David L. Kirp — *Shakespeare, Einstein, and the Bottom Line*](llm/david-l-kirp-shakespeare-einstein-bottom-line/README.md)
- [Earl Shorris — *A Nation of Salesmen*](llm/earl-shorris-a-nation-of-salesmen/README.md) — argument map, review synthesis, legitimate-access boundary, archival leads, and a dated used-book price snapshot.
- [Earl Shorris — the Clemente Course in the Humanities](llm/earl-shorris-clemente-course/README.md) — first-course origin, recruitment, original faculty and curriculum, logistics, outcome-count disagreements, later institutionalization, and provenance.
- [Earl Shorris — *Riches for the Poor*](llm/earl-shorris-riches-for-the-poor/README.md) — publication history from *New American Blues*, argument summary, Clemente relationship, access boundary, evidence limitations, and provenance.
- [John Lennon — “Working Class Hero”](sources/john-lennon/working-class-hero/README.md) — song and album provenance, official full-lyrics routes and copyright boundary, Lennon/Ono and Beatles-breakup chronology, primal-therapy context, class-background evidence, recording history, political context, censorship history, and book leads.
- [Matt Mahoney / Ocarina Networks source ledger](sources/matt-mahoney/README.md) — dated primary and secondary sources, acquisition filings, funding/product chronology, archive-discovery links, rights notes, and a claim ledger separating the real $1m prize pool from any unsupported personal payout.
- [Miles Reid — *Notes for obituary*](sources/miles-reid/obituary-notes/README.md) — self-authored 2002 notes for a future Royal Society biographical memoir, with source links, chronology, academic-pipeline details, and evidence limitations.

## Primary-source corpora

- [Henry Mayhew — *London Labour and the London Poor*](sources/henry-mayhew/london-labour-and-the-london-poor/README.md) — four-volume public-domain corpus with proofread text, page scans, raw OCR/HOCR/XML derivatives, metadata and audiobook routes.
