# Amazon Software Development snapshot

Retrieval started: `2026-09-16T15:57:26Z`  
Retrieval finished: `2026-09-16T15:57:53Z`

- Amazon `/en/search.json` initial hit count: **2613**
- Raw search records fetched across 27 pages: **2613**
- Unique source-record ids: **2613**
- Requisition records after deduplication on Amazon's numeric job id: **2613**
- Duplicate requisition records removed: **0**
- Records without a recoverable numeric Amazon job id: **0**
- Requisitions with any compiler-related screening mention: **120**
- Compiler core candidates before human audit: **12**

This is a requisition inventory, not a count of hires, vacancies filled, or employees. Amazon's search index can change during pagination, so `initial_hits`, raw source records, and deduplicated requisitions are preserved separately.

The JSON `id` is stored as `source_record_id`; the public numeric requisition number parsed from `/jobs/<number>/...` is stored as `amazon_job_id`. The general `domain_tags` are mention-based screening tags and overlap heavily; they are not occupational shares.

Compiler screening is stricter: `any_mention` means compiler-related language appears somewhere in the posting, while `core_candidate` requires an explicit compiler title or explicit compiler-work language outside a detected centralized/fungible pipeline. Even `core_candidate` remains a machine-generated review queue until inspected.

Full posting bodies were used transiently for classification but are not committed. `source_record_sha256` hashes the canonical source record seen during acquisition.
