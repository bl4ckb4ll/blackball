# Amazon Software Development snapshot

Retrieval started: `2026-09-16T15:53:58Z`  
Retrieval finished: `2026-09-16T15:54:25Z`

- Amazon `/en/search.json` initial hit count: **2613**
- Raw records fetched across 27 pages: **2613**
- Unique job IDs after deduplication: **2613**
- Duplicate page records removed: **0**
- Requisitions with any compiler-related screening mention: **120**
- Compiler core candidates before human audit: **12**

This is a requisition inventory, not a count of hires, vacancies filled, or employees. Amazon's search index can change during pagination, so `initial_hits` and the deduplicated count are preserved separately rather than forced to agree.

The general `domain_tags` are **mention-based screening tags** and overlap heavily. They are not occupational shares. Compiler screening is stricter: `any_mention` means compiler-related language appears somewhere in the posting, while `core_candidate` requires an explicit compiler title or explicit compiler-work language outside a detected centralized/fungible pipeline. Even `core_candidate` remains a machine-generated review queue until inspected.

Full posting bodies were used transiently for classification but are not committed. `source_record_sha256` hashes the canonical source record seen during acquisition.
