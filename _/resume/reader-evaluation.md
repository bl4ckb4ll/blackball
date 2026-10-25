# Reader boundaries: DOCX executed; PDF remains blocked

The two requested upstream repositories were cloned and inspected at the
revisions in dependencies.tsv. Their actual libraries, package descriptions,
license files and relevant extraction interfaces were read. No fork was made.

| Candidate | Inspected capability | License | Executed build result | Fixture qualification |
|---|---|---|---|---|
| hpdft | PDF.Page structured extraction and PDF.Interpret geometry; layout and Unicode mapping modules | MIT | BLOCKED before compilation: GHC could not start | NOT_RUN |
| pdf-toolbox | pageExtractGlyphs returns spans with glyph positions; pageMediaBox and Unicode decoders | BSD-3-Clause, per package LICENSE files | BLOCKED before compilation: GHC could not start | NOT_RUN |

hpdft's pinned package requires base >=4.18; its README requests GHC 9.14+.
The observed Ubuntu package candidate GHC 9.4.7 provides base 4.17.2.0 and
cannot satisfy that package. This is not evidence of an upstream compiler bug.

No GHC or Cabal was initially installed. Cabal 3.8.1.0 was acquired into the
disposable workspace. A GHC acquisition attempt returned a truncated archive:
51,802,962 bytes instead of the package index's 78,997,210 bytes. dpkg-deb failed
with unexpected end of file; the partial GHC then failed to load
libHShaskeline-0.8.2-ghc9.4.7.so. Both actual `cabal build --offline` invocations
failed before determining a usable compiler version. No candidate is declared
unbuildable upstream, and no Unicode/layout behavior is inferred from its README.

The isolated-process prerequisite was also probed with
`unshare --user --map-root-user --net true`. The host refused writing uid_map
with “Operation not permitted.” An available network/process isolation boundary
has not been established. Resource limits alone do not establish isolation.

The earlier compiler and namespace failures remain evidence about the PDF
candidate build path. They do not block the already installed Pandoc executable.
DOCX now executes through Pandoc 3.1.3+ds-2, pinned by binary digest and upstream
source revision. The Idriç ZIP/XML sidecar checks bounds, preserves original Word
parts and constructs actual part/paragraph anchors. Ordinary, Unicode, table,
header and academic footnote fixtures complete intake/review/reload. Encrypted
ZIPs, oversized expansion, XML entity declarations, external resource
relationships, malformed models and changed XML sidecars are refused.

The configured Pandoc `--sandbox` uses PandocPure for named document inputs;
fixed arguments exclude filters and other execution paths. Each actual reader
and core process is resource-limited. This document IO isolation does not claim
an OS namespace. See [the executed reader gap](pandoc-gap.md) for a mixed-run
text-loss regression also reproduced with official Pandoc 3.12.1.

PDF extraction has not been routed through Pandoc or Poppler. Poppler remains
an unrun comparison implementation, not a hidden production substitute.
Independent synthetic PDF rendering and geometry comparison are NOT_RUN.

Consequently PDF inputs fail closed as PdfReaderNotQualified. ZIP candidates
must pass DOCX package inspection and model/source validation. The application does not
mislabel those documents as image-only, encrypted, malformed or OCR-qualified;
the required NeedsTextRecognition and mixed-page outcomes remain NOT_IMPLEMENTED.

Next required PDF boundary: acquire a complete compatible GHC distribution, execute
both pinned readers on independently authored PDF text/layout fixtures, inspect
the rendered pages, select a reader on that evidence, and qualify a bounded
non-networked PDF reader process before enabling decoding. DOCX's bounded
Pandoc-plus-source-sidecar path is implemented; the identified mixed-run bug
provides a concrete reason for a focused Pandoc reader patch.
