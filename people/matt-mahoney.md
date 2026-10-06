# Matt Mahoney

Computer scientist and data-compression researcher associated with Florida Institute of Technology, Ocarina Networks, and Dell; author of the freely available *Data Compression Explained* and a major contributor to the PAQ/ZPAQ compression line.

This entry is also a correction record. The original recollection that led to it mixed together several real facts — a Florida academic connection, a data-compression book, a startup acquisition, and a one-million-dollar figure — but attached them to the wrong institutional and financial details.

## Corrections to the original recollection

### Florida Tech, not the University of South Florida

Mahoney's own biography says that he received a PhD in computer science from **Florida Institute of Technology (Florida Tech)** in 2003 and taught some classes there through 2009. Florida Tech's institutional repository independently records his 2003 dissertation, *A Machine Learning Approach to Detecting Attacks by Identifying Anomalies in Network Traffic*. Ocarina's September 2008 hiring announcement likewise described him as then being at Florida Institute of Technology and holding an MS in computer engineering and a PhD in computer science from Florida Tech.

The evidence found so far supports describing him as someone who **taught at Florida Tech**. A contemporary secondary biography calls him an adjunct instructor. It would be an overstatement, on the present evidence, to silently upgrade that into a tenured or tenure-track professorship.

### He joined Ocarina; he did not found it

Ocarina announced on **2 September 2008** that Mahoney had joined the company as **chief scientist**. The company already existed and had launched its storage-optimization product months earlier, in April 2008.

Dell's later acquisition announcement says Ocarina was founded in 2007. Other historical sources give 2006, so the exact corporate-start date is worth leaving as a small source disagreement rather than forcing one date. None of the evidence makes Mahoney a founder.

Public biographies and contemporary coverage instead identify other founders/co-founders. Forrester called **Carter George** an Ocarina founder in April 2008. Later primary or near-primary biographies identify **Murli Thirumale** as Ocarina's co-founder and CEO, and later reporting also identifies **Goutham Rao** as a co-founder. Mahoney appears in the contemporary record as a later technical hire.

### The acquisition happened, but Mahoney's personal payout is not public

Dell announced an agreement to acquire Ocarina on **19 July 2010**. The announcement expressly said that the **terms were not disclosed**. Dell's SEC filing later says the Ocarina acquisition closed on **29 July 2010**.

Dell's Form 10-Q groups three acquisitions — KACE, Ocarina, and Scalent — at approximately **$275 million in total cash consideration**. That is an aggregate figure, not Ocarina's standalone purchase price. The same filing says Dell expected $45 million of compensation-related expenses across those acquisitions over one to three years; again, it does not allocate that figure to Ocarina or to Mahoney.

No public source found in this pass establishes:

- Ocarina's exact standalone acquisition price;
- whether Mahoney owned equity in Ocarina;
- the size of any equity stake he may have held;
- an acquisition payout to Mahoney;
- or that Mahoney personally made **$1 million** from the acquisition.

Those claims should therefore remain **unknown**, not inferred from Dell's aggregate acquisition accounting.

### A real $1 million figure exists — but it was a prize pool

On **10 September 2008**, eight days after announcing Mahoney's hire, Ocarina announced the **Ocarina Prize**, with an award pool of up to **$1,000,000** for advances in content-aware compression. Mahoney was quoted in that announcement as the company's newly joined chief scientist.

That $1 million was a company-sponsored compression-research prize fund, **not a payment to Mahoney**. It is a plausible source of a later memory combining Mahoney, Ocarina, and “a million dollars,” but that proposed explanation is an inference and should be labeled as such.

## Education and early Florida Tech research

Florida Tech's repository records Mahoney's 2003 PhD dissertation under the name Matthew Vincent Mahoney. The dissertation studied machine-learning methods for detecting novel network attacks by identifying anomalous traffic. Its own abstract is notably cautious about benchmark artifacts: Mahoney reports that a strong result on the simulated DARPA/Lincoln Laboratory traffic was misleading because the algorithms were sensitive to simulation artifacts, and he gives lower estimates for realistic performance.

Related Florida Tech technical reports by Mahoney and Philip K. Chan include work on packet-byte anomaly detection, learning nonstationary models of normal network traffic, and learning rules for hostile-traffic anomaly detection.

