# Training data

Temporary append-only data sink for the phone LLM training collector.

Application source lives in `isomorphisms/utilities-android-phone-user/llm-training`.

Records should be written as one JSON object per file:

```text
records/<trainer_username>/<year>/<month>/<record_id>.json
```

Every record must carry the trainer username. Trainer trust, demotion, exclusion, or weighting belongs in a separate downstream policy; do not rewrite raw records merely because a trainer's weight changes.

This branch is intentionally separate from the ordinary Blackball research corpus. A dedicated training-data repository can replace it later without changing the record schema.