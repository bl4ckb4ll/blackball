# Mathematicians of the African Diaspora — paper corpus

This directory turns Scott W. Williams's *Mathematicians of the African Diaspora* (MAD) archive into a paper-level Blackball research lane.

The long-term target is deliberately stronger than "collect famous names": for every mathematician Williams profiles, identify the person's mathematical papers, preserve stable bibliographic metadata and source provenance, inspect the mathematics where the paper can actually be read, and write a concise mathematical summary plus an independent reaction. This is not yet complete. The files here are structured so incompleteness stays visible instead of being silently converted into a claim of exhaustive coverage.

## Upstream MAD indexes

- Main archive: https://www.math.buffalo.edu/mad/
- Contemporary profiles: https://www.math.buffalo.edu/mad/PEEPS/madprofiles.html
- Research-mathematicians index: https://www.math.buffalo.edu/mad/ResearchMathematicians.html
- Scott W. Williams profile: https://www.math.buffalo.edu/mad/PEEPS/williams_scottw.html

The archive is a historical web corpus, not a current bibliographic database. Its denominators vary across snapshots and pages: the landing material advertises hundreds of profiles while older profile indexes and alphabetic pages expose different running totals. Do not collapse those into one invented "true" count. Preserve the exact page used and the page's own criterion.

`research-core.tsv` transcribes the 183 names currently visible on MAD's "Research Mathematicians" page, together with the field and publication count stated there. That page says its criterion is a strong research orientation and at least five mathematics papers, but it itself includes two rows showing four papers and one row with no count. Those inconsistencies are preserved.

## Evidence states

A bibliographic row or prose note should make its evidence state explicit.

1. `discovery_only` — the person, field, count, or title is present in a MAD index/profile. This is evidence about what MAD says, not proof that the bibliography is complete or current.
2. `metadata_verified` — title/authors/venue/year/DOI or equivalent have been checked against a publisher, journal, author bibliography, Project Euclid, arXiv, or another primary/canonical publication record.
3. `abstract_read` — an abstract from the paper or publisher record has been read. A mathematical summary at this state must stay within what the abstract supports.
4. `fulltext_read` — the paper itself has been inspected beyond title/abstract. Only this state licenses comments about proofs, internal structure, hypotheses, or techniques that are not stated in the abstract.
5. `current_bibliography_checked` — a current author CV/publication page or comparable author-level source has been reconciled against the historical MAD list. This still does not mean every item has been full-text read.

A "reaction" is analysis, not a sourced fact. It should be clearly separated from the paper's own claims and should say whether it follows an abstract read or full-text read.

## Current files

- `research-core.tsv` — complete transcription of the current MAD research-mathematician index: 183 rows, all initially `discovery_only`.
- `profile-bibliography-status.tsv` — first audit of profile-level bibliography completeness and obvious duplicate/count mismatches.
- `mathematical-readings.md` — initial mathematical summaries and reactions for a first tranche of papers, with the source actually read and evidence state.
- `paper-cull.tsv` — normalized paper rows promoted from six MAD profiles: 124 unique research/published rows after obvious duplicate removal, plus 5 historically transitional Goins items kept in their own publication states. A profile list can be complete relative to that archived page while still being incomplete relative to the mathematician's career.

## Corpus rules

- Do not upload copyrighted journal PDFs merely because they are publicly reachable. Store stable links, bibliographic metadata, and notes; mirror a full text only when repository policy and licensing clearly allow it.
- Keep a MAD-stated paper count separate from a counted bibliography. The archive itself frequently says "selected publications," contains duplicates, or has an old count.
- Keep "submitted", "in preparation", "in press", books, expository chapters, obituaries, and research articles as distinct publication states/types.
- Deduplicate by work, not by title string alone. A proceedings version and a later journal version may be legitimately distinct; an "accepted" line and the eventual identical journal article may not be.
- Do not summarize a paper from a title. If only title metadata is available, record the title and leave the mathematical summary pending.
- For living or recently active mathematicians, the archive's circa-2000s profile is a starting point, not a terminal bibliography. Add post-archive work only after checking a current publication source.

## First-pass coverage

The initial audit deliberately starts with profiles whose MAD pages expose substantial bibliographies and with papers that give a wide mathematical cross-section: probability and decision theory (David Blackwell), symplectic/contact geometry (Augustin Banyaga), optimal transport (Wilfrid Gangbo), number theory (Edray Goins), mathematical oncology (Trachette Jackson), nonstationary queueing (William Massey), nonstandard finite differences (Ronald Mickens), spectral geometry (Katherine Okikiolu), gravitational lensing and singularity theory (Arlie Petters), applied analysis/probability (J. Ernest Wilkins), and set-theoretic topology (Scott W. Williams).

This is a beginning of the requested all-paper corpus, not completion of it. `profile-bibliography-status.tsv` records exactly where the archived page is selected, duplicated, stale, or internally inconsistent so later work can extend it without laundering those gaps away.
