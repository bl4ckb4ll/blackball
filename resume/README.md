# Local résumé intake — partial implementation

SUN BB-PARSE-RESUMES-01 is **PARTIAL**. The checked Idriç application executes
plaintext and bounded DOCX intake, evidence-backed drafts and explicit review/correction
snapshots. PDF decoding, structured career-event interpretation, safe managed
deletion and independent semantic acceptance remain unfinished. Do not use this
as an accepted production parser for personal documents.

The [PDF executable comparison](../_/resume/reader-evaluation.md) now clears
the Haskell build blocker: both pinned readers compile and run. Neither yet
qualifies. Both lose standard-font advances; hpdft also loses a supplementary
Unicode character and emits an unknown glyph name as wording. Synthetic fixtures,
independent Idriç checks and captured observations are retained. PDF intake
continues to refuse, and no production reader has been selected.

## Research purpose

Read [Parsing résumés and academic CVs](../notes/parsing-resumes.md) for reader
comparisons and the research requirements: professors' self-presentation, what
they and their institutions emphasize or reward, documented work histories,
and institutional hiring hierarchies. Preserve degree-to-appointment evidence
needed to investigate elite graduates' downward placement and less prestigious
graduates' upward mobility. This is not employer applicant screening; document
presentation, career claims and population-level findings remain distinct.

## Run

Supported runtime tested here: Linux x86_64, pinned Idriç Chez distribution
94dfd99bd3e376507fedc8611053b7173b2519f0 and compiled Grease. The compiler's
inherited version banner says Idris 2; this is the named Idriç distribution, not
a replacement compiler. No RefC, generated-C, Java or outside model is used.

The exact command forms are:

```text
grease /absolute/blackball/_/resume/run.grease /absolute/build/resume-core intake INPUT_FILE NEW_OUTPUT_DIRECTORY YYYY-MM-DD ACQUISITION_REFERENCE
grease /absolute/blackball/_/resume/run.grease /absolute/build/resume-core review INPUT_RECORD DECISIONS_TSV NEW_OUTPUT_DIRECTORY
```

The output parent must exist and lie outside Git. Each output directory must
be new. The wrapper rejects non-regular intake files, applies 20-second elapsed,
10-second CPU, 768-MiB address-space, 8-MiB file and 64-descriptor limits. The
core bounds source bytes and each derived text file at 256 KiB and rejects invalid UTF-8/NUL.
DOCX adds a 256-entry ZIP limit, 8-MiB decompressed total, 64 selected XML parts,
96-level XML depth, 4096 paragraphs and 16-MiB total stored output. Each actual
reader/core child has the process limits above; trusted Grease orchestration
has the whole-command elapsed limit. Use the wrapper: direct core calls
are the lower-level interface and bypass its process limits and Git guard.

The job recipe compiles and tests from absolute locations:

```text
grease /absolute/blackball/_/resume/prepare-and-test.grease /absolute/blackball /absolute/idric/bin/idric /absolute/grease/bin/grease /absolute/NEW_TEST_EVIDENCE_DIRECTORY
```

The compiler launcher digest is checked; dependency revisions and observed
artifact digests are in [dependencies.tsv](../_/resume/dependencies.tsv) and
[artifacts.tsv](../_/resume/artifacts.tsv). Install/provision the actual pinned
distribution separately; this command does not silently download a compiler.
The [pipeline specification](../_/resume/pipeline.json) is input to the existing
Flexible Pipes runner. JSON appears only at required external interfaces:
Flexible Pipes and Pandoc's actual document model.

DOCX uses the pinned `/usr/bin/pandoc` 3.1.3+ds-2 executable in `--sandbox`
mode and pinned `/usr/bin/unzip` for selected-entry stdout decompression.
ZIP bounds and original-part checks precede Pandoc. Macros, embedded executable
objects, entity declarations and non-hyperlink external-resource relationships
are refused. No archive pathname is extracted, filter executed or resource
fetched. PandocPure is the document IO boundary; no OS namespace is claimed.
`GREASE_BINARY` may supply the verified Grease entrypoint when it is not in PATH.
The preparation recipe sets that explicit entrypoint automatically.

