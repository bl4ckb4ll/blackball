# Henry Mayhew — *London Labour and the London Poor*

This directory is a Blackball source corpus, not a reading recommendation.

The retrieval goal is to preserve multiple independent representations and textual lineages of the public-domain source so a later model can use clean text for search, raw OCR for scan fidelity, and page-image PDFs when wording, layout, edition, or OCR quality matters.

## Work / edition boundary

Mayhew's reporting began in the *Morning Chronicle* in 1849–50 and appeared in serial/book form in 1851. Wellcome describes the surviving 1851 Newbold set as **Nos. 1–63, comprising volume I and parts of volumes II–III, all that was issued**. Blackball preserves that three-volume digitized lineage separately under `internet-archive-1851/`.

The later enlarged four-volume *London Labour and the London Poor: A Cyclopædia of the Condition and Earnings of Those That Will Work, Those That Cannot Work, and Those That Will Not Work* appeared in 1861–62. Blackball preserves a complete four-volume scan lineage plus Project Gutenberg's proofread four-volume transcription under `internet-archive/` and `project-gutenberg/`.

Volumes I–III are the London street-folk. Volume IV, *Those That Will Not Work*, is explicitly by several contributors and includes an introductory essay by the Rev. William Tuckniss. The fourth volume must not be flattened into "Mayhew says" when the actual section belongs to Bracebridge Hemyng, John Binny, Andrew Halliday, Tuckniss, or another contributor.

## Local representations

The corpus stores:

- `project-gutenberg/` — proofread UTF-8 text plus Gutenberg HTML, image, ZIP, EPUB/catalog derivatives and preserved older Gutenberg files where available;
- `internet-archive/volume-*/` — every file exposed by one canonical public-domain Internet Archive scan for each 1861–62 volume: PDFs, B/W PDFs, raw OCR text, OCR XML/HOCR/ABBYY derivatives, EPUB, page-number/scandata/metadata records, thumbnails, torrents, and other attached files;
- `internet-archive-1851/volume-*/` — every file exposed by Wellcome's three surviving 1851 Newbold Internet Archive items `b20415606_001`, `_002`, and `_003`;
- files larger than GitHub's ordinary 100 MB Git-blob limit as repository release assets instead of silently dropping them; TSV manifests preserve original item/name, byte size, SHA-256, and release URL;
- `audiobooks.md` — LibriVox catalog records and the LibriVox YouTube listening routes.

The representations are deliberately not collapsed:

- Gutenberg text = manually proofread/search-friendly transcription;
- Internet Archive `djvu.txt` = machine OCR from one physical scan;
- OCR XML/HOCR/ABBYY = layout and token geometry useful for reconstructing page-level evidence;
- PDF = page-image/scan anchor for checking transcription and OCR;
- original JP2 archives = highest-fidelity scan images when retained by the Archive;
- 1851 and 1861–62 = distinct textual/publication lineages, not interchangeable scans.

## Canonical 1861–62 Internet Archive scans

- Volume I — `londonlabourlond01mayhuoft` — University of Toronto scan: https://archive.org/details/londonlabourlond01mayhuoft
- Volume II — `londonlabourlond02mayhrich` — University of California Libraries scan: https://archive.org/details/londonlabourlond02mayhrich
- Volume III — `londonlabourlond03mayh_0` — University of North Carolina at Chapel Hill scan: https://archive.org/details/londonlabourlond03mayh_0
- Volume IV — `londonlabourlond04mayh` — Brigham Young University / Harold B. Lee Library scan: https://archive.org/details/londonlabourlond04mayh

## 1851 Newbold / Wellcome lineage

Wellcome marks this source public domain and describes it as three volumes online, published London: [G. Newbold], 1851, with the qualification that Nos. 1–63 comprise volume I and parts of II–III, all that was issued.

- `b20415606_001` — https://archive.org/details/b20415606_001
- `b20415606_002` — https://archive.org/details/b20415606_002
- `b20415606_003` — https://archive.org/details/b20415606_003

Keep the incomplete-publication history attached to retrieval results; do not label these three digital objects as though they were simply the later complete volumes I–III.

## Project Gutenberg proofread texts

- Volume I — ebook 55998 — https://www.gutenberg.org/ebooks/55998
- Volume II — ebook 60440 — https://www.gutenberg.org/ebooks/60440
- Volume III — ebook 57060 — https://www.gutenberg.org/ebooks/57060
- Volume IV — ebook 63415 — https://www.gutenberg.org/ebooks/63415

Project Gutenberg marks all four as public domain in the United States. Its volume I transcription explicitly credits Henry Flower, Jonathan Ingram, Suzanne Lybarger, eBookForge, and the Online Distributed Proofreading Team; preserve those and the corresponding credits in other volume headers rather than stripping them.

## Why Blackball wants the raw source

Mayhew is unusually useful because large parts of the work attempt to record working people's own descriptions of earnings, trades, mobility, skill, respectability, insecurity, workplace relations, family economies, and how educated observers classified them. It therefore belongs upstream of later claims about class, occupations, professionalization, labor markets, credentialing, and what nineteenth-century people meant by words such as *mechanic*, *labourer*, *street-folk*, or *trade*.

The source is not neutral. Mayhew's classifications include Victorian racial, physiological, moral, and civilizational theories that should not be silently imported into a modern answer. Retrieval should distinguish interview testimony, Mayhew's observation, Mayhew's theory, collaborators' writing, and statistics borrowed from institutions or informants.

## Credit already explicit in volume I

Mayhew says the work depends on thousands of interviews and visits. In the preface he gives special credit to **Henry Wood** and **Richard Knight**, and says Wood contributed so much that he could fairly be regarded as one of the volume's authors. He also credits unnamed tradesmen and wholesale merchants for market statistics.

Blackball should preserve that source ownership. When a claim is carried by an interviewee, collaborator, market informant, police return, charity report, or other upstream source, do not attribute the whole evidentiary burden to Mayhew merely because his name is on the title page.

## Provenance rule

Do not normalize proofread text, raw OCR, different scans, and different editions into one anonymous string. Keep edition/source, volume, scanner/holding institution when known, and representation type in retrieval metadata. Page-sensitive claims should be checked against the scan. OCR errors are evidence about the OCR, not about Mayhew's printed text.
