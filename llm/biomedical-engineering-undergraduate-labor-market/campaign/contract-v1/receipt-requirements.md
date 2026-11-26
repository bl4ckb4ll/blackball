# Receipt requirements

Use UTF-8 TSV `field value` (literal tab separator), or a declared lossless
mapping of an existing owner receipt. Retain original owner receipt bytes.

Required identity fields: job_id, owner_repository, inspected_ref,
inspected_head, result_head, dirty_state, observed_date,
observed_date_precision, timezone, contract_version, input_receipts,
input_digests, output_paths, output_digests, first_blocker, remaining_work,
next_consumer. An unfinished working tree uses result_head=UNCOMMITTED.
After commit, an external handoff binds the actual commit; do not attempt a
self-referential hash inside that commit. artifacts.tsv excludes itself and
explains that exclusion; a delivery receipt hashes the manifest separately.

Each stage (source_review, fixture_checks, live_acquisition, typecheck,
model_execution, physical_acceptance) has a status, reason and evidence locator.
Statuses are PASS, FAIL, BLOCKED, NOT_RUN or NOT_APPLICABLE. If mapping an ai-ci
receipt that uses NOT_VERIFIED or SKIP, retain that raw label and explain its
domain projection; never turn it into PASS. Mandatory absent/blocked stages
prevent complete acceptance, while independent completed stages remain valid.

Synthetic fixture checks permit fixture_checks=PASS only. Inspecting a provider
permits source_review=PASS only. Downloading a research paper is paper acquisition,
not successful operation of a vacancy client. Claiming a physical PASS requires
an actual identified device, exact artifact and observed behavior. No BME-00
fixture manufactures such evidence.

A downstream contribution names bme-observation-v1 and the exact contract.md
digest it consumed. It supplies the source/field mapping, original source locator,
coverage/gap state and contradiction links. A changed required field or changed
meaning invalidates the old qualification. Job 34 accepts contributions one at a
time after checking these obligations; no concurrent root-index writes.
