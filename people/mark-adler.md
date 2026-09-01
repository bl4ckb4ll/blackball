# Mark Adler

Software developer, mathematician/physicist, and longtime JPL engineer whose compression work with Jean-loup Gailly became basic computing infrastructure.

## zlib, gzip, and DEFLATE

Adler and Jean-loup Gailly wrote **zlib**, released in the mid-1990s as a small, portable C compression library. The zlib project's own history describes the division of labor succinctly: Gailly wrote the compression side and Adler the decompression side.

The attribution needs to be kept precise:

- **Phil Katz designed the DEFLATE format.**
- **Jean-loup Gailly and Mark Adler wrote the related DEFLATE software** described by RFC 1951.
- **Gailly and Adler designed the zlib format and wrote the related software**, according to RFC 1950.
- Gailly designed the gzip format; Adler wrote major decompression code for gzip.
- Adler devised the **Adler-32** checksum used by the zlib format. The zlib technical notes say this arose because Adler wanted an integrity check that was faster than CRC-32 for the decompressed stream.

As of August 2026, the current upstream release is **zlib 1.3.2 (17 February 2026)**, and the zlib site is maintained by Adler.

## Actual impact

This is not an example of an ingenious compression idea that remained mostly academic or patented but unused. zlib/DEFLATE became infrastructure.

Concrete examples:

- The current W3C PNG specification requires PNG compression method 0 to use DEFLATE stored in the **zlib format**. Thus ordinary PNG image decoding sits directly on this design lineage.
- HTTP specifications have standardized a `deflate` content coding as a zlib-format stream containing DEFLATE data.
- IETF RFC 2394 specified DEFLATE for IP Payload Compression and explicitly described zlib as widely and freely available.
- gzip remains a standard Unix/Linux compression format and utility family.

The zlib license is deliberately permissive: commercial use, modification, and redistribution are allowed. The upstream site also explicitly describes zlib as unencumbered by patents. This matters historically because gzip, zlib, and PNG emerged in a period when software developers were trying to avoid the LZW patent problems surrounding Unix `compress` and GIF.

This makes Adler a particularly clean case for the Blackball people notes: a person with deep mathematical/scientific training whose small, freely usable implementation became nearly invisible precisely because it was incorporated everywhere.

## Education

Adler's own biography gives the following education:

- **BA, Mathematics**, University of Florida, 1981;
- **MS, Electrical Engineering**, University of Florida, 1985;
- **PhD, Physics**, California Institute of Technology, 1990.

He says he held a Howard Hughes Fellowship for his doctoral work at Caltech. His theoretical-particle-physics dissertation was titled *The Persistence of Charm in the Relentless Decay of Beauty* and concerned semileptonic decays of beauty-charm mesons.

So the remembered Caltech connection is real, but it belongs to **Mark Adler**, not Jean-loup Gailly.

## Aerospace career

Before JPL, Adler worked at Hughes Aircraft. His own account lists work on error-correcting codes, satellite effects, an automobile anti-theft key, and digital image/video compression including wavelets and MPEG-2.

He joined the Jet Propulsion Laboratory in 1992 and subsequently worked in major planetary-mission roles. Biographical material and NASA/JPL sources identify him, at different times, as:

- lead mission engineer on Cassini-Huygens;
- mission manager for the Mars Exploration Rover **Spirit**;
- chief mission concept architect at JPL;
- project manager for the **Low-Density Supersonic Decelerator (LDSD)** Mars-landing technology program.

The compression work is therefore only one part of an unusually broad technical career spanning mathematics, theoretical physics, coding/information problems, image compression, and spacecraft mission engineering.

## Not XZ

Adler and Gailly are associated with **gzip/zlib/DEFLATE**, not `.xz`. XZ Utils belongs to the separate LZMA/XZ lineage associated especially with Lasse Collin.

## Sources

- zlib home page, authorship, current release, and project history: https://www.zlib.net/
- zlib technical details, including Adler-32 rationale: https://zlib.net/zlib_tech.html
- Mark Adler, personal biography, education and previous work: https://madler.net/madler
- RFC 1950, *ZLIB Compressed Data Format Specification version 3.3*: https://www.rfc-editor.org/rfc/rfc1950.html
- RFC 1951, *DEFLATE Compressed Data Format Specification version 1.3*: https://www.rfc-editor.org/rfc/rfc1951.html
- RFC 1952, *GZIP File Format Specification version 4.3*: https://www.rfc-editor.org/rfc/rfc1952.html
- W3C, *Portable Network Graphics (PNG) Specification, Third Edition*: https://www.w3.org/TR/png-3/
- RFC 2394, *IP Payload Compression Using DEFLATE*: https://www.rfc-editor.org/rfc/rfc2394.html
- gzip home page and short history: https://www.gzip.org/
- NASA JPL, *NASA Tests Future Mars Landing Technology*: https://www.jpl.nasa.gov/news/nasa-tests-future-mars-landing-technology/
- NASA, LDSD project material identifying Adler as JPL project manager: https://www.nasa.gov/missions/tech-demonstration/ldsd-testing-for-large-payloads-to-mars/

## Research leads

- Trace Adler's contributions through the early Info-ZIP, gzip, and zlib source histories rather than treating the projects as a single undifferentiated authorship credit.
- Collect representative downstream dependency evidence if a quantitative measure of zlib's reach is useful; standards-level evidence already establishes that its impact is not merely citation-based.
- Compare this case with compression researchers whose work accumulated patents/citations but had substantially narrower deployment.
