# Mexican Revolution — citation recursion queue

This file is the explicit boundary between **inspected** source edges and work still to be done. It exists so an unfinished spider cannot accidentally masquerade as a complete bibliography.

## Priority 1 — recover Mike Duncan's complete Season 9 bibliography

- [ ] Open the archived Typepad bibliography snapshot:
  <https://web.archive.org/web/20250316093837/https://thehistoryofrome.typepad.com/revolutions_podcast/bibliography.html>
- [ ] Extract the entire **Mexican Revolution** section exactly enough to identify every author/title/edition.
- [ ] Compare against the `r/RevolutionsPodcast` wiki backup and record any rows missing from the wiki.
- [ ] Resolve the currently unidentified **pre-revolutionary Morelos** book remembered by a reader who inspected Duncan's bibliography in 2021.
- [x] Confirm John Womack Jr., *Zapata and the Mexican Revolution*, as a Duncan bibliography item through specific recovery testimony.
- [ ] Directly recover the bibliography row for Friedrich Katz, *The Life and Times of Pancho Villa*.
- [ ] Directly recover the bibliography row for John Reed, *Insurgent Mexico*.

## Priority 2 — spider recovered Duncan books

### Womack

- [x] Confirm the cited edition's bibliographical references are pp. 413–435.
- [x] Record a first directly verified Womack → source generation from the book's web-visible notes in [WOMACK-CITATION-GRAPH.md](WOMACK-CITATION-GRAPH.md).
- [x] Separate the verified first batch into archives/documents, official/contemporary periodicals, participant/near-contemporary accounts, and later scholarship.
- [ ] Directly inspect pp. 413–435 and enumerate **every** bibliography entry; the currently available Internet Archive item is access-restricted, so the visible-note batch is not a substitute for this step.
- [ ] Mark which visible-note sources also occur in the printed bibliography and add bibliography-only rows.
- [ ] Spider Jesús Sotelo Inclán, the Archivo de Jesús Sotelo Inclán, Gildardo Magaña, Antonio Díaz Soto y Gama, Morelos official periodicals, Carreño's Porfirio Díaz archive edition, and Büttner's UNAM thesis another generation.

### Katz

- [x] Confirm *The Life and Times of Pancho Villa* places **Archival Sources** at p. 911, **Bibliography** at p. 919, and **Index** at p. 955.
- [x] Cross-check Katz's research repositories against the University of Chicago Friedrich Katz Papers finding aid and record them in [KATZ-CITATION-GRAPH.md](KATZ-CITATION-GRAPH.md).
- [x] Preserve **Katz research-provenance** edges separately from **printed-book citation** edges; the finding aid itself says the printed appendix/bibliography was used to identify repository provenance only in some cases.
- [x] Identify book-specific archival control points in the finding aid: Box 31 folders 1–4, “Villa book references and footnote sources,” and Box 40 folder 15, “Villa book — bibliographic citations and notes.”
- [ ] Directly inspect the printed archival-source list beginning p. 911 and match each printed abbreviation/name to the repository graph.
- [ ] Upgrade only matched repositories to **VERIFIED PRINTED-BOOK CITATION EDGE**.
- [ ] Directly enumerate every bibliography row on pp. 919–954.
- [ ] Preserve archive → collection/document → Katz edges separately from secondary-book → Katz edges.
- [ ] Split high-degree parents next: AGN; U.S. National Archives/State; Bancroft/Silvestre Terrazas; CONDUMEX/Archivo Carranza; UNAM/Gildardo Magaña; Harvard/John Reed; Maytorena papers; British diplomatic archives.

### Reed

- [ ] Recover original *Metropolitan* dispatch publication details.
- [ ] Recover *New York World* dispatch details where applicable.
- [ ] Distinguish first-hand observations from reported statements and later editorial apparatus.
- [ ] Compare major editions and record which introductions/notes add separate scholarly source trails.

## Priority 3 — Molina Enríquez

- [ ] Extract every explicit named source, law, statistic, authority, and quotation in *Los grandes problemas nacionales* (1909).
- [ ] Build Molina → source edges from the primary text.
- [ ] Spider Luis Cabrera's 1912 agrarian discussion.
- [ ] Spider every chapter bibliography in Emilio Kourí, ed., *En busca de Molina Enríquez* (2009).
- [ ] Trace documented Molina/Cabrera concepts through agrarian legislation and Article 27 debates.
- [ ] Identify which later sources explicitly compare Molina with the científicos and keep those retrospective claims separate from Molina's own wording.

## Priority 4 — Guggenheim / ASARCO and foreign mining capital

- [ ] Recover full bibliographic details of the INEHRM Guggenheim/ASARCO study.
- [ ] Extract the Colmex study bibliography and archival sources.
- [ ] Extract the UNAM mining-investment thesis bibliography.
- [ ] Deduplicate those source lists.
- [ ] Find contemporary quantitative mining statistics for foreign/domestic ownership, capital, output, and smelting capacity by year and mineral.
- [ ] Connect Cananea only with inspectable citation/provenance edges.

## Priority 5 — episode-to-source edges

For each Season 9 episode:

- [ ] inspect surviving episode notes/posts;
- [ ] record explicit named books/authors;
- [ ] map episode → source only when evidence exists;
- [ ] retain topical cross-references separately.

High-priority episodes for this directory:

- 9.04 — The Porfiriato
- 9.07 — Morelos
- 9.13 — The Plan of Ayala
- 9.16 — The Legend of Pancho Villa
- 9.23 — The Constitution of 1917

## Stop condition

Never mark the spider "done" merely because the obvious books are listed. Completion means the current generation has been enumerated, inspectable edges are recorded with their **edge type**, inaccessible nodes are labeled, and the next-generation frontier is explicit.