## Evidence and review

Intake writes original source.bin, extracted.txt, document.tsv, draft.tsv,
review.txt, unresolved.tsv, diagnostics.tsv, metadata.tsv and decisions.tsv.
complete.tsv is written last; it marks a completed record write, not complete
parsing, owner review or independent verification. New files have mode 0600
and directories 0700. There is no database. Keep real documents, filenames,
records and review histories out of this repository and public logs/artifacts.

Every documentary claim has a private-constructor source anchor. Plaintext offsets
count Unicode scalar values, zero-based and end-exclusive, in exact decoded
text including line terminators and BOM. SHA-256 binds original bytes and the
extraction revision binds offset interpretation. No page/rectangle is invented.
Whole original text, including headings and uninterpreted material, is retained.

DOCX anchors name the actual OOXML part and a one-based element-child XPath,
for example `word/document.xml:/*[1]/*[1]/*[4]/*[2]/*[1]/*[1]` for a table-cell
paragraph. Positions count element children only, including the root element.
No Word page number or rectangle is inferred. `reader-part-N.xml` preserves the
selected original XML; `reader-model.json` preserves the actual Pandoc model.
The Idriç validator checks archive headers/bounds, part length and CRC, XML
structure, model version/depth, duplicate keys and source-text coverage. Header,
footer and note text is preserved alongside the main document. Section scope
resets at part boundaries; visual reading order remains an explicit unknown.

The [mixed-run regression](../_/resume/pandoc-gap.md) identifies a Pandoc text-loss
case reproduced in both 3.1.3 and 3.12.1. Such input returns a source/model
mismatch with no draft. A focused reader fork/patch is justified for that case;
the ordinary DOCX path uses unmodified Pandoc.

This first DOCX slice supports the usual Transitional Word namespace with a
`w` prefix. Strict/aliased namespace variants and unsupported symbol, math or
embedded-object content fail explicitly rather than losing material silently.

The conservative interpreter recognizes explicit name/contact labels and named
sections. It groups remaining lines provisionally and preserves their exact
wording. It does not yet split employers, roles, institutions, dates or
qualifications into structured events. It does not merge similar names or infer
attributes, outside-academia employment, teaching quality or hiring suitability.
Names without explicit labels remain unclassified. Date operations compile and
run independently but are not yet wired into entry extraction.

Use UTF-8 TSV review files. The first row is `review-v1<TAB>SOURCE_SHA256`.
Every later row has exactly five fields:

| Field | Meaning |
|---|---|
| claim identifier | An existing claim such as claim-1 |
| action | accept, reject or correct |
| actor reference | Required, locally supplied identity; not authenticated ownership |
| revision reference | Required event revision |
| replacement | Empty for accept/reject; required for correct |

Fields escape backslash, tab, newline and carriage return as `\\`, `\t`, `\n`
and `\r`. The synthetic [review fixture](../_/resume/fixtures/ordinary-review.tsv)
is a complete example. Empty review files, absent claims, wrong source digests,
missing provenance, repeated event identities and unknown actions are rejected.

Review writes a new record and profile.tsv. The original documentary draft
remains unchanged; corrections appear as separate actor/revision events and
owner-attested values, never fabricated document quotations. Unreviewed fields
stay unresolved. A later review reloads and retains prior events. No operation
promotes claims to independently verified facts. Public CVs can remain drafts;
an owner need not participate in their parsing.

Deletion currently refuses with DeletionNotQualified and removes nothing.
Managed deletion needs a qualified path/symlink policy; no secure-erasure or
backup-erasure promise is made.

## Acceptance boundary

Read the job-local [receipt.tsv](../_/resume/receipt.tsv),
[requirements](../_/resume/requirements.md) and
[reader evaluation](../_/resume/reader-evaluation.md). Producer tests,
compilation, FP execution and ai-ci source style are separate evidence.
No independent résumé semantic gate or clean-host all-format demonstration is
claimed. Keep the implementation PR in draft and do not merge this partial work.
