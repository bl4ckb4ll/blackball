# Teachers’ unions — history source trail

This directory consolidates Blackball’s teachers’-union research into the `history/` corpus and makes the citation graph explicit.

## Repository provenance

At the branch point used for this pass (`main` at `a75f0282`), the repository did **not** contain a path whose filename included `teacher`, `teachers`, or `union`. The earlier Blackball research thread nevertheless had a recognizable seed cluster. Rather than inventing a move from a nonexistent path, this directory consolidates that material here and records the source trail.

## Seed cluster

1. **Kathleen Murphey**, “Gender Barriers to Forming a Teachers’ Union in Boston (1919–1965),” *Historical Journal of Massachusetts* 21, no. 2 (Summer 1993), 60–86.
   - HJM archive index: https://www.westfield.ma.edu/historical-journal/article-index-1976-2013/
   - Article PDF: https://www.westfield.ma.edu/historical-journal/wp-content/uploads/2018/06/Murphey-combined.pdf
   - HJM says its article archive is freely available and may be reproduced/distributed for educational or community use with attribution. The PDF itself asks that the journal be contacted for further use, so Blackball links to it rather than mirroring it in this pass.

2. **Karen Leroux**, “‘Lady Teachers’ and the Genteel Roots of Teacher Organization in Gilded Age Cities,” *History of Education Quarterly* 46, no. 2 (Summer 2006), 164–191.
   - DOI: https://doi.org/10.1111/j.1748-5959.2006.tb00065.x
   - Cambridge record and all 65 endnotes: https://www.cambridge.org/core/journals/history-of-education-quarterly/article/abs/lady-teachers-and-the-genteel-roots-of-teacher-organization-in-gilded-age-cities/F43A45B9FA91787BF36E4058BCA91DD1
   - The article text is access-controlled, but Cambridge exposes the complete reference/endnote apparatus. Blackball records the citation data, not the copyrighted article text.

3. **Marjorie Murphy**, *Blackboard Unions: The AFT and the NEA, 1900–1980* (Cornell University Press, copyright 1990; Cornell paperback/electronic records often dated 1992).
   - Catalog record: https://catalog.folger.edu/record/268548
   - The record identifies 284 pages and bibliographical references plus an index.

4. **Wayne J. Urban**, *Why Teachers Organized* (Wayne State University Press, 1982).
   - Open Library: https://openlibrary.org/books/OL3491359M
   - 202 pages; bibliography on pp. 195–198; Internet Archive item identifier `whyteachersorgan0000urba`.

5. **William Edward Eaton**, *The American Federation of Teachers, 1916–1961: A History of the Movement* (Southern Illinois University Press, 1975).

6. **National Education Association**, historical material on the NEA and the U.S. labor movement.
   - https://www.nea.org/nea-today/all-news-articles/nea-and-labor-movement

## How the spider is represented

The rule is an explicit directed graph:

`source A → work B` means **A actually cites B**.

A topical bibliography or later source that merely discusses A is kept separate from that edge. This avoids quietly turning “related reading” into a false citation claim.

Files in this directory use generations:

- `KAREN-LEROUX-2006-CITATION-SPIDER.md` — generation 0 source plus every one of its 65 numbered endnotes, normalized into source nodes.
- `KATHLEEN-MURPHEY-1993-CITATION-SPIDER.md` — generation 0 source plus the direct references recovered from the HJM scan in this pass.
- `SECOND-GENERATION.md` — sources reached from those two articles, with their own bibliography/reference status and verified next-hop sources where inspection is possible.
- `RECURSION-QUEUE.md` — unresolved descendants and the exact reason they are not yet claimed as completely spidered.
- `BIBLIOGRAPHY.md` — de-duplicated bibliography for the cluster, including archival collections.

## External cross-check, not a citation edge

The Labor and Working-Class History Association (LAWCHA) maintains both an annotated and a comprehensive bibliography on teacher/public-sector unionism. It is useful for checking coverage, but it is **not** represented as though Murphey or Leroux cited a later website.

- https://lawcha.org/century-teaching-organizing/bibliography-annotated-list-sources/
- https://lawcha.org/century-teaching-organizing/bibliography-annotated-list-sources/comprehensive-bibliography/

## Historical center of gravity

The sources converge on a recurring problem: teachers were not a single undifferentiated labor force. Gender, grade level, race, professional status, subject, school type, and political affiliation structured both working conditions and organizational loyalties. Boston’s slow route to one citywide AFT local is therefore treated here as a history of competing identities and institutions, not as a simple chronology of “union versus nonunion.”
