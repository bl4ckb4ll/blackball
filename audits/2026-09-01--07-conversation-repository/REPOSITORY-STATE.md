# Repository-state and implementation-history review

## Scope actually inspected

The audit did not assume Blackball was one repository. It inventoried the fifteen repositories visible in the `bl4ckb4ll` organization, cloned/fetched the public Blackball-related repositories, inspected all remote branch heads in the main repository, queried PR state including private repositories, and checked the available local worktrees for uncommitted material.

The intentionally Blackball-related repositories with activity or a named project role were:

- `blackball`
- `blackball-law`
- `blackball-training-gym` (private)
- `college-town`
- `cost-of-college`
- `econometrician`
- `euphemism`
- `eldridge` (private)
- `post-graduation-plans`
- `rag-and-bone-man`
- `sit-back-and-listen`
- `syllabus`
- `accountable`

`college.scorecard` and `papers-we-love` were present in the organization inventory but no intentionally stored September 1–7 Blackball deliverable was identified in them. They are not used to award or deny completion credit in the ledger.

## Main Blackball repository

At cutoff:

| Measure | Result |
| --- | ---: |
| Default branch | `main` |
| Default-branch head | [`3b193df9c10c`](https://github.com/bl4ckb4ll/blackball/commit/3b193df9c10c5880e7a7616f6305dc230679881b) |
| Files reachable on `main` | 757 |
| Unique commits dated in window across all fetched refs | 221 |
| Unique commits dated in window reachable from `main` | 47 |
| First-parent `main` commits dated in window | 42 |
| Remote refs inspected | 87 |
| Remote branch heads not ancestors of `main` | 74 |
| Uncommitted files in inspected checkout before audit | 0 |
| Additional local worktrees registered | 0 |

The 74-head number includes old, overlapping, superseded, and open work; it is **not** a count of 74 independent missing investigations. It does establish that “a branch exists” is a very weak proxy for default-branch state.

The 221-versus-47 commit split is the clearest implementation-level explanation for the repository's misleading surface. A great deal was committed somewhere. Most of those in-window commits were not reachable from the default branch at cutoff.

## PRs created during September 1–7

Thirty-three main-repository PRs were created in the window:

- **5 merged:** [55](https://github.com/bl4ckb4ll/blackball/pull/55), [57](https://github.com/bl4ckb4ll/blackball/pull/57), [62](https://github.com/bl4ckb4ll/blackball/pull/62), [76](https://github.com/bl4ckb4ll/blackball/pull/76), [89](https://github.com/bl4ckb4ll/blackball/pull/89);
- **2 closed without merge:** [80](https://github.com/bl4ckb4ll/blackball/pull/80), [81](https://github.com/bl4ckb4ll/blackball/pull/81);
- **26 still open**, including draft PRs [58](https://github.com/bl4ckb4ll/blackball/pull/58) and [59](https://github.com/bl4ckb4ll/blackball/pull/59).

### Full main-repository PR state

| PR | State at cutoff | Subject | Audit significance |
| ---: | --- | --- | --- |
| [52](https://github.com/bl4ckb4ll/blackball/pull/52) | OPEN | Volden–Wai–Wiseman data | Pinned replication import remains off-main; main argument file is usable. |
| [54](https://github.com/bl4ckb4ll/blackball/pull/54) | OPEN | Why we have to go to high school | Substantial candidate work; originating conversation not independently recovered. |
| [55](https://github.com/bl4ckb4ll/blackball/pull/55) | MERGED | _Tally's Corner_ | Merged file is a reading/coding agenda, not a mined book. |
| [56](https://github.com/bl4ckb4ll/blackball/pull/56) | OPEN | Eric Falkenstein | Candidate dossier off-main. |
| [57](https://github.com/bl4ckb4ll/blackball/pull/57) | MERGED | Edward Baptist | High-quality contested source/argument work. |
| [58](https://github.com/bl4ckb4ll/blackball/pull/58) | OPEN DRAFT | Charles Murray and Nell Irvin Painter | Off-main; originating conversation not recovered. |
| [59](https://github.com/bl4ckb4ll/blackball/pull/59) | OPEN DRAFT | _In Our Time_ 1998–2001 | Large metadata corpus needs content-provenance rework. |
| [60](https://github.com/bl4ckb4ll/blackball/pull/60) | OPEN | _Empire_ podcast | Explicitly catalogue-level; not evidence of listening to 391 episodes. |
| [61](https://github.com/bl4ckb4ll/blackball/pull/61) | OPEN | Kirby and Feather | Off-main author/source dossiers. |
| [62](https://github.com/bl4ckb4ll/blackball/pull/62) | MERGED | Cultural-decay comparison | High-quality integrated argument work. |
| [63](https://github.com/bl4ckb4ll/blackball/pull/63) | OPEN | Bionic hamsters | Useful multi-source map with explicit link-by-link evidence limits; off-main. |
| [66](https://github.com/bl4ckb4ll/blackball/pull/66) | OPEN | Wealthy-family college choice / Adam Smith | Real class/status material, stranded. |
| [67](https://github.com/bl4ckb4ll/blackball/pull/67) | OPEN | Hacker and Dreifus | Off-main higher-education dossier. |
| [68](https://github.com/bl4ckb4ll/blackball/pull/68) | OPEN | Eric Foner | Off-main source node. |
| [69](https://github.com/bl4ckb4ll/blackball/pull/69) | OPEN | Lafargue | Off-main source node. |
| [70](https://github.com/bl4ckb4ll/blackball/pull/70) | OPEN | Affluent-place dossiers | Related to class/access; not integrated. |
| [71](https://github.com/bl4ckb4ll/blackball/pull/71) | OPEN | Sea Islands freed labor | Off-main source work. |
| [72](https://github.com/bl4ckb4ll/blackball/pull/72) | OPEN | History common-knowledge gaps | Off-main evidence queue. |
| [73](https://github.com/bl4ckb4ll/blackball/pull/73) | OPEN | Robert Frost labor poems | Substantial cultural-source notes, off-main. |
| [74](https://github.com/bl4ckb4ll/blackball/pull/74) | OPEN | _Danger Man_, “He feeds my mind” | Substantial source/mechanism note, off-main. |
| [75](https://github.com/bl4ckb4ll/blackball/pull/75) | OPEN | Positive college gradient | Real work but incomplete relative to later three-value distinction. |
| [76](https://github.com/bl4ckb4ll/blackball/pull/76) | MERGED | Apprenticeship source trail | Useful framework/source map; many sources still explicitly uninspected. |
| [77](https://github.com/bl4ckb4ll/blackball/pull/77) | OPEN | Apprenticeship / entrepreneurship alternatives | Develops null alternative/costless counsel; does not address selector-versus-customer approval. |
| [78](https://github.com/bl4ckb4ll/blackball/pull/78) | OPEN | Jim Simons | Strong evidence-boundary work, off-main. |
| [79](https://github.com/bl4ckb4ll/blackball/pull/79) | OPEN | Roger Geiger | Strong acquisition/claim framework; exact central passage unresolved. |
| [80](https://github.com/bl4ckb4ll/blackball/pull/80) | CLOSED, NOT MERGED | MIT employment | Superseded into PR 82, which remains open. |
| [81](https://github.com/bl4ckb4ll/blackball/pull/81) | CLOSED, NOT MERGED | Bryan Stevenson | Superseded into PR 82, which remains open. |
| [82](https://github.com/bl4ckb4ll/blackball/pull/82) | OPEN | Education accountability, law, U-M retail, Main Street | 31 files/1,959 additions; real work mixed with leads and an overstrong sabotage claim. |
| [83](https://github.com/bl4ckb4ll/blackball/pull/83) | OPEN | Professor apologies | Substantial negative-result investigation, off-main. |
| [86](https://github.com/bl4ckb4ll/blackball/pull/86) | OPEN | Eliot/Hale | Substantial archive dossier, off-main. |
| [87](https://github.com/bl4ckb4ll/blackball/pull/87) | OPEN | Wang Bing / documentary lane | Strong lane plus partial trilogy mining, off-main. |
| [88](https://github.com/bl4ckb4ll/blackball/pull/88) | OPEN | Automotive technician pay | Strong broad audit; supplied video remains a metadata trace. |
| [89](https://github.com/bl4ckb4ll/blackball/pull/89) | MERGED | Family career insurance | Content is on main via squash commit `3b193df`; branch-head ancestry alone would misleadingly say otherwise. |

There were no PRs 84 or 85 in the repository at cutoff.

## Related repository default branches

| Repository | Default-branch state at cutoff | Off-main state relevant to audit | Evaluation |
| --- | --- | --- | --- |
| `accountable` | No default-branch commit | None found | Empty name only; cannot support career-office/accountability completion. |
| `blackball-law` | [`main@2ac388b`](https://github.com/bl4ckb4ll/blackball-law/commit/2ac388be44a1a342d33ad6b61d38bcf1df4c44d5), one file | [`seed-legal-research-folders@6749209`](https://github.com/bl4ckb4ll/blackball-law/tree/6749209), no PR | Substantial seed stranded on a branch. |
| `college-town` | [`main@0b49660`](https://github.com/bl4ckb4ll/college-town/commit/0b496608118660217d72ff375c4b0c47fa5c2baa), one file | [PR 1](https://github.com/bl4ckb4ll/college-town/pull/1), head `b2aa309`, open | Real Ann Arbor/Providence price/place work; does not contain “street food.” |
| `cost-of-college` | [`main@0a5bc38`](https://github.com/bl4ckb4ll/cost-of-college/commit/0a5bc38e37fa), one file | [PR 1](https://github.com/bl4ckb4ll/cost-of-college/pull/1), head `ff682a4`, open | Careful family/AGI/FAFSA prototype; no completed college aid result. |
| `econometrician` | [`main@83b1b29`](https://github.com/bl4ckb4ll/econometrician/commit/83b1b29c54eb), one file | [PR 1](https://github.com/bl4ckb4ll/econometrician/pull/1), head `c32c594`, open | Substantial checked chi-square/bootstrap implementation, but not a requested Blackball intellectual deliverable in the recovered conversation set. |
| `euphemism` | [`main@8a03f66`](https://github.com/bl4ckb4ll/euphemism/commit/8a03f66ad9fb), one file | [PR 1](https://github.com/bl4ckb4ll/euphemism/pull/1), head `991761e`, open | Substantial motive/causation refusal contract, isolated. |
| `post-graduation-plans` | No default-branch commit | None found | Empty; the intended plan-versus-outcome work did not start. |
| `rag-and-bone-man` | No default-branch commit | None found | Empty. |
| `sit-back-and-listen` | [`main@6eb5eb3`](https://github.com/bl4ckb4ll/sit-back-and-listen/commit/6eb5eb3be675), two files | No Sep 1–7 substantive branch found | Mike Haduck index stub predates the window; not documentary-lane implementation. |
| `syllabus` | [`main@e309eb3`](https://github.com/bl4ckb4ll/syllabus/commit/e309eb3df4bc), 69 files | [draft PR 5](https://github.com/bl4ckb4ll/syllabus/pull/5) USF; [PR 14](https://github.com/bl4ckb4ll/syllabus/pull/14) history gaps; [PR 15](https://github.com/bl4ckb4ll/syllabus/pull/15) Frost | Main has real curriculum/source indexing; key recent additions remain open. |
| `blackball-training-gym` | Private `main@8ae5475` | [draft PR 2](https://github.com/bl4ckb4ll/blackball-training-gym/pull/2), head `9313661`, open | Six commits/4 files/732 additions; explicit real-Termux acceptance pass is not yet claimed. Infrastructure, not fulfillment of the research topics. |
| `eldridge` | Private `main@a6f648c`, one-line bootstrap | [PR 1](https://github.com/bl4ckb4ll/eldridge/pull/1), head `394f442`, open | Seven sayings plus evidence boundaries; useful conversation provenance, not research completion. |

## Default branch versus branch/PR: important cases

| Work | Default branch | Branch / PR | Audit treatment |
| --- | --- | --- | --- |
| Tycho / family career insurance | Present on `blackball/main` at `3b193df` | PR 89 merged by squash | SUBSTANTIALLY INTEGRATED. |
| Eliot/Hale | Absent from `main` | PR 86 open, head `6a19358` | SUBSTANTIAL BUT ISOLATED. |
| Documentary lane / _YOUTH_ | Absent from `main` | PR 87 open, head `a006c9b` | Lane substantial; trilogy partial. |
| Automotive pay / Flat Rate Master | Absent from `main` | PR 88 open, head `6621ab8` | Broad audit substantial; video trace only. |
| Positive college value | Absent from `main` | PR 75 open, head `8243302` | PARTIAL relative to three-value request. |
| Geiger / Johns Hopkins | Absent from `main` | PR 79 open, head `f76e550` | PARTIAL because exact source remains unresolved. |
| Professor apology corpus | Absent from `main` | PR 83 open, head `e3c0db6` | SUBSTANTIAL BUT ISOLATED. |
| BME labor-market dossier | Absent from `main` | PR 13 open, head `a6d5dea` | SUBSTANTIAL BUT ISOLATED. |
| Blackball Law seed | Default branch is one-file bootstrap | Branch `6749209`, no PR | SUBSTANTIAL BUT ISOLATED. |
| USF parser | Absent from `syllabus/main` | Draft PR 5, head `458a580` | SUBSTANTIAL BUT ISOLATED. |
| Eldridge sayings | Default branch one-line bootstrap | PR 1 open | TRACE unless a linked argument has separate work. |

## Recoverable implementation history

### Work written but not merged

This is the dominant recoverable cause. Eliot, documentary, automotive pay, positive college value, Geiger, professor apologies, Jim Simons, BME, Frost, _Danger Man_, the USF parser, and multiple class/status dossiers all have durable commits but remain outside the default branch.

Git history establishes the state; it does **not** establish why reviewers or the owner did not merge them.

### Closed slices consolidated into an open bundle

[PR 80](https://github.com/bl4ckb4ll/blackball/pull/80) and [PR 81](https://github.com/bl4ckb4ll/blackball/pull/81) were closed without merge on September 3. Their subjects were not simply discarded:

- PR 82 contains `MIT/employment-promise-and-academic-self-reproduction.md` and a later commit titled `Consolidate MIT employment and academic self-reproduction note`;
- PR 82 contains the Bryan Stevenson source material and commits titled `Include Stevenson professed-values source note` and `Link Stevenson law-professor accountability note`.

The successor is still open, so the work is durable but not on `main`.

### Source acquisition or scaffolding without the requested interpretation

- Geiger: bibliography, machine-readable works ledger, Gilman source, and retrieval queue exist; the central Geiger page/wording is still unverified.
- Flat Rate Master: metadata exists; transcript/timecoded content does not.
- _YOUTH_: festival/distributor/press-kit material exists; full film viewing and independent labor corroboration do not.
- _Tally's Corner_: bibliography and a detailed future coding plan are merged; the book was not mined.
- Apprenticeship: a strong source ledger/retrieval framework is merged; many entries explicitly remain to be inspected.

### Automated or bulk structure that outran evidence

The _In Our Time_ branch created a large, well-linked catalogue structure. The coverage manifest verifies metadata, while topic and guest prose often reads as content knowledge. No Git evidence proves content-level inspection. The branch needs an evidence-state correction before additional ingestion.

### Infrastructure that did not become the research deliverable

The private training-gym PR and the USF parser contain real implementation work. They should not be counted as completion of unrelated Blackball arguments or sources. The training-gym PR explicitly says the real Termux acceptance gate has no PASS receipt yet.

### Conversation requests with no recoverable implementation cause

For Morris Kline, street food, epistemic delegation, the Terkel extension, MIT 15.S12, Trent Parker, additive manufacturing, Cherrier/“Markets That Aren't Markets,” comparative advantage, Szymborska, post-graduation plans, the career-office fundraiser source, and the exact college-luxury saying, Git shows no responsive work.

The audit can establish **absence**. It cannot establish whether a job was never written, a job failed before committing, or the request was forgotten. No cause is assigned without history evidence.

## Local and uncommitted state

Before creating this audit branch, every inspected public checkout was clean. Each had only its primary worktree registered. No relevant uncommitted file, abandoned registered worktree, or local-only topic patch was found.

That statement is limited to the workspace and remote refs available to this audit. It is not a claim about devices or clones that were not mounted here.

## Repository activity excluded from the conversation denominator

The window contains significant repository work for which no originating conversation could be recovered from the available history. It is retained here so the audit does not call it nonexistent, but it is not allowed to inflate the 48-item conversation completion rate.

Notable examples include:

- high-school history, PR 54;
- _Tally's Corner_, PR 55;
- Eric Falkenstein, PR 56;
- Edward Baptist, PR 57;
- Charles Murray/Nell Irvin Painter, PR 58;
- _Empire_ podcast, PR 60;
- Kirby/Feather, PR 61;
- cultural-decay comparison, PR 62;
- wealthy-family admissions/status, PR 66;
- Hacker/Dreifus, PR 67;
- Eric Foner, PR 68;
- Lafargue, PR 69;
- affluent places, PR 70;
- Sea Islands freed labor, PR 71;
- history common-knowledge gaps, PR 72;
- apprenticeship source trail, PR 76;
- the `econometrician` checked implementation, PR 1.

This separation is important. A repository-first reconstruction would mistake every PR for a conversation item and then congratulate the repository for covering the list it generated from itself.
