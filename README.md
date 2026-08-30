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

## Source dossiers

- [David L. Kirp — *Shakespeare, Einstein, and the Bottom Line*](llm/david-l-kirp-shakespeare-einstein-bottom-line/README.md)
- [E. P. Thompson — books, essays, and legitimate online access](llm/e-p-thompson/README.md)
- [Christopher Hill — books and legitimate online access](llm/christopher-hill/README.md)
- [Terence Ranger — books, bibliography, and access trail](llm/terence-ranger/README.md)
- [Eric Hobsbawm — books, long nineteenth century, and open article trail](llm/eric-hobsbawm/README.md)
- [Toby Green — *A Fistful of Shells* — source trail and access](llm/toby-green-a-fistful-of-shells/README.md)
- [Paulus Gerdes — *Geometry from Africa* — source trail and access](llm/paulus-gerdes-geometry-from-africa/README.md)

## Primary-source corpora

- [Henry Mayhew — *London Labour and the London Poor*](sources/henry-mayhew/london-labour-and-the-london-poor/README.md) — four-volume public-domain corpus with proofread text, page scans, raw OCR/HOCR/XML derivatives, metadata and audiobook routes.
- [William Morris — *A Dream of John Ball; and, A King's Lesson*](sources/william-morris/a-dream-of-john-ball/README.md) — public-domain full text, local 1888 scan, raw scan OCR, and actual page-image reading views; directly useful upstream of E. P. Thompson's Morris work.

  Read locally: [1888 PDF](sources/william-morris/a-dream-of-john-ball/internet-archive/dreamofjohnballa00morr/dreamofjohnballa00morr.pdf) · [proofread reading text](sources/william-morris/a-dream-of-john-ball/a-dream-of-john-ball-and-a-kings-lesson-gutenberg-reading-copy.txt) · [raw scan OCR](sources/william-morris/a-dream-of-john-ball/internet-archive/dreamofjohnballa00morr/dreamofjohnballa00morr_djvu.txt)

<p align="center">
  <img src="./sources/william-morris/a-dream-of-john-ball/page-images/contents-1.png" width="24%" alt="First contents page from the 1888 scan">
  <img src="./sources/william-morris/a-dream-of-john-ball/page-images/contents-2.png" width="24%" alt="Second contents page from the 1888 scan">
  <img src="./sources/william-morris/a-dream-of-john-ball/page-images/chapter-1-page-1.png" width="24%" alt="First page of Chapter I from the 1888 scan">
  <img src="./sources/william-morris/a-dream-of-john-ball/page-images/chapter-1-page-2.png" width="24%" alt="Second page of Chapter I from the 1888 scan">
</p>
