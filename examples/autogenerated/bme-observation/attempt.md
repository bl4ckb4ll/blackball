# BME observation execution

## Type sketch

The Idriç example has retrieval coverage and known/unknown qualifying counts.
Its pure decision permits a scoped empty claim only for complete coverage and
a known zero count. It does not implement the entire TSV contract. The IO
entrypoint prints four contrasting decisions. The Fieldmouse checker implements
the finite interchange profile; see fieldmouse-attempt.md for its byte, text,
error and effect boundaries.

## Acquired compiler and actual result

The previous attempt checked only PATH and exited before source processing.
That failed environment probe did not establish that a compiler could not be
obtained. Idriç source was acquired from GitHub and pinned to Fieldmouse's
declared supported revision 94dfd99bd3e376507fedc8611053b7173b2519f0. Its established
edric bootstrap procedure acquired checksum-verified Chez10.4.1 and rebuilt
the owned compiler on Debian13 x86_64. This is an off-device build.

The actual compiler reports `Idris 2, version 0.8.0-94dfd99bd`. It requires the
matching IDRIS2_PREFIX=compiler/_/bootstrap-build and CHEZ=compiler/_/.tools/bin/scheme
environment used by Fieldmouse's existing workflow. Omitting that prefix first
failed Prelude lookup. With the prefix, compilation then exposed `partial` as
a reserved source word; the example alternative was renamed partial_coverage.
Its coverage meaning and expected results were unchanged.

From this directory, the acquired compiler's _/build/exec/idris2 was invoked
with --build-dir /workspace/scratch/17039cda87c1/bme-idric-build --cg chez
-o bme-observation BmeObservation.idric. Execution of the resulting Chez launcher
exited0 and printed exactly True, False, False, False. execution.tsv retains
absolute command/material identities and idric-results.txt retains the output.
No missing language feature or compiler defect was demonstrated.

## Fieldmouse result and prior substitution

check.fm executed through the owned standalone Fieldmouse interpreter and passed
29 cases: the original22 plus7 targeted Unicode/exact-decimal controls. It reads
file bytes, validates UTF8, parses/serializes TSV and checks the domain directly.
Node does not execute any stage of the current checks.

The former JavaScript helper was an unauthorized substitution. Its22-case output
is retained only as fixture-results-node-historical.tsv, with source recoverable
from preceding Git history. It is not Fieldmouse acceptance and is not required
for current reproduction. The active JavaScript source has been removed.