This part of his career matters because the later compression/AI connection was not simply retrospective branding. His academic work already combined statistical modeling, prediction, and machine learning before he joined Ocarina.

## PAQ, ZPAQ, and compression research

Mahoney helped develop the open-source **PAQ** family of context-mixing compressors and maintained large compression benchmarks. Ocarina's 2008 hiring announcement explicitly cited PAQ, his text benchmarks, and his involvement with the Hutter Prize as reasons he was a significant compression researcher.

His later **ZPAQ** specification is unusually useful as a source because it records both technical and intellectual-property positions. Mahoney states that he had not filed patents on the techniques described in the specification and would not do so; the document permits unchanged copying. The specification also records `unzpaq1.cpp` as copyright 2009 Ocarina Networks and licensed under GPLv3-or-later, giving a direct documentary bridge between his compression work and his Ocarina employment.

## *Data Compression Explained*

Mahoney announced *Data Compression Explained* publicly on **26 February 2010**, describing it as his free online book on data compression.

A preserved 26 February 2010 PDF is especially informative. Its first page says:

- title: *Data Compression Explained*;
- author: Matt Mahoney;
- copyright: **2010, Ocarina Networks**;
- last update: **26 February 2010**;
- copying/distribution permitted if the license accompanies the material, the material is unmodified, and no fee or other consideration is required.

The later/current edition says copyright **2010–2012, Dell, Inc.**, carries the same basic unchanged/free-distribution permission, and gives a last update of **15 April 2013**.

The copyright progression provides unusually clean documentary evidence of the book spanning Mahoney's Ocarina-to-Dell employment transition. It does **not**, by itself, establish the legal mechanics by which copyright changed hands.

The book covers information theory, coding, statistical modeling, context mixing, LZ methods, the Burrows-Wheeler transform, predictive transforms, and lossy image/video/audio compression, while repeatedly connecting modeling and prediction with AI.

## Ocarina Networks chronology

The following dates establish the part of Ocarina's history most relevant to Mahoney:

- **2 Apr 2008** — Forrester describes Ocarina as a startup and discusses its file-aware combination of deconstruction, deduplication, and compression; the writer says he met founder Carter George.
- **8 Apr 2008** — Ocarina announces availability of its online storage-optimization product. This predates Mahoney's hire.
- **2 Sep 2008** — Ocarina announces Mahoney as chief scientist.
- **10 Sep 2008** — Ocarina announces a compression-research prize pool of up to $1 million.
- **24 Sep 2008** — Ocarina formally introduces a broader release of its ECO System.
- **5 Feb 2009** — Ocarina announces work with Cornell and DataDirect Networks on scientific-data storage optimization; the announcement describes more than 100 algorithms supporting 600 file types.
- **Feb 2009** — Ocarina closes a reported **$20 million Series B** led by JAFCO Ventures, with participation from Kleiner Perkins and Highland Capital Partners. Contemporary reporting says an earlier round was about $10 million in 2007.
- **20 Apr 2009** — Ocarina announces integrations/partnerships with Hitachi Data Systems and BlueArc.
- **9 Jul 2009** — Ocarina and BlueArc announce an expanded partnership.
- **8 Sep 2009** — Ocarina announces immediate availability of its content-aware compression and deduplication system for Hitachi NAS models 3080 and 3090.
- **26 Feb 2010** — Mahoney publishes/announces *Data Compression Explained* while its copyright notice names Ocarina Networks.
- **19 Jul 2010** — Dell signs an agreement to acquire Ocarina; terms are not disclosed.
- **29 Jul 2010** — Dell's SEC filing gives this as the completion date for the acquisition.

These records make Ocarina more than a vague “startup Mahoney was involved with.” They show a storage company commercializing content-aware compression/deduplication, raising venture funding, selling integrations with established storage vendors, and hiring Mahoney specifically for compression research.

## Dell period and retirement

Mahoney's own site says Ocarina was bought by Dell in 2010 and that he continued as a chief scientist specializing in data-compression research and its application to AI before retiring in **2015**.

An independent documentary checkpoint exists in a 2013 PLOS ONE article, *Compression of FASTQ and SAM Format Sequencing Data*, coauthored by James K. Bonfield and Matthew V. Mahoney. The article lists Mahoney's affiliation as **Dell Inc., Round Rock, Texas** and states that Dell covered his salary during the work. That supports continued Dell employment after the acquisition without relying only on his retrospective biography.

