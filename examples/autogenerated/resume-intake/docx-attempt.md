# DOCX continuation: reuse installed Pandoc

Use the installed Pandoc 3.1.3 Haskell reader without a compiler bootstrap or
fork. The pinned --sandbox path runs the reader in PandocPure with named inputs;
separate OS resource limits remain required. This is not a namespace sandbox.

Idriç owns bounded ZIP-directory inspection, safe XML sidecar parsing, actual
OOXML part/paragraph paths, validation of Pandoc JSON, draft claims and review.
Unzip only decompresses selected entries to stdout. Grease passes filenames as
separate arguments and never extracts archive paths to disk.

Checked operation: validate_docx_reader_output : InspectedDocument →
List DecodedPart → Text → Either Text ValidatedDocument. Reject undeclared parts,
changed bytes, unsafe XML, external-resource relationships, excessive expansion,
invalid models and forged stage transitions. Preserve original ZIP, selected
part bytes and the actual model through saving, reload and review.

The typed domain remains above the foreign-reader boundary. No shell-string
process API, generated C or replacement résumé parser is being introduced.
Executed results and limitations will be recorded in the job receipts.

Executed continuation: ordinary/academic DOCX, Unicode, tables, header text,
footnotes and source-preserving review/reload passed. Namespace sandbox creation
remains unavailable, but the installed Pandoc document IO sandbox runs without
GHC and is pinned/inspected. Raw CRC and Unix mode encodings must stay Bits32:
the first prototype routed large raw values through whole-number conversions
and exceeded its runtime limit; reading those fixed-width fields directly fixes
that boundary without another compiler or backend.

The first Word table fixture omitted its grid and exposed missing table text in
Pandoc's output; the source/model check rejected it. A separate, preserved
mixed-run text/footnote fixture demonstrates text loss in both Pandoc 3.1.3 and
3.12.1. The passing academic control uses separate runs. No missing text is
silently accepted, and no uncompiled upstream patch is counted as a fix.

Grease runtime preparation uses its actual ENV, trap --add block and raw-string
syntax. Each reader/core child is resource-limited; the sanitizer-built Grease
controller needs its large virtual shadow region and has the outer elapsed
limit. A developer rebuild into an existing Chez output reset its executable
mode; the tested producer uses a fresh artifact directory instead.
