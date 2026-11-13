# Execute the BME checks through Fieldmouse

## Type sketch and scope

Input: a declared absolute repository directory and the unchanged finite TSV
fixture corpus. Files enter as dense byte arrays through Fieldmouse readBytes.
Strict UTF-8 decoding returns either Unicode text or BME-UTF8. TSV parsing then
returns a named table or one diagnostic. Domain validation returns decisions or
one diagnostic; expected rejection is a value rather than a runtime exception.
Output: the case ID, observed diagnostic/decision and final case count. Failure
stops with status 1. No external program performs any validation step.

Counts and minor-unit money remain canonical decimal text. Comparison uses
length and individual decimal digits, preserving values beyond the runtime's
Double integer range. Byte values and Unicode scalars are bounded integers;
calendar arithmetic is restricted to four-digit years. Empty fields, escaped
control characters, extension columns and exact source bytes must round-trip.

## Actual execution route

Fieldmouse's current standalone interpreter is master at
1b18318de1a69991d080df4ea9625a21da9b1cd7. Cat Food's edric-rewrite entry names an
older language implementation and cannot establish this runtime. The current
Fieldmouse workflow declares the supported Idriç compiler pin
94dfd99bd3e376507fedc8611053b7173b2519f0. No retained current runtime package was
found in its releases or latest successful workflow artifacts. The established
source bootstrap/build procedure is being used on Debian 13 x86_64.

The source runtime needed three focused capabilities: codePoints(text),
fromCodePoints(scalars) and readBytes(path). Their implementation belongs to
Fieldmouse. check.fm consumes them; it does not route through Node, a subprocess,
the former JavaScript checker or a handwritten native replacement.

The prior Node result is historical evidence of the earlier program only.
Current execution results and exact compiler/runtime identities belong in
contract-v1/execution.tsv after they are actually observed.

## Observed result

The owned compiler built and ran BmeObservation.idric. Fieldmouse's extended
standalone runtime built and passed114 owner tests and3 compiler refusals.
check.fm then exited0 with29 passing checks: the original22 and7 targeted
multibyte/exact-decimal cases. Expected verdicts remain in the independent
fixture manifest; malformed data is rejected through the same parser/decoder.
The runtime's source and compiled payload digests are in execution.tsv.
