# A focused Pandoc reader patch is justified

Blackball reuses the installed, pinned Pandoc 3.1.3 reader for DOCX. No fork is
needed to obtain a working ordinary DOCX path or original Word paragraph anchors;
the checked Idriç sidecar supplies those paths and retains header/footer text.

The independently authored `fixtures/docx/academic-document.xml` exposed a real
reader discrepancy: a Word run containing `A synthetic paper` followed by a
footnote reference produces only the footnote in Pandoc's model. The text is
lost. The control `academic-supported-document.xml` uses separate runs and
retains both text and footnote. Both source forms and the refusing regression
remain committed; the failing fixture was not overwritten to make tests green.

This was executed with the installed 3.1.3 binary and the official Linux x86_64
Pandoc 3.12.1 release. The newer release still loses the mixed-run text. Its
archive SHA-256 matches the digest supplied by GitHub release metadata:
`d0c90410e90204c9ca83b8539fac5c7aed01fd537207e4585849f8abc5df20b8`.
Version 3.12.1 was a comparison implementation, not a hidden replacement for
the configured 3.1.3 production boundary.

The inspected `elemToRun` implementation selects a whole run's footnote,
endnote or drawing child before its ordinary text branch. A focused patch should
preserve child order and run styling across text/reference/drawing combinations,
with positive controls for separate runs. Appending all text before a reference
would be wrong when text follows it. No uncompiled patch is presented as fixed.

Until such a patch is built and qualified, Idriç detects the missing body text
and returns `PandocModelSourceTextMismatch`, producing no misleading complete
draft. A fork or upstream patch for this precise reader defect is warranted;
a broad rewrite of Pandoc is not justified by this result.

Sources inspected:

- [Pandoc 3.1.3 reader source](https://github.com/jgm/pandoc/blob/c9825761338f56209f69782da0087f9e27fa577b/src/Text/Pandoc/Readers/Docx/Parse.hs)
- [Pandoc 3.12.1 reader source](https://github.com/jgm/pandoc/blob/e51c9c6054c8f4ec5c3209d5abe10939dfe2963e/src/Text/Pandoc/Readers/Docx/Parse.hs)
- [Official 3.12.1 release](https://github.com/jgm/pandoc/releases/tag/3.12.1)
- [Pinned Pandoc sandbox implementation](https://github.com/jgm/pandoc/blob/c9825761338f56209f69782da0087f9e27fa577b/src/Text/Pandoc/Class/Sandbox.hs)

The sandbox executes reader/writer operations in PandocPure with designated
input files. It is not an OS namespace. Fixed arguments exclude filters, Lua,
media extraction and PDF production, while each actual decoder/core process
has memory, CPU, output-file and descriptor limits. Whole-command elapsed time
is separately bounded. The sanitizer-built Grease controller cannot run under
the same address-space limit because it reserves a large virtual shadow region;
that exception applies to the trusted controller, not the document readers.
