# Textbook provenance pilot

On 25 November 2026 we inspected two classroom classifications and a numerical attribution in a VLSI textbook. The geography example has a dated earlier use. The engineering example has an explicit citation that can be checked against the original paper. The sociology example names a scholar but leaves a narrower attribution unresolved. The [Sun assignment](SUN.md) starts with these cases. The [claim records](claims.tsv) record the separate links from each claim to its evidence. The [source register](sources.tsv) gives page locators, access details and the hashes of the original files we obtained.

## What a reader can establish

**Who chose the three economic systems?** On printed p. 89 of *Glencoe World Geography*, tradition, market and command describe ways to decide what gets produced, how and for whom. The same page describes mixed economies. The chapter recap on p. 97 repeats the three labels. Read the page in columns. The market-economy explanation at lower left continues at upper right. The rendered page resolves the order. The chapter does not identify an inventor of this classification on p. 89. Its edition and school grade remain unverified. The publisher's online companion is a separately recorded document. [Student p. 89](https://www.acedwardslobos86.com/files/chap04.pdf#page=16) · [Recap p. 97](https://www.acedwardslobos86.com/files/chap04.pdf#page=24) · [Publisher overview](https://glencoe.mheducation.com/sites/0178606993/student_view0/unit1/chapter4/chapter_overviews.html)

