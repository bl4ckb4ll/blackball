# PDF qualification contract

Specified before either reader's synthetic-fixture output was inspected.
Scope: PDF decoding for the existing Idriç intake, not career interpretation,
OCR, owner verification, or deletion. Only synthetic documents may be used.

## Independent fixture expectations

Use a small PDF writer independent of both candidate readers. Preserve its
source, exact objects, original bytes and a human-readable expected manifest.
Render its pages with Poppler for visual inspection; Poppler is an oracle,
never the production decoder. Compare both pinned readers on the same bytes.

| Case | Required observable result |
|---|---|
| ordinary | Exact name, section and employment wording; no fabricated text |
| Unicode | ToUnicode mappings preserve accented Latin, Greek, CJK and a supplementary scalar; no replacement character or silent omission |
| geometry | Page MediaBox and CropBox retain their different origins and extents; preserve rotation; glyph positions remain in the declared coordinate system |
| columns | Retain both columns and their coordinates; disclose unresolved reading order rather than asserting semantic sequence |
| boundaries | Two pages with identical text remain separate, each with its own page number and source coordinates |
| image-only | An actual image XObject and no selectable glyphs yields NeedsTextRecognition, without running OCR |
| blank | No image and no text remains a blank page, not an image-only diagnosis |
| mixed | Selectable text on one page and an image-only second page retain both page outcomes; do not silently drop the second page |
| unmapped | A used custom glyph without Unicode mapping remains uncertain or causes an explicit refusal; no confident invented character |
| malformed | Broken object/xref/stream data fail explicitly; no completed draft |
| encrypted | Refuse without guessing a password or calling an external service |
| resource limit | Excess pages, expanded streams, output or elapsed work fail closed |

An independent checker must reject targeted corruptions: dropped text,
replacement Unicode, changed coordinates, merged pages and invented OCR text.
A reader's own tests or agreement between readers alone cannot satisfy this.

## Integration acceptance

Idriç continues to own validation, evidence anchors, interpretation, review and
storage. The foreign reader returns bounded, explicitly versioned page/glyph
observations. Retain original bytes and reader evidence, page identity,
coordinates, document identity, uncertainty and per-page text/image outcomes.
Do not promote empty extraction to image-only or missing mappings to success.

Qualify the actual reader process's non-networked boundary independently of its
resource limits. A host refusing namespaces is not proof that limits isolate IO.
Reader failures and malformed/tampered evidence must produce no completed
record. Existing plaintext/DOCX tests and successive review/reload must still
pass. Keep the PR draft while required acceptance is absent.
