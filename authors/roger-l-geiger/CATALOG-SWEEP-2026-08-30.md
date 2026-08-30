# Roger L. Geiger — catalog sweep, 2026-08-30

This is the deliberately messy discovery layer behind the cleaner book notes and `internet-archive.tsv`.

## Bottom line

The first title-by-title pass found **seven exact Internet Archive / Open Library item records for Geiger-authored or Geiger-edited books**. Those exact identifiers are in [`internet-archive.tsv`](internet-archive.tsv).

Every exact scanned/preview copy verified there is controlled, `printdisabled`, access-restricted, or preview-only. **No Geiger full-text scan found in this pass has affirmative redistribution rights, so none has been copied into `texts/`.**

A separate Internet Archive item also contains a Geiger contribution:

- *A New Deal for the Humanities: Liberal Arts and the Future of Public Higher Education* (2016), IA identifier `newdealforhumani0000unse`. The IA table of contents includes a contribution by Roger L. Geiger. The item is `printdisabled`; it is provenance, not a hostable Geiger book.

## Open Library's Geiger author bucket is useful but dirty

Open Library author record:

- https://openlibrary.org/authors/OL8119491A/Roger_L._Geiger

On 2026-08-30 it reported **21 works**. It must **not** be ingested blindly. It includes obvious false author joins, including:

- *Philadelphia Gentlemen: The Making of a National Upper Class* — E. Digby Baltzell's 1958 book, incorrectly joined to Roger L. Geiger.
- *Ideas for the Ice Age: Studies in a Revolutionary Era* — Max Lerner's 1941 book, also incorrectly joined to Roger L. Geiger.

Geiger was born in 1943; these records cannot be his books. Blackball therefore treats Open Library as discovery/catalog evidence, not an author-identity oracle.

## Real Geiger works visible in Open Library but without a borrow/preview copy in this sweep

These are useful because they enlarge the title/edition search space even when they do not expose a usable Internet Archive scan.

| Work | Open Library work ID | Catalog observation |
| --- | --- | --- |
| *Perspectives on the History of Higher Education*, vol. 25 (2006) | `OL21344643W` | 15 editions shown; no preview/borrow availability surfaced |
| *History of Higher Education Annual: 2000* | `OL25779187W` | 8 editions shown; no preview/borrow availability surfaced |
| *Land-Grant Colleges and the Reshaping of American Higher Education* | `OL21357199W` | 6 editions shown; no preview surfaced |
| *American Higher Education in the Postwar Era, 1945–1970* | `OL21310005W` | 6 editions shown; no preview surfaced |
| *Iconic Leaders in Higher Education* | `OL21335595W` | 5 editions shown; no preview surfaced |
| *Curriculum, Accreditation and Coming of Age of Higher Education* | `OL21330497W` | 5 editions shown; no preview surfaced |
| *Shaping the American Faculty* | `OL21331010W` | 5 editions shown; no preview surfaced |
| *History of Higher Education Annual: 1998 — The Land-Grant Act and American Higher Education* | `OL25783329W` | 4 editions shown; no preview surfaced |
| *American Higher Education since World War II: A History* | `OL21202380W` | 3 editions shown; no preview surfaced |
| *The History of American Higher Education* | `OL21560114W` | 3 editions shown in this OL work; a separate exact controlled IA scan is already in the TSV |
| *Science as Service: Establishing and Reformulating American Land-Grant Universities, 1865–1930* | `OL21286996W` | 2 editions shown; Geiger is one of several authors; no preview surfaced |
| *History of Higher Education Annual, 2003–2004* | `OL21353037W` | 2 editions shown; no preview surfaced |
| *Future of the American Public Research University* | `OL27824442W` | 1 edition shown; Geiger is one of several authors; no preview surfaced |
| *Perspectives on the History of Higher Education: 2007* | `OL25363744W` | 1 edition shown in this work record; an exact controlled IA copy of vol. 26 is already in the TSV |
| *Higher Education for African Americans Before the Civil Rights Era, 1900–1964* | `OL25365207W` | 1 edition shown; a preview-only IA identifier is already in the TSV |
| Turkish translation of *Research and Relevant Knowledge* | catalogued as *Araştırma ve Bağlantılı Bilgi* | no preview surfaced; useful alternate-edition search lead |

Open Library also exposes the already-known *To Advance Knowledge* and *Research and Relevant Knowledge* works. Exact controlled IA scans for those are already in the TSV.

## Books independently verified outside the dirty author bucket

The Open Library author page is not a complete bibliography either. Independent publisher/catalog searches are why this repository already includes titles such as:

- *Private Sectors in Higher Education* — exact controlled IA scan found;
- *Knowledge and Money* — exact controlled IA scan found;
- *Tapping the Riches of Science* with Creso M. Sá — book verified, but no exact IA item verified in this sweep;
- *The American College in the Nineteenth Century* — edited by Geiger; publisher record and contributors verified, but no exact IA item verified in this sweep.

## The Annual / Perspectives problem

Geiger edited *History of Higher Education Annual* and its successor *Perspectives on the History of Higher Education* for a long run. Catalogs split, merge, retitle, and reissue these volumes inconsistently. Open Library in particular groups multiple volume years under single works and later Taylor & Francis reissues.

Therefore the series needs a **volume-by-volume ISBN search**, not an author-page scrape. For each volume Blackball should record:

1. original volume/year and title;
2. original publisher/ISBN;
3. later reissue ISBNs;
4. exact IA identifier, if any;
5. IA access flags;
6. table of contents and every contributor;
7. reviews;
8. acknowledgments and citation-author gratitude where publicly inspectable.

## Search rule

Use this evidence order:

1. **exact Internet Archive item identifier** and its metadata/access flags;
2. Open Library edition/work record tied to an exact edition;
3. publisher/library catalog record;
4. review/bibliographic secondary source;
5. discovery-only search result.

Never promote a discovery hit into “Roger Geiger's book” without checking authorship, and never promote `lcpdf`, `printdisabled`, or “Preview” into permission to redistribute.
