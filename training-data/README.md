# Training data moved

The phone LLM training collector and append-only training record store have moved to [`isomorphisms/blackball-training-gym`](https://github.com/isomorphisms/blackball-training-gym).

Do not add new records to this branch. The canonical record path in the dedicated repository is:

```text
records/<trainer_username>/<year>/<month>/<record_id>.json
```

This branch remains only as a migration pointer; it contains no training records.
