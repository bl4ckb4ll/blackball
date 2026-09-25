# BBC Radio 4 — In Our Time

This directory is the Blackball corpus for BBC Radio 4's *In Our Time*.

## Scope

The target is the full programme archive from 1998 onward.

- one topic folder for every non-repeat episode/topic
- one reusable people dossier for every guest
- original topic summaries rather than copied programme descriptions
- guest dossiers describing the person's field, why they matter to the topic, and every *In Our Time* appearance as coverage is ingested
- links in both directions between topic folders and people dossiers
- BBC programme pages as the canonical episode links

Nothing from this corpus should be placed at the repository top level. Keep it under `BBC Radio 4/In Our Time/`.

## Layout

- `topics/YYYY/YYYY-MM-DD — Topic/README.md`
- `people/Name.md`
- `COVERAGE.md` — ingestion status
- `SOURCES.md` — source hierarchy and verification rules

The date prefix preserves broadcast chronology and distinguishes repeated or similar titles.

## Names

People files use a stable human name rather than the title used on a particular broadcast. Source variants, honorifics, misspellings and changed titles should be recorded inside the dossier rather than made into separate people.

## Summaries

Summaries are written for retrieval and later model use. They should say what question the programme actually discusses, what each guest contributes, and what claims or distinctions are worth cross-linking elsewhere in Blackball. Do not dump transcripts or reproduce long copyrighted descriptions.