## What the evidence does and does not support

### Established

- Mahoney earned his PhD at Florida Tech in 2003 and taught classes there through 2009.
- He was doing machine-learning/network-anomaly research at Florida Tech before his Ocarina work.
- Ocarina hired him as chief scientist in September 2008.
- Ocarina was already operating before his hire; he was not its founder.
- Ocarina publicly tied his role to next-generation compression research.
- Ocarina sponsored a compression prize pool of up to $1 million.
- Ocarina raised venture money and shipped/integrated storage-optimization technology before Dell bought it.
- *Data Compression Explained* existed by February 2010 and initially carried an Ocarina copyright notice.
- Dell announced the acquisition in July 2010 and completed it on 29 July 2010.
- Dell did not disclose Ocarina's standalone acquisition price in the announcement.
- Mahoney later worked at Dell and retired in 2015, according to his own biography; a 2013 paper independently records his Dell affiliation.

### Not established

- that Mahoney founded Ocarina;
- that he was a University of South Florida professor;
- that he was a tenured Florida Tech professor;
- that Ocarina was sold for a particular standalone dollar amount;
- that Mahoney owned a particular share of Ocarina;
- that Mahoney personally received $1 million or any other specific acquisition payout.

## Why this belongs in Blackball

Mahoney is a useful case of movement among academic research, open-source compression, a venture-backed technology company, and a large corporate acquirer. The public record is also a good example of why apparently coherent biographical memories need claim-level checking: the Florida connection, compression book, startup, acquisition, and million-dollar number are all real, but they refer to different facts.

## Sources

The detailed dated source ledger, rights notes, archive-discovery links, and unresolved questions are in:

- [`sources/matt-mahoney/README.md`](../sources/matt-mahoney/README.md)

High-value primary or near-primary sources include:

- Matt Mahoney, home page: https://mattmahoney.net/
- Florida Tech institutional repository, Mahoney dissertation (2003): https://repository.fit.edu/etd/674/
- Ocarina Networks, Mahoney hiring announcement (2 Sep 2008): https://www.globenewswire.com/news-release/2008/09/02/1203063/0/en/Ocarina-Networks-Strengthens-Leadership-Team-With-Key-Sales-Technology-Hires.html
- Ocarina Networks, $1 million compression-prize announcement (10 Sep 2008): https://www.globenewswire.com/news-release/2008/09/10/1203073/0/en/Ocarina-Unveils-1-Million-Prize-Fund-to-Advance-the-State-of-Compression-Research-for-Data-Storage.html
- Matt Mahoney, *Data Compression Explained*: https://mattmahoney.net/dc/dce.html
- Preserved 26 Feb 2010 Ocarina-copyright PDF: https://nishi.dreamhosters.com/u/dce2010-02-26.pdf
- Dell/Ocarina acquisition announcement (19 Jul 2010): https://ocarinanetworks.com/news-events/press-releases/280-press-release-dell.html
- Dell Form 10-Q, acquisition note (filed 26 Aug 2010): https://www.sec.gov/Archives/edgar/data/826083/000095012310081330/d74314e10vq.htm
- Bonfield and Mahoney, *Compression of FASTQ and SAM Format Sequencing Data* (2013): https://pmc.ncbi.nlm.nih.gov/articles/PMC3606433/

## Research leads

- Search Delaware corporate records, Form D records, venture documents, and surviving Ocarina archives for a primary-source capitalization/funding trail.
- Look for any Ocarina shareholder, option, employment, retention, or transaction document that could actually establish Mahoney's equity or acquisition compensation; do not infer it from company-level totals.
- Recover the original Ocarina Series A and Series B announcements if surviving copies or Wayback snapshots can be found.
- Reconcile the 2006-versus-2007 founding-date discrepancy using incorporation records rather than company-history summaries.
- Preserve an unchanged repository mirror of *Data Compression Explained* only if useful for long-term retrieval; its stated license affirmatively permits unchanged, no-fee copying with the license retained.
- Trace Ocarina's specialized compressors and product algorithms far enough to distinguish Mahoney-authored components from broader company technology.
