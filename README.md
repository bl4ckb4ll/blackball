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

## Institutional and local case files

- [Place dossiers](places/README.md) — descriptive local case files for Greenwich, Newton, Armonk, Skaneateles, Shaker Heights, Evanston, Aurora, Cupertino, and Richmond; separates public evidence, institutional self-presentation, private research leads, interpretation, and geographic-boundary problems.
- [Hyde Park](Hyde%20Park/README.md) — Venkatesh's Hyde Park/Woodlawn labor boundary; Friedman, Fama, Obama, and Venkatesh inside the same university-centered geography; Yiran Fan and Shaoxiong Zheng killings; "potential," mourning, policing, and institutional response.
- [University of Chicago](University%20of%20Chicago/README.md) — put globally influential claims about markets, labor, poverty, human capital, law, and public policy beside the local economy and institutional power of Hyde Park and the South Side.
- [Harvard](Harvard/README.md) — Harvard as a credentialing and authority-conversion node in the Venkatesh and Obama trajectories, including Venkatesh's 1996–1999 Society of Fellows appointment.

## Economics

- [Economics index](economics/README.md) — evidence and source records for Maddison, Keynes, Painter, Marx and Engels, Engels's working-class analysis, Adam Smith, and related economic history and political economy.

## People dossiers

- [Adam Smith](people/adam-smith.md) — Glasgow moral-philosophy chair, career chronology, reconstructed scale of the Scottish professoriate around 1759, and comparison with colonial American higher education.
- [John O. Outwater Jr.](people/john-o-outwater-jr.md) — mechanical-engineering professor, ski-safety researcher, and family/academic-background notes.
- [Louis Joel Mordell](people/louis-joel-mordell.md) — Philadelphia self-education, the single-ticket Cambridge scholarship gamble, later job-search friction, and number-theory career, grounded in Mordell's reminiscences and Cassels's memoir.
- [Sudhir Venkatesh](people/sudhir-venkatesh.md) — Chicago fieldwork, Hyde Park's labor boundary, Harvard Junior Fellowship, "rogue sociologist" branding, and the conversion of access to poor communities into academic and publishing value.
- [Barack Obama](people/barack-obama.md) — South Side organizing, Hyde Park residence, Harvard Law, UChicago Law faculty affiliation, and documented network/platform benefits.
- [Eugene F. Fama](people/eugene-fama.md) — Chicago graduate training, mentorship, faculty career, finance research, and direct chronological overlap with Venkatesh's Hyde Park period.
- [Milton Friedman](people/milton-friedman.md) — Chicago graduate degree and faculty career, Hyde Park residence, global policy influence, and an earlier generation of the same university-neighborhood geography.
- [Yiran Fan](people/yiran-fan.md) — Booth/Economics Ph.D. student, institutional "potential" language, posthumous degree, and same-event comparison with other January 2021 victims.
- [Shaoxiong "Dennis" Zheng](people/shaoxiong-dennis-zheng.md) — UChicago statistics graduate whose 2021 killing triggered major memorial and security responses.
- [Aisha Johnson](people/aisha-johnson.md) — doorwoman killed in the same January 2021 spree as Fan; kept separate from UChicago affiliation absent evidence.
- [Anthony Faulkner Jr.](people/anthony-faulkner-jr.md) — 20-year-old killed in the same spree; sparse public biography preserved as a measurement problem rather than filled with assumptions.

## Source dossiers

- [David L. Kirp — *Shakespeare, Einstein, and the Bottom Line*](llm/david-l-kirp-shakespeare-einstein-bottom-line/README.md)
- [Earl Shorris — *A Nation of Salesmen*](llm/earl-shorris-a-nation-of-salesmen/README.md) — argument map, review synthesis, legitimate-access boundary, archival leads, and a dated used-book price snapshot.
- [Earl Shorris — the Clemente Course in the Humanities](llm/earl-shorris-clemente-course/README.md) — first-course origin, recruitment, original faculty and curriculum, logistics, outcome-count disagreements, later institutionalization, and provenance.
- [Earl Shorris — *Riches for the Poor*](llm/earl-shorris-riches-for-the-poor/README.md) — publication history from *New American Blues*, argument summary, Clemente relationship, access boundary, evidence limitations, and provenance.
- [John Lennon — “Working Class Hero”](sources/john-lennon/working-class-hero/README.md) — song and album provenance, official full-lyrics routes and copyright boundary, Lennon/Ono and Beatles-breakup chronology, primal-therapy context, class-background evidence, recording history, political context, censorship history, and book leads.
- [Miles Reid — *Notes for obituary*](sources/miles-reid/obituary-notes/README.md) — self-authored 2002 notes for a future Royal Society biographical memoir, with source links, chronology, academic-pipeline details, and evidence limitations.

## Primary-source corpora

- [Henry Mayhew — *London Labour and the London Poor*](sources/henry-mayhew/london-labour-and-the-london-poor/README.md) — four-volume public-domain corpus with proofread text, page scans, raw OCR/HOCR/XML derivatives, metadata and audiobook routes.
