# Provenance and migration notes

## Source snapshot

- Repository: `one-room-schoolhouse/papers-we-love`
- Branch: `master`
- Commit: `395b2a1ed5ab964f07f1a1eb29311155125e2d08`
- Commit date: 2019-06-29
- Immutable tree: https://github.com/one-room-schoolhouse/papers-we-love/tree/395b2a1ed5ab964f07f1a1eb29311155125e2d08

The commit hash is the recovery key for this port. It fixes the original directory names, README text, links, Git blobs, and PDF bytes even if the source repository changes later.

## What was ported

The Blackball port records the corpus identity, topic structure, rights boundary, and selected cross-links into Blackball evidence dossiers. It intentionally leaves third-party binary papers in the pinned source repository unless a separate rights review establishes that Blackball may redistribute them.

This avoids two bad inferences:

1. **publicly reachable ≠ public domain**;
2. **present in an old Git repository ≠ licensed for a new mirror**.

The old repository remains useful as the byte-preserving historical source. Blackball supplies the provenance and retrieval layer around it.

## Future migration rule

When an individual paper is important enough to mirror locally, record:

- canonical title and authors;
- original publication venue and date when known;
- source URL;
- license or public-domain basis;
- SHA-256 of any mirrored file;
- the Papers We Love path and pinned Git blob/commit from which it was recovered;
- a Blackball summary that distinguishes the paper's claims from later evidence about whether those claims held up.

Do not infer redistribution rights solely from the source repository's historical decision to store a PDF.
