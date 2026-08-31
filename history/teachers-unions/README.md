# Teachers’ unions — history source trail

This directory consolidates Blackball’s teachers’-union research into the `history/` corpus and makes the backward citation graph explicit.

## Seed cluster

1. **Kathleen Murphey**, “Gender Barriers to Forming a Teachers’ Union in Boston (1919–1965),” *Historical Journal of Massachusetts* 21, no. 2 (Summer 1993), 60–86.
   - HJM archive: https://www.westfield.ma.edu/historical-journal/article-index-1976-2013/
   - Article PDF: https://www.westfield.ma.edu/historical-journal/wp-content/uploads/2018/06/Murphey-combined.pdf

2. **Karen Leroux**, “‘Lady Teachers’ and the Genteel Roots of Teacher Organization in Gilded Age Cities,” *History of Education Quarterly* 46, no. 2 (Summer 2006), 164–191.
   - DOI: https://doi.org/10.1111/j.1748-5959.2006.tb00065.x
   - Cambridge exposes all 65 endnotes even where article text requires access.

3. **Marjorie Murphy**, *Blackboard Unions: The AFT and the NEA, 1900–1980*.

4. **Wayne J. Urban**, *Why Teachers Organized* (1982), bibliography pp. 195–198.

5. **William Edward Eaton**, *The American Federation of Teachers, 1916–1961: A History of the Movement* (1975).

6. **National Education Association**, institutional history material on the NEA and U.S. labor movement.

## Citation rule

`source A → work B` means **A actually cites B**.

A later bibliography that happens to list both works is not an edge. A catalog statement that a source “includes bibliography” locates the next evidence but does not reveal its entries. Archival correspondence, minutes, tax lists, petitions, and questionnaires are normally terminal evidence nodes unless they themselves cite something worth following.

## Citation spiders

### Seed sources

- [`KAREN-LEROUX-2006-CITATION-SPIDER.md`](KAREN-LEROUX-2006-CITATION-SPIDER.md) — **65/65** Leroux endnotes.
- [`KATHLEEN-MURPHEY-1993-CITATION-SPIDER.md`](KATHLEEN-MURPHEY-1993-CITATION-SPIDER.md) — Murphey notes 1–21 recovered from the HJM scan; later notes remain on the frontier.

### Leroux → Tyack

- [`DAVID-TYACK-1976-CITATION-SPIDER.md`](DAVID-TYACK-1976-CITATION-SPIDER.md) — Tyack notes 1–17 and 36–52.
- [`TYACK-1976-NOTES-18-35.md`](TYACK-1976-NOTES-18-35.md) — recovered middle block; together the Tyack apparatus is **52/52**.

This branch exposes administrative centralization, NEA/AASA professional institutions, women in administration, equal-pay politics, teacher careers, teacher freedom, and occupational sociology.

### Leroux → Sklar

- [`KATHRYN-KISH-SKLAR-1993-CITATION-SPIDER.md`](KATHRYN-KISH-SKLAR-1993-CITATION-SPIDER.md) — **55/55** notes from “The Schooling of Girls and Changing Community Values in Massachusetts Towns, 1750–1820.”

This branch reaches into the long pre-union history of girls’ schooling, female literacy, women teachers, school finance, household economy, religion, and the feminization of teaching.

### Leroux → Sklar → Scott

- [`ANNE-FIROR-SCOTT-1979-CITATION-SPIDER.md`](ANNE-FIROR-SCOTT-1979-CITATION-SPIDER.md) — **39/39** notes from “The Ever Widening Circle: The Diffusion of Feminist Values from the Troy Female Seminary, 1822–1872.”

This fourth generation reaches Emma Willard’s writings, Troy Female Seminary alumnae records, early teacher-improvement associations, Henry Barnard and the common-school press, Almira Lincoln Phelps, and the institutional roots of women’s teacher education and paid self-support.

## Located but not yet fully spidered

- [`WAYNE-URBAN-1982-SOURCE-NODE.md`](WAYNE-URBAN-1982-SOURCE-NODE.md) — bibliography location verified; entries unseen.
- [`MARJORIE-MURPHY-BLACKBOARD-UNIONS-SOURCE-NODE.md`](MARJORIE-MURPHY-BLACKBOARD-UNIONS-SOURCE-NODE.md) — bibliography/index existence and chapter structure verified; full citation apparatus unseen.

## Navigation

- [`SECOND-GENERATION.md`](SECOND-GENERATION.md) — recursive map and major branches.
- [`BIBLIOGRAPHY.md`](BIBLIOGRAPHY.md) — de-duplicated bibliography accumulated in the first pass.
- [`RECURSION-QUEUE.md`](RECURSION-QUEUE.md) — current explicit stopping frontier and next targets.

## External coverage check, not a citation edge

The Labor and Working-Class History Association maintains useful teacher/public-sector union bibliographies. They are used to check coverage, never to fabricate backward edges:

- https://lawcha.org/century-teaching-organizing/bibliography-annotated-list-sources/
- https://lawcha.org/century-teaching-organizing/bibliography-annotated-list-sources/comprehensive-bibliography/

## Historical center of gravity

The source graph keeps returning to the same structural fact: teachers were never a single undifferentiated labor force. Gender, grade level, race, professional status, subject, school type, administrative hierarchy, and political affiliation shaped working conditions and organizational loyalties. The deeper citation trail shows that twentieth-century teacher unionism sits downstream from nineteenth-century professionalization and from an even older transformation in women’s literacy, schooling, paid teaching, and institutional organization.
