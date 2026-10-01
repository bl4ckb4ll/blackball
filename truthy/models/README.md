# Truthy model workers

Truthy deliberately does not own a model API.  A worker is any process with this contract:

```text
stdin   prompt/input
stdout  proposed analysis
stderr  diagnostics
status  0 on success, nonzero on failure
```

The runner records a human-readable model id and an exact revision label supplied by the caller, along with prompt/output hashes.

Initial comparison candidates are the families already under discussion for Blackball work: Qwen, GPT-OSS, and Pythia.  Do not treat the candidate name as a pinned model.  Record the exact checkpoint/revision when a worker is wired up.

Pythia training/inspection work remains in `fuego-ironworks/gym`; Truthy should call it as a worker rather than duplicate training ownership here.  Large weight blobs should not be silently committed to ordinary Blackball Git history.  The adapter, revision manifest, prompts, and outputs belong here; weight storage can remain in the model store used by the worker.

Running multiple workers on the same frozen evidence is useful because disagreement is itself a retrieval signal.  It is not a vote that manufactures truth.
