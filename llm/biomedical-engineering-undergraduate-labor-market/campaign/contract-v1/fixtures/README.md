# Synthetic fixture envelope

Every row is invented for finite contract qualification, with evidence_kind=synthetic,
contract_version=bme-observation-v1, source_id=BME00-SYNTHETIC, source_locator=this
directory, observed_time=2026-11-13 and observed_time_precision=day. Source digests
are in ../artifacts.tsv. source_time is stipulated fixture evidence, not publication
history. Geography, validity, query and filters are NOT_APPLICABLE because no service
is contacted. Prices, names and counts must not enter a real-world corpus.

The original_* and source_* fields are independent reference values fixed in these
fixtures; comparison against them tests a mapping. They are not authenticated source
truth. Changing both fixture reference and candidate could evade that check. Actual
consumer qualification must bind independent source bytes and their provenance.

cases.tsv declares expected verdicts independently from check.mjs. Negative cases
change a single material field except failed-as-zero (which tests the preserved
complete-empty tuple after a failure). collision.tsv changes content under one ID.
Escape fixture includes literal backslash-n and actual decoded tab/LF/CR, Unicode,
an unknown extension column and a known empty extension. Byte corruptions are
independent literal byte specimens in the witness. Exact byte re-encoding and
explicit decoded strings are both asserted.

The witness accepts only the fixture profile's year/month/day/unknown times and
identity preservation mappings. It does not implement every allowed full-envelope
time/derived-price relation. This is finite synthetic qualification, not production
schema enforcement or source authenticity.
