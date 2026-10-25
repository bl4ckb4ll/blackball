# PDF and DOCX boundary: blocked, no production reader selected

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

Pandoc 3.1.3 is present and reports its Haskell DOCX reader. No DOCX fixture or
source-anchor sidecar has been qualified. PDF extraction has not been routed
through Pandoc or Poppler. Poppler is present but has not been used as a hidden
production replacement. Independent synthetic PDF rendering and geometry
comparison are NOT_RUN.

Consequently all PDF and ZIP/DOCX-candidate inputs fail closed as
PdfReaderNotQualified or DocxReaderNotQualified. The application does not
mislabel those documents as image-only, encrypted, malformed or OCR-qualified;
the required NeedsTextRecognition and mixed-page outcomes remain NOT_IMPLEMENTED.

Next required boundary: acquire a complete compatible GHC distribution, execute
both pinned readers on independently authored PDF text/layout fixtures, inspect
the rendered pages, select a reader on that evidence, and qualify a bounded
non-networked reader process before enabling document decoding. DOCX additionally
needs checked ZIP bounds and real OOXML-part/block anchors alongside Pandoc's
document model. No broad fork is justified by the current evidence.
