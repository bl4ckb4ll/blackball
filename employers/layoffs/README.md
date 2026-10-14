# Primary-filing layoff intake

**State (2026-10-14):** design and a manually verified Amazon pilot. The scheduled collector, state parsers, source-byte snapshots and independent ai-ci acceptance are **not implemented**. No feed is claimed to be operating.

Blackball should discover layoffs from the employers' filed documents rather than require a news story first. Reporters' articles may be useful leads, but they are never the authoritative source for a filing-derived observation.

## Upstream data

1. **SEC EDGAR:** For each tracked public-company CIK, read the [SEC submissions JSON](https://www.sec.gov/search-filings/edgar-application-programming-interfaces) (10-digit zero-padded CIK); enumerate accession, date, form, item metadata and original document. Form 8-K Item 2.05 is a **candidate screen**, not a positive layoff. Check the actual Item 2.05 paragraph and exhibits for explicit workforce reductions. Include 8-K/A corrections; inspect relevant 10-K/10-Q restructuring notes and 8-K Item 8.01 if they contain actual employment statements. A severance expense is not automatically a number of dismissed workers. For large backfills, use the SEC's nightly bulk submissions archive; for selected filers use incremental JSON. Identify the client and respect SEC fair access (no more than 10 requests/second total, with lower operational limits, retry/backoff, caches).
2. **State WARN filings:** The US Department of Labor does **not** provide a single national WARN notice database. Each state's agency is a separate source and publishes different formats, updates and histories. State adapters must preserve the agency's source URL, receipt date, effective dates, site, disclosed job-title counts, temporary/permanent language and amendments. Start with Washington, Michigan, California and New York; never claim unimplemented adapters have collected data.
3. **Company's own workforce announcements:** A first-party source of an employer's explanation and corporate-wide estimates, kept separate from statutory notices. A state WARN may be a subset of the same companywide round, so their headcounts must not be added.

See [sources.tsv](sources.tsv) for direct government entry points and coverage status.

## Data objects, not headlines

- **Source document:** authority, jurisdiction, legal filer, URL, agency notice ID or SEC CIK + accession, filing/agency-received/retrieved timestamps, document MIME, version, SHA-256, text extraction method, exact page/table/paragraph and, where lawful, a retained immutable source copy. A changed state listing is a new source version, not an overwritten historical fact.
- **Observation:** a claim tied to one source span. Record announcement/notice/effective dates **separately**; geography and facility; job title as stated; count and whether it describes planned affected roles, notified workers, completed separations, staffing change or restructuring expense; uncertainty/range; expected permanent/temporary status; original wording; extraction review state. Never fill missing job titles/counts with zero.
- **Event:** a hypothesis that several observations concern the same workforce action. Store parent-round and subset relationships separately. Keep SEC employer CIK, WARN legal-entity name, subsidiaries, brands and the broader employer catalog linked with sourced identity edges rather than name-only fuzzy merges.
- **Organization attachment:** join only to the narrowest **documented** business unit. Facility ID, street address, title or recruiting category does **not** prove AWS/Stores/PXT/team membership. An unattached layoff remains useful evidence, not a failure to invent a team.
- **Causal claim:** `AI_causation = unknown` unless an explicit attributable source asserts a causal mechanism. Even an employer assertion is an **assertion**, not independent proof that a particular eliminated position was replaced by AI. Record competing causes such as demand, costs, reorganization, offshoring and performance separately.

Never collect or publish affected workers' names, personal addresses, contact information or individual selection status from WARN attachments. Aggregate job-level data suffices.

## Exactness and failure states

Each adapter must produce a capture receipt (source URL, status, MIME, timestamp, original SHA-256, parser revision, rows accepted/rejected, field-level evidence coordinates, errors). Fail closed on unreadable PDFs, broken headers, bad numeric rows, silent page/table discontinuities, and unexplained disagreements between facility subtotals and a notice total. Flag amended, canceled or superseding notices explicitly. Deduplicate source documents by jurisdiction + notice ID/accession + revision, not by company name/date alone.

Keep **filing observed**, **layoff announced**, **positions in filing**, **actual separations**, **job family inferred**, and **AI attributed** as separate evidence states. Absence of a source is not evidence of absence of layoffs; these records are not a census of all firms or all lost jobs.

A historical vacancy inventory (e.g., Amazon's September 2026 advertised software requisitions) and a layoff notice measure **different populations**. Neither is the denominator for the other. Parent corporate announcements, local WARN notices and revised notices must not be summed as independent cuts.

## First audited extraction target

[Amazon's Washington notice dated January 29, 2026, received January 30](https://fortress.wa.gov/esd/file/WARN/Public/DownloadFile.aspx?download=1&file=a6d82fc5-3b7e-4b5b-8f9b-de2d0800173e.pdf): 24-page first-party PDF with facility counts, 116 Washington remote workers, separation dates commencing April 28, 2026, and job-title tables. The facility and remote totals in the notice add to **2,198 planned affected workers**. At Bellevue site **SEA104**, the original attachment lists Software Dev Engineer I **14**, II **36** and III **8**, hence **58** SDE I–III positions out of 134 site roles. [Verified title rows](../../FAANG/amazon/labor-change/2026-01-30-wa-warn-sea104.tsv) are a **human-inspected seed**, not output from an operating parser. The full statewide SDE total is still uncomputed and unverified by Blackball. Those counts are affected positions, not audited completed job losses. Department and AI cause remain unknown.

The notice explicitly says internal transfers before scheduled separation avoid actual separation. The filing itself does not attribute its layoffs to AI.

A positive SEC test document is [Adicet Bio's July 22, 2025 Item 2.05 8-K](https://www.sec.gov/Archives/edgar/data/1720580/000095017025097881/acet-20250722.htm), which directly states a roughly 30% workforce reduction. Also test **non-layoff** Item 2.05 filings, so section detection is not mistaken for extraction.

## Execution and independent acceptance

Route implementation through **Flexible Pipes → Kitchen/Ike**, with independent **isomorphisms/ai-ci** acceptance on the exact revision and parser/runtime pins. Use the repository's current Idriç/Ithon/Grease policy; adding standalone Python `.py` ingestion code would violate the shared AGENTS rules. This document does not grant a merge verdict.

Required acceptance cases:

1. A genuinely new original SEC filing yields one traceable observation, while an Item 2.05 filing about facility/property costs only yields **no confirmed layoff**.
2. The original Amazon notice is parsed end-to-end; all facility and remote counts reconcile to **2,198**, and the SEA104 title rows reconcile to **58**. A deliberately corrupted job-count row or truncated page must fail.
3. One amended WARN record must not create a second independent layoff; one corporate announcement plus a narrower WARN notice must not be added as separate non-overlapping headcounts.
4. Test a title match with no department proof, and a contemporaneous AI productivity announcement without job displacement proof: both must keep the unsupported join/cause **unknown**.
5. Ensure worker-level personal information is discarded, not written to output, caches, logs or CI artifacts.

**Next implementation step:** qualify one direct government acquisition path, preserve raw bytes/metadata, extract and test the Amazon source against its approved fixture. Expand state-by-state only after the first parser rejects known-bad inputs.