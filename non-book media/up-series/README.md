# The *Up* series — person × age index

This directory makes **person** and **age/installment** first-class filesystem indexes for the *Up* series.

## Canonical indexing rule

- Episode-wide material lives under [`by-age/`](by-age/).
- Participant-wide longitudinal material lives under [`by-person/`](by-person/).
- Every participant folder contains real Git symlinks to the age/installment files.
- The symlink named `70-up-prebroadcast.md` is context only. It does **not** assert that a participant appears in *70 Up*.
- Participation state is recorded in each person's `README.md`: `new`, `archive`, `tribute`, or `absent`.

The previous 641-line monolithic dossier is preserved unchanged as [`legacy-full-dossier.md`](legacy-full-dossier.md). It is a frozen migration/source snapshot, not the preferred index for new material.

## By age

- [7 — *Seven Up!* (1964)](by-age/07-seven-up.md)
- [14 — *7 Plus Seven* / *14 Up* (1970)](by-age/14-up.md)
- [21 — *21 Up* (1977)](by-age/21-up.md)
- [28 — *28 Up* (1984)](by-age/28-up.md)
- [35 — *35 Up* (1991)](by-age/35-up.md)
- [42 — *42 Up* (1998)](by-age/42-up.md)
- [49 — *49 Up* (2005)](by-age/49-up.md)
- [56 — *56 Up* (2012)](by-age/56-up.md)
- [63 — *63 Up* (2019)](by-age/63-up.md)
- [70 — *70 Up* (2026), pre-broadcast record](by-age/70-up-prebroadcast.md)

## By person

- [Andrew Brackfield](by-person/andrew-brackfield/)
- [Bruce Balden](by-person/bruce-balden/)
- [Jackie Bassett](by-person/jackie-bassett/)
- [Symon Basterfield](by-person/symon-basterfield/)
- [John Brisby](by-person/john-brisby/)
- [Peter Davies](by-person/peter-davies/)
- [Susan “Sue” Davis / Sullivan](by-person/sue-davis-sullivan/)
- [Charles Furneaux](by-person/charles-furneaux/)
- [Nicholas “Nick” Hitchon](by-person/nick-hitchon/)
- [Neil Hughes](by-person/neil-hughes/)
- [Lynn Johnson](by-person/lynn-johnson/)
- [Paul Kligerman](by-person/paul-kligerman/)
- [Suzanne “Suzy” Lusk / Dewey](by-person/suzy-lusk-dewey/)
- [Tony Walker](by-person/tony-walker/)

## Retrieval rule

When retrieving a claim, preserve both coordinates whenever possible: `person@age`, for example `Tony@28` or `Jackie@56`. Do not quote a childhood statement as an adult's current view, and do not treat nonparticipation as missing-at-random.

The continuing longitudinal cohort is fourteen people. *Seven Up!* itself included additional children who did not become part of the continuing cohort; identifying and indexing those one-installment participants remains separate work rather than silently inventing names from memory.
