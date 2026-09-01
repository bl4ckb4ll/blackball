# Volden–Wai–Wiseman congressional education data

This directory preserves a reproducible, credited import of the replication archive for:

> Craig Volden, Jonathan Wai, and Alan E. Wiseman, “On the Decline of Elite-Educated Republicans in Congress,” *Perspectives on Politics* 24(1), 2026, first published online August 27, 2025. https://doi.org/10.1017/S1537592725102260

Dataset citation:

> Volden, Craig; Wai, Jonathan; Wiseman, Alan E., 2025, “Replication Data for ‘On the Decline of Elite-Educated Republicans In Congress’,” Harvard Dataverse, V1. https://doi.org/10.7910/DVN/SZOD5E

## Thanks

Blackball thanks Craig Volden, Jonathan Wai, and Alan E. Wiseman for assembling, checking, documenting, and publicly depositing member-level educational and legislative data covering half a century of the U.S. Congress. Their decision to publish the replication archive makes it possible to inspect the distinctions Blackball needs—undergraduate, law, business, and other graduate education—without rebuilding the record from anecdotes.

Any Blackball normalization, extension, or interpretation is Blackball’s responsibility, not theirs.

## License and redistribution

The Harvard Dataverse deposit labels dataset version 1.0 **CC0 1.0** (`CC0-1.0`): https://creativecommons.org/publicdomain/zero/1.0/

That public-domain dedication permits copying, redistribution, and adaptation. Citation is not imposed as a CC0 condition, but Blackball cites the creators because scholarly credit and traceable provenance matter.

This statement applies to the Dataverse deposit. The Cambridge article has its own publication terms and is not mirrored here.

## What is preserved

`manifest.tsv` pins:

- Harvard Dataverse version 1.0;
- immutable Dataverse file IDs;
- upstream filenames and sizes;
- the MD5 values reported by Dataverse;
- SHA-256 values for the bytes returned by the public access endpoint on 2026-09-01.

Run:

```sh
./fetch.sh
```

The command downloads the seven public upstream files into `mirror/` and refuses any file whose downloaded bytes do not match the pinned SHA-256 value. The large generated mirror is ignored by Git: Dataverse remains the authoritative preservation copy, while any Blackball checkout can reconstruct and verify an exact working snapshot. This avoids presenting an unversioned fork as the authors’ archive.

The Dataverse tabular downloads are TSV renderings of the deposited Stata tables. Their downloaded-byte hashes can differ from the MD5 values Dataverse reports for its stored tabular objects, so the manifest retains both values and names what each verifies.

## Rules for later Blackball use

- Keep the original imported fields alongside any normalized fields.
- Never silently treat “Harvard” or “elite education” as undergraduate-only.
- Distinguish source facts from Blackball-derived classifications.
- Cite the dataset DOI in derived tables and reports.
- Record transformations in code rather than editing imported rows by hand.
- Do not imply that Volden, Wai, or Wiseman endorse Blackball or its interpretations.
