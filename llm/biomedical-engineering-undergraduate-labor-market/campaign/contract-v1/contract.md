# BME observation contract v1

Contract identity: `bme-observation-v1`. This is a finite domain interchange
agreement for SUN-BB-BME-00. It neither replaces original files nor declares
providers qualified. Consumer changes require a new contract identity or a
documented lossless extension; old observations remain recoverable.

## What the records mean

Blackball owns questions, atomic claims, source attribution, scope/time and
disagreement. College-town owns dated place/price observations; cost-of-college
owns affordability and cash availability. ai-ci owns reusable enforcement.
This directory only defines the BME fields, mappings and finite counterexamples.
Job 00 owns this contract and program index; job 34 integrates contributions
later. Independent research and canonical Pythia reproduction need not wait.

The subject is a capable, hardworking, interested prospective student. South
Dakota origin supplies no income, assets, preferences, temperament or willingness
to move. Assumptions are explicit and editable. Degree completion, eligibility,
competitiveness, vacancy, interview, offer and graduate outcome are distinct.

## Transport

Keep original CSV and externally required JSON unchanged. A contribution may
use those formats with a declared field mapping. The small fixtures here use
UTF-8 TSV with LF endings, a unique named header, fixed field count and final LF.
No raw tabs, CR or LF occur inside a field. Encode backslash as `\\`, tab as
`\t`, LF as `\n`, CR as `\r`, in that order; decode once. Unknown escapes,
invalid UTF-8, duplicate columns and truncated final lines are rejected.
Unicode is not normalized. Empty field is a known empty string, not missing
information. `UNKNOWN` is reserved for unavailable values; literal content
equal to that token must be accompanied by a `*_state=known` extension. Consumers
must retain unknown columns and their values unchanged or reject the version;
silently discarding them is not a round trip. Extensions cannot override a
required field. Parser preservation does not establish semantic understanding.

## Common observation envelope

| Field | Meaning and obligation |
| --- | --- |
| contract_version | Exactly bme-observation-v1 |
| observation_id | Stable locally allocated identity; never generated solely from title/text |
| revision_id | Immutable version of that observation; changed content needs a new revision |
| supersedes | Prior revision or UNKNOWN; corrections append rather than overwrite |
| record_kind | source, program, vacancy, place, money, narrative, assumption or claim |
| source_id | Stable source identity, separate from URL aliases and observation identity |
| source_locator | Direct URL or source-bound repository path; UNKNOWN only with explicit gap reason |
| source_span | Section/page/paragraph/row or byte range; whole document must be explicit |
| source_digest | Digest of retained source bytes when available; algorithm named; UNKNOWN allowed with reason |
| evidence_kind | original_user, original_model, reconstruction, source_assertion, checked_observation, interpretation or synthetic |
| source_time | Time of source publication/event, not automatically retrieval time |
| source_time_precision | instant, day, month, year, range or unknown; must match available evidence |
| observed_time | When this observation was actually collected, with actual precision |
| observed_time_precision | Same precision vocabulary; no fabricated midnight or timezone |
| timezone | Required for instants; UNKNOWN for dates with no justified zone |
| valid_from / valid_to | Asserted validity interval with separate precision, or UNKNOWN; not inferred from retrieval |
| query / filters | Actual acquisition inputs, or explicit NOT_APPLICABLE with reason |
| collection_scope | Source population/pages/endpoints/cursor bound and inclusion rule; nonempty |
| geography | Actual worksite/venue/campus resolution or UNKNOWN with reason |
| retrieval_state | complete, partial, failed or not_attempted |
| records_returned | Nonnegative exact count or UNKNOWN; counts only observed records |
| classification_state | not_attempted, partial or complete |
| qualifying_records | Known count only under declared classification rule and covered records |
| classification_rule | Versioned inclusion rule or NOT_APPLICABLE |
| claim | Narrow statement supported by this record |
| limitation | Missing coverage, unresolved sources and prohibited extrapolations |

Common fields can live in an immutable contribution-level envelope referenced
by rows; the linkage must be explicit and available to the consumer. Do not
manufacture row-level precision from a less precise shared envelope.

