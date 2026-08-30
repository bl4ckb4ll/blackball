# Henry Mayhew — *London Labour and the London Poor*

This directory is a Blackball source corpus, not a reading recommendation.

The retrieval goal is to preserve multiple independent representations of the same public-domain source so a later model can use the clean text for search, the raw OCR for scan fidelity, and the page-image PDF when wording/layout or OCR quality matters.

## Work / edition boundary

Mayhew's reporting began in the *Morning Chronicle* in 1849–50 and first appeared in book/serial form in 1851. The standard enlarged four-volume edition represented here is the 1861–62 *London Labour and the London Poor: A Cyclopædia of the Condition and Earnings of Those That Will Work, Those That Cannot Work, and Those That Will Not Work*.

Volumes I–III are the London street-folk. Volume IV, *Those That Will Not Work*, is explicitly by several contributors and includes an introductory essay by the Rev. William Tuckniss. The fourth volume must not be flattened into "Mayhew says" when the actual section belongs to Bracebridge Hemyng, John Binny, Andrew Halliday, Tuckniss, or another contributor.

## Local representations

The corpus sync stores:

- `project-gutenberg/` — proofread UTF-8 text plus Gutenberg HTML/EPUB derivatives where available;
- `internet-archive/volume-*/` — the complete file set exposed by one canonical public-domain Internet Archive scan for each volume, including PDFs, B/W PDFs, raw OCR text, OCR XML/HOCR, EPUB, page-number/scandata/metadata derivatives, thumbnails, torrents, and catalog records when present;
- files larger than GitHub's ordinary 100 MB Git-blob limit are attached to the repository release/tag `mayhew-london-labour-source-blobs` rather than discarded; `large-files.tsv` records their original Internet Archive name, size, URL, and release asset name;
- `audiobooks.md` — LibriVox and YouTube listening routes.

This means `project-gutenberg/*.txt` and `internet-archive/*/*_djvu.txt` are deliberately both present. They are different evidence objects:

- Gutenberg text = manually proofread/search-friendly transcription;
- Internet Archive `djvu.txt` = machine OCR from a particular physical scan;
- Internet Archive PDF = page-image/scan anchor for checking either text stream.

## Canonical Internet Archive scans

- Volume I — `londonlabourlond01mayhuoft` — University of Toronto scan: https://archive.org/details/londonlabourlond01mayhuoft
- Volume II — `londonlabourlond02mayhrich` — University of California Libraries scan: https://archive.org/details/londonlabourlond02mayhrich
- Volume III — `londonlabourlond03mayh_0` — University of North Carolina at Chapel Hill scan: https://archive.org/details/londonlabourlond03mayh_0
- Volume IV — `londonlabourlond04mayh` — Brigham Young University / Harold B. Lee Library scan: https://archive.org/details/londonlabourlond04mayh

The Archive records the volume IV scan as 588 pages and OCRed with ABBYY FineReader; its download set includes PDF, B/W PDF, full text, DjVu XML, HOCR, EPUB, page metadata and the original JP2 image archives. The same derivative families are preserved when available for the other volumes.

## Project Gutenberg proofread texts

- Volume I — ebook 55998 — https://www.gutenberg.org/ebooks/55998
- Volume II — ebook 60440 — https://www.gutenberg.org/ebooks/60440
- Volume III — ebook 57060 — https://www.gutenberg.org/ebooks/57060
- Volume IV — ebook 63415 — https://www.gutenberg.org/ebooks/63415

Project Gutenberg marks all four as public domain in the United States. Its volume I transcription explicitly credits Henry Flower, Jonathan Ingram, Suzanne Lybarger, eBookForge, and the Online Distributed Proofreading Team; the other volumes likewise exist because of volunteer transcription and proofreading work. Preserve those credits in the downloaded headers rather than stripping them.

## Why Blackball wants the raw source

Mayhew is unusually useful because large parts of the work are attempts to record working people's own descriptions of earnings, trades, mobility, skill, respectability, insecurity, workplace relations, family economies, and how educated observers classified them. It therefore belongs upstream of later claims about class, occupations, professionalization, labor markets, credentialing, and what nineteenth-century people meant by words such as *mechanic*, *labourer*, *street-folk*, or *trade*.

The source is not neutral. Mayhew's own classifications include Victorian racial, physiological, moral, and civilizational theories that should not be silently imported into a modern answer. Retrieval should distinguish interview testimony, Mayhew's observation, Mayhew's theory, collaborators' writing, and statistics borrowed from institutions or informants.

## Credit already explicit in volume I

Mayhew himself says that the work depends on thousands of interviews and visits. In the preface he gives special credit to **Henry Wood** and **Richard Knight**, and says Wood contributed so much that he could fairly be regarded as one of the volume's authors. He also credits unnamed tradesmen and wholesale merchants for market statistics.

Blackball should preserve that source ownership. When a claim is carried by an interviewee, collaborator, market informant, police return, charity report, or other upstream source, do not attribute the whole evidentiary burden to Mayhew merely because his name is on the title page.

## Provenance rule

Do not normalize the proofread text and raw OCR into one anonymous string. Keep source and volume in retrieval metadata. Page-sensitive claims should be checked against the scan. OCR errors are evidence about the OCR, not about the 1861–62 text.
