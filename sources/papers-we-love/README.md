# Papers We Love — source corpus

This directory ports the useful retrieval surface of `one-room-schoolhouse/papers-we-love` into Blackball while preserving the original repository as the byte-level source of record.

**Source repository:** https://github.com/one-room-schoolhouse/papers-we-love  
**Source branch:** `master`  
**Pinned source commit:** `395b2a1ed5ab964f07f1a1eb29311155125e2d08`  
**Pinned snapshot:** https://github.com/one-room-schoolhouse/papers-we-love/tree/395b2a1ed5ab964f07f1a1eb29311155125e2d08  
**Snapshot date:** 2019-06-29

The source repository is a broad reading corpus spanning computer science, mathematics, economics, physics, and related areas. It combines topic READMEs, external links, locally hosted papers, and later additions specific to this fork.

## Blackball use

Blackball treats this as a **source-discovery and intellectual-history corpus**. An entry here can establish that a paper or topic was selected, grouped, or commented on in the Papers We Love repository at the pinned revision. It does not by itself establish that the paper's claims are correct.

- [Topic index](topics.md)
- [Digital currency](digital-currency/README.md) — Bitcoin, PeerCoin, PrimeCoin, and the Ethereum Yellow Paper, with a bridge to later legal-source corpora.
- [Migration and rights notes](PROVENANCE.md)

## Rights boundary

The source repository itself warns that licensing does not always permit it to host papers and distinguishes hosted papers from external links. Blackball therefore does **not** treat presence of a PDF in the old repository as sufficient evidence that a new mirror is authorized.

For this port:

1. the exact source commit and original paths are preserved through immutable GitHub links;
2. textual Blackball notes and indexes are stored here;
3. third-party PDFs remain at their source location unless public-domain status or a redistribution license is established for the individual work;
4. a paper may later be mirrored into Blackball after a work-specific rights check.

This is deliberately the same conservative distinction used elsewhere in Blackball between material that can safely be mirrored and material that should only be indexed.

## Source-repository context

The upstream-style root README describes Papers We Love as a community for reading and discussing academic computer-science papers and as a directory bringing together papers scattered across the web. It also explicitly notes that licensing prevents hosting some papers. The name and project logos are separately claimed as copyrighted by Papers We Love Ltd.; Blackball does not import the logo or present itself as an official Papers We Love project.