A 1964 ninth-grade reader from Carnegie Institute of Technology and Pittsburgh Public Schools uses the same three categories on printed p. 7. It explicitly treats the scheme as approximate and says most societies mix the three. A September 1975 Texas Education Agency guide uses the same framework and calls all societies mixed. Its resource column names *Economics: Principles and Practices*, pp. 28–29. That is a precise title-and-page lead for Sun to identify by edition. We have evidence of classroom use by 1964. How the later Glencoe authors chose the scheme remains open. [1964 reader, PDF p. 19](https://files.eric.ed.gov/fulltext/ED010316.pdf#page=19) · [1975 guide, PDF p. 70, printed p. 63](https://files.eric.ed.gov/fulltext/ED132077.pdf#page=70)

**Did Lenski propose exactly three kinds of society?** OpenStax credits Gerhard Lenski with organizing societies by their technology. It then describes a spectrum from preindustrial through industrial to postindustrial as common among sociologists. The references listed for §4.1 contain no Lenski work. Where did Lenski make the narrower three-part distinction, if he did? What evidence establishes how widely sociologists use it? A source for his technological approach could answer only part of the question. [§4.1](https://openstax.org/books/introduction-sociology-3e/pages/4-1-types-of-societies) · [Chapter references](https://openstax.org/books/introduction-sociology-3e/pages/4-references)

**What exactly did Moore count?** Weste and Harris's *CMOS VLSI Design*, 4th ed., p. 3, associates 18-month transistor doubling with Moore's 1965 observation. The authors' bibliography identifies the paper. On PDF p. 2 Moore reports roughly annual doubling of the number of components per integrated circuit at the point of minimum cost per component. Both the interval and the counted object change. The textbook paragraph also reports 26 months for a series of Intel microprocessors. Keep that as a separate observation with its own population. On p. 6 the authors recount an unnamed early-1990s expert consensus, then give their own forecast dated 2009. That page tests whether a reader can distinguish the authors' prediction from the views they attribute to others. [Textbook p. 3](https://pages.hmc.edu/harris/cmosvlsi/4e/cmosvlsidesign_4e_ch1.pdf#page=3) · [References, Moore65](https://pages.hmc.edu/harris/cmosvlsi/4e/bib4e.html) · [Moore's paper, PDF p. 2](https://download.intel.com/sites/channel/museum/Moores_Law/Articles-Press_Releases/Gordon_Moore_1965_Article.pdf#page=2) · [Textbook p. 6](https://pages.hmc.edu/harris/cmosvlsi/4e/cmosvlsidesign_4e_ch1.pdf#page=6)

**What can an author's recollection establish?** At the 50th International Solid-State Circuits Conference, Moore credited his colleague Dave House with the 18-month formulation for *processor performance*. The transcript establishes what Moore said about House. A dated statement by House or contemporary record would strengthen the historical attribution. At a separate 2007 panel, Moore recalled the original annual rate and the later revision. The professor story that motivated this study still lacks an identified textbook or page. [ISSCC transcript](https://static1.squarespace.com/static/6130ef779c7a2574bd4b8888/t/6148c56c5c041a37fce0867c/1632159085041/60th%2BGordon%2BMoore%2BTranscript.pdf) · [Conference archive](https://www.isscc.org/isscc-history) · [Computer History Museum, PDF p. 15](https://archive.computerhistory.org/resources/access/text/2012/04/102658284-05-01-acc.pdf#page=15)

## Available text

For PDFs we counted whitespace-separated fields in Poppler 25.03.0 layout text. Counts include headings, numbers and figure labels. A page that yields text still needs a reading-order check. The units below describe coverage of each particular source. Publisher-wide coverage remains unknown.

| Material | Extraction result | Pages or passages checked for this pilot |
|---|---|---|
| Glencoe publisher overview | Four topical paragraphs, 391 fields with subsection headings. The political and economic systems paragraph has 128. | All four paragraphs were indexed. The printed chapter's p. 89 was checked separately against its page image and the recap was located on p. 97. Direct retrieval of the chapter PDF returned HTTP 465, so its raw byte hash remains unknown. |
| Weste and Harris, ch. 1 | 60 PDF pages, 59 with text, 23,101 fields. PDF p. 60 is blank. | Pp. 3 and 6 supplied the claims. P. 57 was inspected after a search ranked an exercise first. |
| Moore's 1965 paper | 4 of 4 PDF pages with text, 2,150 fields. | PDF p. 2, paragraph above the cost graph. |
| Texas curriculum guide | 87 of 87 PDF pages with text, 20,311 fields. The text layer contains OCR errors. | PDF p. 70. The two columns, textbook page ranges and printed p. 63 were checked against the scan. |
| Dearborn classroom packet | All 17 PDF pages yielded zero embedded text. OCR returned 1,099 fields in all, including 160 on PDF p. 2. | PDF p. 2 visibly credits Glencoe/McGraw-Hill and shows a five-theme diagram. The other sheets need their own attribution. OCR used PyMuPDF 1.26.6 grayscale at 150 dpi and Tesseract 5.5.0, English, page-segmentation mode 3. [Classroom sheet](https://iblog.dearbornschools.org/donelsg/wp-content/uploads/sites/257/2019/01/5-themes-Location-notes.pdf#page=2) |

## What the search retrieved

We indexed one passage per nonempty PDF page for the Weste/Harris chapter, Moore paper and Texas guide, plus four Glencoe overview paragraphs. Scikit-learn 1.8.0 built a sparse word-frequency vector for each of the 154 passages, with inverse-document-frequency weighting and cosine similarity. The vocabulary contained 7,632 terms. These five questions were chosen after inspecting the sources. They demonstrate the behavior of the search. A held-out evaluation belongs to Sun.

| Query as run | First result | Rank of the page we wanted |
|---|---|---|
| transistor count doubling every 18 months | VLSI p. 57, an exercise | VLSI p. 3 ranked 2 |
| minimum component costs factor of two per year | Moore PDF p. 2 | 1 |
| tradition command market mixed economies | Texas PDF p. 70 | 1 |
| what was affordable to put on one piece of silicon | VLSI p. 6 | Moore PDF p. 2 ranked 11 |
| who invented the three economic systems | Texas PDF p. 50 | Origin unresolved. A ranking cannot identify an inventor. |

Can a dense model bring Moore's cost discussion into the first five for the everyday-language query, ahead of general passages about silicon? We ran the sparse method. Dense retrieval remains untested.

### Reproducing the search

The cell below is the scikit-learn reference calculation. It reads the four original inputs named by `cache_filename` in [sources.tsv](sources.tsv) and verifies their hashes. Save those four originals into one directory. Run the cell as a Python file, passing the absolute paths to that directory and the TSV as its two arguments. It uses Poppler 25.03.0, lxml 6.1.1 and scikit-learn 1.8.0. It prints ranks and passage identifiers. Source documents and page text stay local.

```python
from pathlib import Path
from hashlib import sha256
import csv
import subprocess
import sys

from lxml import html
from sklearn.feature_extraction.text import TfidfVectorizer

cache, register = map(Path, sys.argv[1:])
with register.open(encoding="utf-8", newline="") as source_file:
    sources = {row["source_id"]: row for row in csv.DictReader(source_file, delimiter="\t")}

def checked_file(source_id):
    row = sources[source_id]
    path = cache / row["cache_filename"]
    if sha256(path.read_bytes()).hexdigest() != row["sha256"]:
        raise ValueError(f"Source bytes changed: {source_id}")
    return path

headings = (
    "World Population",
    "Global Cultures",
    "Political and Economic Systems",
    "Resources, Trade, and the Environment",
)
overview = html.fromstring(checked_file("GEO-WEB").read_text(encoding="windows-1252"))
paragraphs = [" ".join(node.text_content().split()) for node in overview.iter("p")]
passages = {}
for number, heading in enumerate(headings, 1):
    matches = [text for text in paragraphs if text.startswith(heading + " ")]
    if len(matches) != 1:
        raise ValueError(f"Expected one paragraph headed {heading!r}")
    passages[f"GEO-WEB:{number}"] = matches[0]

for source_id in ("VLSI", "MOORE", "TEXAS"):
    extract = subprocess.run(
        ["pdftotext", "-layout", "-enc", "UTF-8", str(checked_file(source_id)), "-"],
        check=True, stdout=subprocess.PIPE,
    )
    for number, page in enumerate(extract.stdout.decode("utf-8").split("\f"), 1):
        if page.strip():
            passages[f"{source_id}:{number}"] = page

vectorizer = TfidfVectorizer()
matrix = vectorizer.fit_transform(passages.values())
print(f"{len(passages)} passages, {matrix.shape[1]} terms")
print("query\tfirst_result\tfirst_score\treviewed_page\trank")
queries = (
    ("transistor count doubling every 18 months", "VLSI:3"),
    ("minimum component costs factor of two per year", "MOORE:2"),
    ("tradition command market mixed economies", "TEXAS:70"),
    ("what was affordable to put on one piece of silicon", "MOORE:2"),
    ("who invented the three economic systems", None),
)
for question, target in queries:
    scores = (matrix @ vectorizer.transform([question]).T).toarray().ravel()
    positive = [(key, score) for key, score in zip(passages, scores) if score > 0]
    ranked = sorted(positive, key=lambda pair: (-pair[1], pair[0]))
    ordered_keys = [key for key, score in ranked]
    first, first_score = ranked[0] if ranked else ("-", 0.0)
    rank = ordered_keys.index(target) + 1 if target in ordered_keys else "-"
    print(question, first, f"{first_score:.4f}", target or "-", rank, sep="\t")
```

## Evidence and corrections

A claim record needs a stable ID, an edition and page, the speaker, a short original paraphrase, the scope of the statement and any citation printed beside it. Give each proposed source its own record with a locator, search query, inspected passage and relation. For example, Glencoe's relationship to the 1964 text is an earlier parallel. Weste and Harris name Moore's paper explicitly, and its scope and number can be compared directly. A reader who supplies a page can change one of those relations without changing the others. Preserve the old decision and the reason for the revision.

Use the repository for source pointers, original analysis, checks and numerical receipts. Apply the redistribution terms for each source before retaining pages or extracted text there. The OpenStax page specifically reserves language-model training for prior written permission. The proposed Pythia export can carry independently written questions, findings, source IDs and unresolved states with an eligibility field. Keep textbook prose outside that export unless the source has an affirmative permission record. [Blackball copyright policy](https://github.com/bl4ckb4ll/blackball/blob/d416421289dc21cdf0ba92bff3c8093abde5ff49/COPYRIGHT.md) · [OpenStax usage notice](https://openstax.org/books/introduction-sociology-3e/pages/4-1-types-of-societies)
