# Teachers’ unions — recursion frontier

This file records the honest stopping boundary of the citation spider. A source is **citation-complete** only when its whole notes/reference apparatus has actually been inspected. “Bibliography located” is not the same thing.

## Current extraction coverage

| Source | Parent edge | Current coverage | Next step |
|---|---|---|---|
| Karen Leroux (2006) | seed | **65/65 endnotes** | recurse remaining children |
| Kathleen Murphey (1993) | seed | notes **1–21** from HJM page images | inspect remaining article notes |
| David B. Tyack (1976) | Leroux n.44 | **52/52 numbered notes** | recurse teacher-relevant children |
| Kathryn Kish Sklar (1993) | Leroux n.16 | **55/55 numbered notes** | recurse selected children |
| Anne Firor Scott (1979) | Sklar n.6 | **39/39 numbered notes** | recurse public-domain/inspectable children |
| Wayne J. Urban, *Why Teachers Organized* | Leroux nn.3, 21 | bibliography located at pp. 195–198 | inspect/transcribe bibliography |
| Marjorie Murphy, *Blackboard Unions* | Leroux n.65; Murphey nn.1, 4 | bibliographical references confirmed | inspect chapter notes/references |

## Completed in pass 2

### Tyack notes 18–35

The apparent middle gap was a Cambridge display/retrieval problem, not a missing citation block. Notes 18–35 are now recorded in [`TYACK-1976-NOTES-18-35.md`](TYACK-1976-NOTES-18-35.md). Together with the previously extracted notes 1–17 and 36–52, Tyack is now **52/52**.

The newly exposed teacher-history descendants include:

- Willard Waller — *The Sociology of Teaching*;
- Harmon Zeigler — *The Political Life of American Teachers*;
- Howard S. Becker — “The Career of the Chicago Public Schoolteacher”;
- Howard K. Beale — *Are American Teachers Free?*;
- W. W. Charters Jr. — “The Social Background of Teaching”;
- Richard O. Carlson — organizational/environmental studies of schools and superintendents;
- primary and professional material in NEA/AASA publications.

### Leroux → Sklar

Leroux note 16 directly cites Kathryn Kish Sklar, “The Schooling of Girls and Changing Community Values in Massachusetts Towns, 1750–1820.” Cambridge exposes all **55 notes**, now recorded in [`KATHRYN-KISH-SKLAR-1993-CITATION-SPIDER.md`](KATHRYN-KISH-SKLAR-1993-CITATION-SPIDER.md).

This branch reaches backward into:

- female literacy and primary schooling;
- early use and lower pay of women teachers;
- town school finance and tax records;
- women’s secondary education;
- religious change and women’s spiritual authority;
- household economy and rural industrialization;
- the feminization of teaching.

### Sklar → Scott

Sklar note 6 cites Anne Firor Scott, “The Ever Widening Circle: The Diffusion of Feminist Values from the Troy Female Seminary, 1822–1872.” Cambridge exposes all **39 notes**, now recorded in [`ANNE-FIROR-SCOTT-1979-CITATION-SPIDER.md`](ANNE-FIROR-SCOTT-1979-CITATION-SPIDER.md).

Scott produces a fourth-generation trail into:

- Emma Willard’s writings;
- Troy Female Seminary alumnae questionnaires and correspondence;
- early teacher-improvement associations;
- Henry Barnard and common-school journals;
- Almira Lincoln Phelps and women’s preparation for self-support;
- women’s higher education and teacher education;
- historiography of feminism, separate spheres, and professionalization.

## Priority A — finish the remaining seed

### Kathleen Murphey — notes after 21

**Need:** inspect the later page images of “Gender Barriers to Forming a Teachers’ Union in Boston (1919–1965).”

The Historical Journal of Massachusetts scan is the source of record. Later bibliographies, Google Books snippets, and retrospective histories must not be substituted for Murphey’s own notes.

## Priority B — central union histories with located but unseen bibliographies

### Marjorie Murphy — *Blackboard Unions*

**Parents:** Leroux n.65; Murphey nn.1, 4.

**Need:** complete Cornell/ACLS or library note extraction, preserving chapter/note coordinates.

### Wayne J. Urban — *Why Teachers Organized*

**Parents:** Leroux nn.3, 21.

**Known:** bibliography pp. 195–198; controlled-borrow IA/Open Library item `whyteachersorgan0000urba`.

**Need:** inspect those four bibliography pages and create one edge per actual entry.

## Priority C — best new descendants from Tyack

- **Willard Waller**, *The Sociology of Teaching* — bibliographies are known to exist; inspect before creating children.
- **Harmon Zeigler**, *The Political Life of American Teachers*.
- **Howard S. Becker**, “The Career of the Chicago Public Schoolteacher” — journal record located, reference list not yet exposed.
- **Howard K. Beale**, *Are American Teachers Free?*
- **Grace C. Strachan**, *Equal Pay for Equal Work* — public-domain primary source; inspect its own source apparatus if any.
- **Robert L. Reid**, Chicago teacher-professionalization dissertation.
- **Raymond E. Callahan**, *Education and the Cult of Efficiency*.
- **Paul H. Mattingly**, *The Classless Profession*.
- NEA Department of Superintendence and AASA yearbooks/reports.

## Priority D — best descendants from Sklar

- Carl F. Kaestle and Maris A. Vinovskis — “From Apron Strings to ABCs.”
- E. Jennifer Monaghan — literacy/gender studies.
- Joel Perlmann and Dennis Shirley — “When Did New England Women Acquire Literacy?”
- Nancy F. Cott — *The Bonds of Womanhood*.
- Linda K. Kerber — *Women of the Republic*.
- Stanley K. Schultz — *The Culture Factory*.
- Joan M. Jensen — *Loosening the Bonds*.
- primary Sutton/Northampton school, tax, church, and teacher records.

## Priority E — best descendants from Scott

Prefer public-domain or fully inspectable primary material first:

- Emma Willard — *The Advancement of Female Education* and 1819 legislative address;
- A. W. Fairbanks, ed. — *Mrs. Emma Willard and Her Pupils* (1898);
- Almira Lincoln Phelps — *The Female Student* (1836);
- *The Annals of American Education*;
- *The Massachusetts Common School Journal*;
- Henry Barnard’s *American Journal of Education*;
- Willard Association for the Mutual Improvement of Teachers material.

Secondary descendants include Merle Borrowman, Linda Kerber, Karen Blair, Keith Melder, Nancy Cott, Ellen DuBois, and Alice Rossi.

## Archival terminal nodes

The graph should not force bibliographies onto correspondence, minutes, petitions, tax lists, or questionnaires. These are usually evidence terminals unless the document itself contains a meaningful source trail. Major archival clusters currently include:

- Boston Lady Teachers’ Association;
- Boston Teachers Union Local 66 / Greater Boston Federation of Teachers;
- Chicago Teachers’ Federation;
- St. Paul Federation of Teachers;
- Emma Willard School archives;
- Northampton and Sutton town/school records;
- Massachusetts Historical Society and American Antiquarian Society holdings.

## Recursion rule

For each inspectable child:

1. create a source-node or citation-spider file;
2. record every direct citation/reference entry;
3. preserve note/page/chapter coordinates where available;
4. normalize bibliographic details only after verification;
5. distinguish primary evidence from later scholarship;
6. follow actual citations, not topical similarity;
7. leave inaccessible children here with the exact reason;
8. deduplicate source nodes, **not edges** — five parents citing the same work means five preserved edges to one normalized node.

The graph is intentionally open-ended. The stopping condition is an explicit frontier, not an arbitrary number of generations.
