# Independent PDF fixture writer

Purpose: produce tiny synthetic PDFs without using either candidate decoder or
its writer. This is fixture infrastructure, not a PDF intake implementation.

Type sketch: a `PdfPageFixture` contains a content stream, page dictionary
attributes and an image-resource flag. `render_pdf_fixture : List PdfPageFixture
→ Text` serializes numbered objects and a byte-accurate cross-reference table.
`write_fixture : Text → List PdfPageFixture → IO ()` writes one ASCII PDF.
All generated PDF syntax is ASCII, so scalar counts equal encoded byte counts.
ToUnicode mappings, including a surrogate pair, are ASCII hex strings.

Invariants: object lengths/xref offsets describe the exact serialized bytes;
page identity is never inferred from text; expected text/geometry are specified
in `_/resume/pdf-qualification.md` before reader output. The Unicode fixture
deliberately tests the logical ToUnicode mapping independently of the visible
Helvetica glyph shape. Visual inspection checks placement and page boundaries;
the explicit CMap is the independent oracle for that fixture's logical text.

Effects: new synthetic fixture files in an explicitly supplied directory;
no network, private input, external reader, or shell invocation. Target: the
existing source-pinned Idriç Chez compiler. The writer uses existing Text,
whole-number arithmetic and file IO; no language extension is proposed.

`PdfProbeChecks.idric` separately reads versioned observation rows and compares
the independently declared wording, Unicode scalars, page identities, decimal
geometry and image/blank outcomes. It uses exact integer decimal arithmetic,
not host Double arithmetic. Mutations drop text, merge pages, shift coordinates,
invent OCR wording and zero advances. A mutation control is BLOCKED when its
unchanged baseline fails; it cannot count as successful rejection.

`PdfSandboxProbe.idric` is a separate read-only Linux x86_64 syscall boundary:
query the Landlock ABI version and immediately read errno on failure. It neither
creates a ruleset nor claims isolation.

Executed with the actual rebuilt Idriç source pin and Chez backend. The writer,
checker and capability probe compile and run. Ten ordinary/control fixture PDFs
are produced without either decoder. Both decoder clients run on these plus
the independently written malformed/encrypted cases. Both intentionally fail
the independent qualification contract; those are reader results, not a
successful intake. Exact results and dependencies are under
`_/resume/pdf-qualification/`.

The checker's first build correctly refused inherited `readFile` beneath the
default total contract. Its two IO entry points now explicitly use `covering`,
and the execution wrapper bounds the generated reader output. An attempted
code-generation step after the refusal also reported an unbound FFI identifier;
no artifact from that attempt was counted as accepted. A later complete build
of the explicit contract executes successfully. This did not require another
language or a claim that Idriç lacks file IO. No core fallback was written.

Language work: no new Idriç primitive is required by the demonstrated writer,
checker or ABI query. The first remaining production boundaries are accurate
PDF font/Unicode observations and a qualified isolated reader process, not
evidence of an Idriç type-system limitation. No speculative language change is
proposed from these reader failures.
