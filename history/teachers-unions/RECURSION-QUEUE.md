# Teachers’ unions — recursion frontier

This file is the honest stopping boundary of the citation spider. A row means the source is already a **verified descendant** of an inspected parent, but its own citation apparatus is not yet completely represented.

## Current extraction coverage

| Source | Current coverage | Missing next step |
|---|---|---|
| Karen Leroux (2006) | all 65 numbered endnotes represented | recurse child-by-child |
| Kathleen Murphey (1993) | notes 1–21 represented from HJM page images | inspect remaining article pages/notes |
| David B. Tyack (1976), reached from Leroux n.44 | notes 1–17 and 36–52 represented (34 of 52 note numbers) | recover notes 18–35 |
| Wayne J. Urban, *Why Teachers Organized* | catalog + exact bibliography location (pp. 195–198) | inspect/transcribe bibliography |
| Marjorie Murphy, *Blackboard Unions* | catalog, chapter structure, bibliography/index existence | inspect chapter notes / bibliographical references |

## Priority A — complete partially inspected parent sources

### Kathleen Murphey — later notes

**Need:** page-image inspection for the remainder of “Gender Barriers to Forming a Teachers’ Union in Boston (1919–1965),” after the currently extracted note 21.

**Why first:** this is one of the two seed sources, so unfinished direct citations contaminate every later completeness claim.

**Do not substitute:** LAWCHA, later Boston-union histories, or search snippets for Murphey’s actual notes.

### David B. Tyack — notes 18–35

**Need:** the missing central block of the Cambridge reference panel.

**Known total:** the Cambridge article reaches note 52; 34 note numbers are currently represented and notes 18–35 are the defined gap.

## Priority B — shared / central teacher-union histories

### Marjorie Murphy — *Blackboard Unions*

**Parents:** Leroux n.65; Murphey nn.1, 4.

**Need:** complete chapter-note extraction from a lawful Cornell/ACLS or library copy. Preserve chapter/note coordinate for every edge.

**Likely value:** one of the principal trunks for AFT/NEA institutional history, Chicago, early locals, interwar politics, McCarthyism, civil rights, collective bargaining, and Ocean Hill–Brownsville.

### Wayne J. Urban — *Why Teachers Organized*

**Parent:** Leroux nn.3, 21.

**Need:** bibliography pp. 195–198 from an inspectable copy.

**Known record:** 202 pages, bibliography pp. 195–198, index, controlled-borrow IA/Open Library item `whyteachersorgan0000urba`.

### William Edward Eaton — *The American Federation of Teachers, 1916–1961*

**Seed-cluster status:** foundational AFT history already identified in the Blackball teachers’-union research cluster.

**Need:** verify the exact citation edge from an inspected parent before treating it as a graph descendant, then inspect Eaton’s notes/bibliography. It remains in the cluster index but should not be given a false edge merely because later bibliographies pair it with Murphy/Urban.

## Priority C — direct descendants central to teacher organization

Create one source node for each after obtaining its reference apparatus:

- Marjorie Murphy — “From Artisan to Semi-Professional” dissertation.
- Patricia A. Carter — *Everybody’s Paid But the Teacher*.
- Donald Warren, ed. — *American Teachers*.
- Richard J. Altenbaugh, ed. — *The Teacher’s Voice*.
- Jurgen Herbst — *And Sadly Teach*.
- Stephen Cole — *The Unionization of Teachers*.
- Ronald G. Corwin — *Militant Professionalism*.
- James Earl Clarke — AFT dissertation through 1952.
- Grace C. Strachan — *Equal Pay for Equal Work*.
- Margaret A. Haley / Robert L. Reid — *Battleground*.
- Edgar B. Wesley — *NEA: The First Hundred Years*.

## Priority D — administrative/professionalization branch exposed through Tyack

These are true third-generation candidates from the inspected Tyack notes:

- Raymond E. Callahan — *Education and the Cult of Efficiency*.
- Raymond E. Callahan — *The Superintendent of Schools: An Historical Analysis*.
- Paul H. Mattingly — *The Classless Profession*.
- Larry Cuban — “School Chiefs under Fire.”
- Merle Curti — *The Social Ideas of American Educators*.
- Jesse Newlon — *Educational Administration as Social Policy*.
- NEA Department of Superintendence — *Educational Leadership*, *The Status of the Superintendent*, and relevant proceedings.
- American Association of School Administrators — *The American School Superintendency* and *Standards for Superintendents of Schools*.
- Suzanne Estler — “Women as Leaders in Public Education.”
- Robert L. Reid — Chicago teacher-professionalization dissertation.
- Ellwood P. Cubberley — “Public School Administration.”
- Joel H. Spring — *Education and the Rise of the Corporate State*.

## Priority E — Boston / Chicago / St. Paul institutional branches

### Boston

- Boston Lady Teachers’ Association records, Massachusetts Historical Society.
- Boston Primary Teachers Association records.
- Boston Teachers Union Local 66 / Greater Boston Federation of Teachers records, Reuther Library.
- Boston Federation of Men Teachers / AFT Local 100 material.
- Boston School Committee proceedings, petitions, reports, and salary schedules.
- Boston Trade Union College / Boston Labor College material.

### Chicago

- Chicago Teachers’ Federation papers.
- Ella Flagg Young material.
- David Hogan, *Class and Reform*.
- Margaret A. Haley / *Battleground*.

### St. Paul / Minnesota

- St. Paul Federation of Teachers Collection.
- Minnesota Federation of Women’s Clubs records.
- Political Equality Club of Minneapolis records.

Archival collections are usually **terminal evidence nodes** unless a finding aid or document itself cites another source. Do not force a bibliography where the object is correspondence, minutes, proceedings, or a petition.

## Recursion rule

For each inspectable child:

1. create a source-node file;
2. record every direct citation/reference entry;
3. preserve note/page/chapter coordinates;
4. normalize author/title/year only after authoritative verification;
5. distinguish archival primary evidence from secondary scholarship;
6. create next-generation children for every actual cited work whose citations can be inspected;
7. leave inaccessible children in this queue with a reason;
8. never treat a later topical bibliography as if it were the parent’s own bibliography;
9. deduplicate nodes, **not edges** — if five parents cite the same work, preserve five edges to one normalized source node.

## Completeness definition

A source can be marked **citation-complete for this edition** only when its entire notes/reference apparatus has been inspected. A source with a cataloged but unseen bibliography is **located, not spidered**.

The graph as a whole is intentionally open-ended; the meaningful stopping point is a fully explicit frontier, not a claim that scholarship terminates after an arbitrary number of generations.
