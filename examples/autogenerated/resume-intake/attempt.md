# Résumé intake implementation attempt

Purpose: receive a bounded local document, retain source evidence, interpret a
draft, and apply explicit review decisions without promoting claims to verified
facts. Job SUN BB-PARSE-RESUMES-01; branch parse-resumes; starting revision
d6a57ec658448651300d70a2936f966713aa8f5c.

The domain values are received bytes, inspected format, validated layout,
source anchors, documentary claims, uncertain readings, correction events,
drafts and reviewed snapshots. Constructors crossing stages must be hidden.

Intended operations:

- inspect_received_document : ReceivedDocument → Either IntakeError InspectedDocument
- validate_reader_output : InspectedDocument → ReaderOutput → Either IntakeError ValidatedDocument
- interpret_resume_document : ValidatedDocument → ResumeDraft
- apply_review_decisions : ResumeDraft → List ReviewDecision → Either ReviewError ReviewedSnapshot

Document claims require nonempty resolvable anchors and exact source wording.
Corrections refer to actor/revision events rather than invented quotations.
Review cannot be established by an empty correction list. Verification is a
separate process with no automatic transition in this program.

Effects: bounded local reads, isolated external document decoding, new output
directories, explicit review files and explicit deletion of managed records.
No model calls or document-controlled commands. Pure interpretation is separate
from file and process effects. Runtime target: Linux x86_64, Idriç Chez backend.

Compiler probe: the locally available source-pinned Idriç distribution is
94dfd99bd3e376507fedc8611053b7173b2519f0. Current source/style documentation is
also inspected at 0e8cfdd1106ebdeffd01b6c519880ea3afc7dc35. The first probe checks
the actual Text/Number vocabulary and Unicode arrows before choosing syntax.
Earlier conversational declarations are not assumed to compile.

Results and first language/runtime blockers are recorded in the job receipts.
No alternative implementation language is authorized for the core.

Executed result: the pinned Idriç compiler accepts Text, Number, Unicode arrows,
strict UTF8 decoding, SHA-256, private-constructor stages and claims, partial
dates, conservative interpretation, review events and local record I/O. The
producer test recipe compiles and executes them; it is not only a declaration
sketch. Complete reader and independent acceptance boundaries remain blocked as
recorded in _/resume/receipt.tsv.

The retained UnicodeSubtractionProbe.idric reproduces the first narrow frontend
limitation: declaring a Unicode subtraction operator fails parsing at this pin.
The core uses existing named whole-number subtraction and integer arithmetic
without changing compiler or backend. This probe is deliberately excluded from
the passing build. A next language test would compile that declaration and
execute its integer/whole-number meaning without affecting inherited source.

The practical blocking dependency for the complete program is a qualified
isolated PDF/DOCX reader with validated layout/anchors, not a demonstrated lack
of Idriç private constructors, strings or file I/O. No non-Idriç core fallback
was written. No broad language redesign is proposed from the reader failure.
