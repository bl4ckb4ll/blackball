# Reviel Netz citation spider

This file is a recursion ledger. It distinguishes **verified citation edges** from **topical follow-up candidates**.

## Generation 0: Netz works to spider

Priority order:

1. *The Shaping of Deduction in Greek Mathematics* (1999)
2. *The Transformation of Mathematics in the Early Mediterranean World* (2004)
3. *The Works of Archimedes*, vol. 1 (2004)
4. *Barbed Wire: An Ecology of Modernity* (2004)
5. *Ludic Proof* (2009)
6. *The Archimedes Palimpsest*, vols. 1–2 (2011)
7. *The Works of Archimedes*, vol. 2: *On Spirals* (2017)
8. *Scale, Space and Canon in Ancient Literary Culture* (2020)
9. *A New History of Greek Mathematics* (2022)
10. *Why the Ancient Greeks Matter* (2025)

## Generation 1: verified edges already exposed online

### From *The Transformation of Mathematics in the Early Mediterranean World*

Cambridge's online references page exposes the following bibliography entries. These are therefore genuine citation edges from Netz's book, not merely works on similar topics.

- Netz, *Transformation* → W. Arafat and H. J. J. Winter, “The Algebra of Umar Khayyam,” *Journal of the Royal Asiatic Society of Bengal, Science* 16 (1950), 27–78.
- Netz, *Transformation* → Walter Benjamin, “The Work of Art in the Age of Mechanical Reproduction,” in *Illuminations* (English translation, 1968; original publication details supplied in the reference list).
- Netz, *Transformation* → Marshall Clagett, *Archimedes in the Middle Ages*, 5 vols. (1964–84).
- Netz, *Transformation* → Leo Corry, *Modern Algebra and the Rise of Mathematical Structures* (1996).

Verified source:
https://www.cambridge.org/core/books/abs/transformation-of-mathematics-in-the-early-mediterranean-world/references/205638B1534CE74E510D1F7848720321

### Archimedes Palimpsest project bibliography

The project bibliography verifies a dense network around Netz's Palimpsest work. Seed nodes include:

- Netz, Saito, Tchernetska → “A New Reading of Method Proposition 14,” parts 1–2, *SCIAMVS* 2–3 (2001–02).
- Netz, Acerbi, Wilson → “Towards a Reconstruction of Archimedes’ Stomachion,” *SCIAMVS* 5 (2004), 67–99.
- Netz → *The Works of Archimedes*, vol. 1.
- Netz + Noel → *The Archimedes Codex*.
- Netz + Noel + Tchernetska + Wilson, eds. → *The Archimedes Palimpsest*, 2 vols.

The same project bibliography also contains conservation, imaging, manuscript, and historical studies by other contributors. Those should be promoted to this graph only after recording exactly which Netz/Palimpsest source cites or incorporates them.

Project bibliography:
https://archimedespalimpsest.org/links/bibliography.php

## High-value next recursion targets

### 1. *Shaping of Deduction* bibliography

Goal: reconstruct the intellectual ancestry of Netz's account of diagrams, formulaic language, proof structure, and generality.

Important categories to tag when encountered:

- ancient Greek mathematical editions and translations;
- history of Greek mathematics;
- diagrammatic reasoning;
- philosophy/history of scientific practice;
- cognitive history;
- philology, formulaic language, and textual practice.

Do **not** pre-label famous scholars in these fields as citations until the bibliography itself is inspected.

### 2. *Ludic Proof* bibliography

Goal: map the bridge from Hellenistic mathematics to Alexandrian poetry and literary aesthetics.

Cambridge exposes the bibliography as pp. 242–250, making this a compact next spider target:
https://www.cambridge.org/core/books/ludic-proof/bibliography/7865F9CB3ADF27C52D28405C7140B8B3

The introduction explicitly cites Knorr 1986 at p. 161 while discussing Archimedes' *On Spirals*. That edge should be expanded only after identifying the exact Knorr bibliography entry in the book.

### 3. Archimedes scholarly apparatus

Goal: distinguish four layers that are often collapsed in popular accounts:

1. Archimedes' mathematical text;
2. manuscript witnesses and scribal transmission;
3. modern transcription/critical edition;
4. modern mathematical and historical interpretation.

The Palimpsest project should be spidered across philology, conservation, imaging, codicology, and mathematics rather than treated as a single “book discovery.”

### 4. *A New History of Greek Mathematics*

Goal: spider the evidence behind Netz's broad synthesis, especially:

- Near Eastern antecedents;
- the generation of Archytas;
- the generation of Archimedes;
- mathematics in its social world;
- astronomy;
- canonization;
- transmission into early modern science.

### 5. *Barbed Wire*

Goal: reconstruct the sources behind the book's movement from cattle enclosure and settler expansion through military/prison/camp systems. Keep source edges separated from later scholarship merely influenced by or comparable to Netz.

### 6. *Scale, Space and Canon*

Goal: record evidence behind Netz's quantitative claims about ancient audiences, authors, book ownership, textual circulation, and the “bibliosphere.” This is especially useful for Blackball because the book treats the size and circulation of a corpus as a historical object in its own right.

## Generation 2 queue

Once a Generation 1 source has been verified, spider its own bibliography in a separate file or subsection. Initial candidates, because their Generation 1 edge is already verified, are:

- Arafat & Winter (1950) on Khayyam's algebra;
- Clagett, *Archimedes in the Middle Ages*;
- Corry, *Modern Algebra and the Rise of Mathematical Structures*;
- the exact Knorr 1986 work once identified from *Ludic Proof*'s bibliography;
- the SCIAMVS Palimpsest papers' own references.

For every promoted edge, record:

- citing work;
- cited work;
- exact location when available (page/note/bibliography entry);
- whether the source itself was inspected;
- stable URL/DOI/catalog record;
- one-sentence note on why the citing work uses it.
