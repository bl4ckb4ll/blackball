# Local résumé intake — partial implementation

SUN BB-PARSE-RESUMES-01 is **PARTIAL**. The checked Idriç application executes
plaintext intake, evidence-backed line drafts and explicit review/correction
snapshots. PDF/DOCX decoding, structured career-event interpretation, safe managed
deletion and independent semantic acceptance remain unfinished. Do not use this
as an accepted production parser for personal documents.

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
core bounds source bytes and each derived text file at 256 KiB and rejects invalid UTF-8/NUL. These limits
do not qualify an isolated PDF/DOCX reader. Use the wrapper: direct core calls
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
Flexible Pipes runner. JSON is limited to that required external interface.

## Evidence and review

Intake writes original source.bin, extracted.txt, document.tsv, draft.tsv,
review.txt, unresolved.tsv, diagnostics.tsv, metadata.tsv and decisions.tsv.
complete.tsv is written last; it marks a completed record write, not complete
parsing, owner review or independent verification. New files have mode 0600
and directories 0700. There is no database. Keep real documents, filenames,
records and review histories out of this repository and public logs/artifacts.

Every line claim has a private-constructor source anchor. Plaintext offsets
count Unicode scalar values, zero-based and end-exclusive, in exact decoded
text including line terminators and BOM. SHA-256 binds original bytes and the
extraction revision binds offset interpretation. No page/rectangle is invented.
Whole original text, including headings and uninterpreted material, is retained.

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
No independent résumé semantic gate or clean-host PDF/DOCX demonstration is
claimed. Keep the implementation PR in draft and do not merge this partial work.
