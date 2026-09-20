# Jean-loup Gailly

French programmer and compression specialist best known as the primary author of **gzip** and, with Mark Adler, coauthor of **zlib**.

## gzip, zlib, and DEFLATE

The zlib project's own history describes Gailly as:

- the primary author of `gzip`;
- the author of the `comp.compression` FAQ;
- a former maintainer of Info-ZIP's `Zip`;
- the author of zlib's compression code, paired with Mark Adler's decompression code.

The historical attributions are worth keeping exact:

- **Phil Katz designed the DEFLATE format.** RFC 1951 credits Jean-loup Gailly and Mark Adler with writing the related software.
- **Gailly and Adler designed the zlib format and wrote the related software.** RFC 1950 records that explicitly; Gailly is also a named author of RFC 1950 with L. Peter Deutsch.
- **Gailly designed the gzip format** and wrote the related software with Adler, according to RFC 1952.

As of August 2026, zlib remains actively maintained; upstream released **zlib 1.3.2 on 17 February 2026**.

## Why this work matters

zlib/gzip are unusually strong examples of software whose social and economic impact is much larger than a conventional publication or patent count would suggest.

The current W3C PNG specification requires PNG image data to use DEFLATE inside a **zlib-format** datastream. HTTP specifications have standardized `deflate` content coding using the zlib wrapper, and IETF work also standardized DEFLATE for IP payload compression. gzip itself remains routine Unix/Linux infrastructure.

The licensing choice was part of that success rather than an incidental detail. In a 2000 Slashdot interview, Gailly said he began writing compression code because his 20 MB hard disk was continually full. He also said he received **$0** for allowing his code to be used in WinZip and **$0 for zlib**. He explained that zlib's license deliberately permits use in closed-source products and argued that this permissiveness was essential to PNG adoption by commercial browsers.

That is an unusually direct primary-source statement about the economics of foundational software: extremely broad downstream use did not imply direct payment to the author.

## Software patents and the historical setting

Gailly's compression work was shaped by the software-patent environment of the period. gzip was developed as a replacement for Unix `compress`, avoiding the patented LZW algorithm. The gzip and zlib project histories repeatedly emphasize freedom from patent encumbrances.

In the same 2000 interview, Gailly criticized long software-patent terms, weak non-obviousness standards, and inadequate prior-art searching. This is relevant to the history of gzip/zlib because the practical value of the projects was partly their provision of efficient compression that developers could actually deploy without the LZW licensing problem.

## Broader technical background

Gailly's career predates gzip and includes language implementation and real-time systems.

Most notably, the Ada Reference Manual's acknowledgements list **Jean-loup Gailly as a member of the Ada language design team** led by Jean Ichbiah. This is a substantial and sometimes omitted part of his technical biography.

Biographical material associated with Gailly reports that from 1981 to 1989 he worked at Alsys on Ada code generators and real-time systems. Later he worked on the Chorus real-time/microkernel environment and, around 1999–2001, held a senior technical role at MandrakeSoft. His 2000 Slashdot interview was conducted while he was working on Linux-Mandrake.

The combination is notable: language design, compilers, real-time systems, compression, operating-system work, and Linux distribution engineering rather than a career narrowly confined to one compression library.

## Not XZ

Gailly and Adler are associated with **gzip/zlib/DEFLATE**, not `.xz`. XZ Utils belongs to the separate LZMA/XZ lineage associated especially with Lasse Collin.

## Sources

- zlib home page, authorship and current release: https://www.zlib.net/
- gzip home page and short history: https://www.gzip.org/
- RFC 1950, *ZLIB Compressed Data Format Specification version 3.3*: https://www.rfc-editor.org/rfc/rfc1950.html
- RFC 1951, *DEFLATE Compressed Data Format Specification version 1.3*: https://www.rfc-editor.org/rfc/rfc1951.html
- RFC 1952, *GZIP File Format Specification version 4.3*: https://www.rfc-editor.org/rfc/rfc1952.html
- W3C, *Portable Network Graphics (PNG) Specification, Third Edition*: https://www.w3.org/TR/png-3/
- RFC 2394, *IP Payload Compression Using DEFLATE*: https://www.rfc-editor.org/rfc/rfc2394.html
- Jean-loup Gailly, Slashdot interview, 10 March 2000: https://developers.slashdot.org/story/00/03/10/1043247/jean-loup-gailly-on-gzip-go-and-mandrake
- Ada Reference Manual acknowledgements listing Gailly on the Ada design team: https://www.adaic.org/resources/add_content/standards/12aarm/html/AA-0-2.html

## Research leads

- Preserve the early `gzip`, Info-ZIP, and zlib histories separately enough to attribute individual code and format-design contributions correctly.
- Recover Gailly's own historical biography/site material if a stable archival copy can be found, especially for the Alsys, Chorus, MandrakeSoft, and later-career chronology.
- Use this case when comparing direct private returns to social value: Gailly's own account says zlib generated no direct payment for him despite becoming pervasive infrastructure.