## Empty and failed results

Complete retrieval of a declared scope with zero returned records permits
`complete-empty` for that scope only. Partial retrieval with zero returned
records is `partial-empty`. Failure is `failed-retrieval`, even if a client
returns an empty array. A completed classification that accepts zero records
is `zero-qualifying` for the classified records, and retains retrieval coverage
separately. Unknown counts never become zero. A failed acquisition cannot be
used as a market absence observation. Successful retrieval can remain
unclassified. Repetition of one source is not independent corroboration.

## Domain records

Program: stable program ID, provider repository and immutable ref, command,
operation, transport, credential names, coverage, evidence locator, actual
acceptance stages and first missing capability. A documented API is not an
implemented client; an implemented client is not current live permission.

Vacancy: employer/source vacancy ID if available, local identity, advertised
role, degree/experience requirements with source spans, worksite identity,
remote eligibility, posted/closed/observed times and identity relations.
Record possible duplicates and reposts explicitly. Advertisement count is
neither distinct opening count nor employed-person stock. Eligibility is not
an offer; degree completion is not eligibility.

Place: local place ID and sourced aliases, kind (worksite, campus, residence,
venue, headquarters, municipality or region), resolution and geometry source.
Unknown worksite cannot be filled from corporate headquarters. Claimed walking
time retains endpoints, mode, route source and observation time.

Money: integer minor-unit amount, currency, scale, price kind (sticker, net,
grant, loan, wage, rent, deposit or fee), gross/net state, period, basis, quantity,
due date, availability date and financing condition. UNKNOWN is admissible;
calculation requiring it remains unresolved. Scale is the decimal exponent:
scale=2 means 100 minor units per major unit;
it does not mean a multiplier of two. Retain the source currency/scale even if
another representation is used for an explicit calculation.
Basis means person, bedroom, unit, item or another explicitly sourced denominator.
Installment is not month,
academic year is not calendar year, and grant is not loan. A change of basis
needs sourced occupancy/quantity and an explicit derivation. A loan can fund a
cash inflow but creates a separate liability; award does not imply available
cash before first pay or a deposit deadline. No binary floating-point money.

Narrative: stable source/account identity, source spans, event sequence with
date precision, speaker/author, selection method, absent/deleted context,
interpretation and competing interpretation. Selected testimony is not a
prevalence denominator. Minimize person identifiers in published synthesis.

Assumption: scenario ID, parameter, explicit value/state, units, author and
rationale. A synthetic student's budget is never an observed household fact.
Scenario feasibility is conditional on every required observation/assumption.

Claim: source-linked proposition, supported conclusion, unsupported extension,
counterevidence and evidence needed to decide. Perception and recommendation
are separate from outcome measurement and tested intervention effects.

## Identity and correction

Two rows with the same observation/revision ID and different content are a
collision and must fail. An identical repeated row can be deduplicated only
with its occurrence/provenance retained. A later observation of changed price
or availability gets a new revision and supersedes link; it never edits a
historical source snapshot. Source aliases, duplicate hypotheses and independent
observations are relations, not a destructive merge of IDs.

## Receipt and evidence boundaries

See receipt-requirements.md. Source review, fixture checks, live acquisition,
typechecking, model execution and physical acceptance have separate rows or
fields with status, reason and evidence locator. PASS requires evidence of the
same stage for the exact inputs; source inspection cannot satisfy live/physical
execution. NOT_RUN, BLOCKED and NOT_APPLICABLE are not passes. A consumer verifies
only the stage it actually needs and preserves every other limitation.

## Qualification

The finite fixture profile exercises one observation envelope plus derived
money/date/stage comparisons. The profile's fewer columns are not a replacement
for the envelope above: synthetic provenance and limits are supplied in
fixtures/README.md. It tests escapes, extension preservation, four empty/failure
states, missing scope, identity collision, date precision, money basis and stage
inflation. It does not certify arbitrary producers or authenticate their claims.
The Idriç attempt and separate fallback are under examples/autogenerated/
bme-observation. A consumer still needs source-specific mapping and tests.
