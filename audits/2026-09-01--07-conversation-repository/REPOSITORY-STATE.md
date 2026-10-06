# Repository-state and implementation-history review

## Audit baseline

- Audit performed: 2026-09-07 UTC.
- Fixed conversation/repository snapshot cutoff: 2026-09-07 20:22 UTC, when the first audit tree was committed. Later concurrent activity is disclosed below but excluded from the scored population.
- Blackball default-branch baseline: [`3b193df9c10c5880e7a7616f6305dc230679881b`](https://github.com/bl4ckb4ll/blackball/commit/3b193df9c10c5880e7a7616f6305dc230679881b), “Add family career-insurance / intellectual-deflection research lane (#89).”
- Audit worktree: `audit/sep-1-7-conversation-repository`; before this audit's files, the only local difference was the untracked audit directory itself.
- Searches covered `origin/main`, every fetched remote branch, pull-request refs where recoverable, recent commits, and related repositories. An absent judgment is not based on `main` alone.

## Repositories inspected

| Repository | Default-branch state relevant to Blackball | Non-default work relevant to the window | Audit judgment |
| --- | --- | --- | --- |
| [`bl4ckb4ll/blackball`](https://github.com/bl4ckb4ll/blackball) | 757 tracked files at baseline; substantial source, person, history, economics, education, and question nodes. | 87 fetched remote refs; many open PRs listed below. | Primary research repository. Default-branch and PR/branch state must be kept separate. |
| [`bl4ckb4ll/syllabus`](https://github.com/bl4ckb4ll/syllabus) | 69 files; Gresham, Clemente, philosophy assignments, and electronic-music material are on `main`. | USF parser/fixture, book-first acquisition, Common Crawl, poetry, and history branches. | Genuine evidence repository; several major acquisition efforts remain unmerged. |
| [`bl4ckb4ll/college-town`](https://github.com/bl4ckb4ll/college-town) | Bootstrap README only. | PR 1, `track-ann-arbor-providence`: four observations plus method (114 lines). | Adjacent place/class observation work, but no use of “street food” and far below the requested corpus. |
| [`bl4ckb4ll/euphemism`](https://github.com/bl4ckb4ll/euphemism) | Bootstrap README only. | PR 1, `initial-judge-spec`: relation-not-word method plus synthetic cases (164 lines). | Strong inference guardrail; no observed street-food corpus. |
| [`bl4ckb4ll/econometrician`](https://github.com/bl4ckb4ll/econometrician) | Bootstrap README only. | `wasserman-chi-square`: code, tests, five post/section notes (~1,049 lines). | Real statistical implementation, not a book summary. |
| [`bl4ckb4ll/cost-of-college`](https://github.com/bl4ckb4ll/cost-of-college) | Bootstrap README only. | PR 1, `hypothetical-families`: one Michigan flight-attendant household and income grid (six files/213 lines), no college comparison result. | Partial household-budget/affordability model; not the U-M/O'Reilly worker analysis or an empirical audit of “eat out less” advice. |
| [`bl4ckb4ll/sit-back-and-listen`](https://github.com/bl4ckb4ll/sit-back-and-listen) | Two TODO-style stubs. | No substantial ref found. | Does not implement the curated-app proposal. |
| `bl4ckb4ll/blackball-training-gym` (private) | Design README and phone collector/append-only-store commits. | `actblue-spam` and `phone-grease` branches. | Infrastructure exists; no training corpus or demonstrated Blackball model. |
| [`bl4ckb4ll/blackball-law`](https://github.com/bl4ckb4ll/blackball-law) | One bootstrap file. | `seed-legal-research-folders` (`6749209`): 55 paths/~356 lines; many skeletons or symlinks, but also readable Reuters/Bloomberg capture logs and a docket/transcript-backed *Loper Bright*/Paul Clement seed. | Substantial for the deliberately narrow provenance-first seed requested, but isolated and easy to overcount as 55 investigations. |
| [`bl4ckb4ll/post-graduation-plans`](https://github.com/bl4ckb4ll/post-graduation-plans) | No default-branch commit. | None found. | Empty. |
| [`bl4ckb4ll/accountable`](https://github.com/bl4ckb4ll/accountable) | No default-branch commit. | None found. | Empty. |
| [`bl4ckb4ll/rag-and-bone-man`](https://github.com/bl4ckb4ll/rag-and-bone-man) | No default-branch commit. | None found. | Empty; `isomorphisms/rag-bin` redirects here. |
| `bl4ckb4ll/eldridge` (private) | Bootstrap README committed Sep 4. | PR 1 / `394f442`: transcript-checked records of the user's “I only suggested it”/responsibility sayings. | Durable conversation evidence, not investigation of the mechanism; graded as trace evidence only. |
| [`isomorphisms/ai-ci`](https://github.com/isomorphisms/ai-ci) | The Blackball retrieval method is not on `main`. | `methodology/retrieved-context-reasoning` (`47ef5b2`) and `research/context-retrieval-methodology` (`1f4c2d`). | Substantial RAG methodology is stranded in two branches. |
| [`isomorphisms/fulton`](https://github.com/isomorphisms/fulton) | README only. | `young-tableaux-sources`, `source/sagan-symmetric-group-2e`, `diaconis-serre-first-pass`. | Source acquisition/notes exist; requested mathematical summaries remain partial. |

The organization also contained `college.scorecard` and `papers-we-love`; no deliberate in-window Blackball deliverable responsive to this audit was found there. They are not used to pad the denominator or completion count.

## Blackball pull requests and branches material to the audit

| PR/ref | State at cutoff | Durable content | Why state matters |
| --- | --- | --- | --- |
| [PR 89](https://github.com/bl4ckb4ll/blackball/pull/89), `family-career-insurance` | Merged Sep 7 | Family mechanism plus Tycho/Galileo/Darwin/Hubble cases and root links. | The only major Sep 7 checksum investigation actually integrated. |
| [PR 88](https://github.com/bl4ckb4ll/blackball/pull/88), `automotive-technician-pay` (`6621ab8`) | Open | Five files/~576 lines on flat-rate pay. | Real work exists, but the named audiovisual/social source capture remains incomplete and nothing is on `main`. |
| [PR 87](https://github.com/bl4ckb4ll/blackball/pull/87), `documentary-youth-trilogy` (`a006c9b`) | Open | Three files/~582 lines, method and Wang Bing source trail. | Not film-viewing evidence and not default-branch content. |
| [PR 86](https://github.com/bl4ckb4ll/blackball/pull/86), `ts-eliot-hale-archive` (`6a19358`) | Open | Two files/~126 lines. | Independently useful but isolated. |
| [issue 85](https://github.com/bl4ckb4ll/blackball/issues/85) | Open issue | U-M savings arithmetic and assumptions in comments. | Analysis in an issue is durable but is neither a merged source node nor the requested local-worker case. |
| [issue 84](https://github.com/bl4ckb4ll/blackball/issues/84) | Open issue | *A Free Life* acquisition prompt and source leads. | Shows notice, not reading; it omits the Szymborska pairing entirely. |
| [issue 64](https://github.com/bl4ckb4ll/blackball/issues/64) | Open issue | Four sourced “free education” cases and competing-motive questions. | This issue unusually clears the substantive threshold, but remains outside the information architecture. |
| [PR 83](https://github.com/bl4ckb4ll/blackball/pull/83), `seriously-not-a-single-one-of-you-said-sorry` (`e3c0db6`) | Open | 25-item coded corpus, search log, strict test, near-misses. | A strong negative-search result, still unmerged. |
| [PR 82](https://github.com/bl4ckb4ll/blackball/pull/82), `erin-brockovich-law-work` (`a22babb`) | Open | 31 files/~1,959 lines covering accountability, U-M, law, and adjacent cases. | Mixed quality: good framework/U-M boundaries, overstrong law-school prevalence language, and many unresolved case leads. |
| PRs 80 and 81 | Closed, unmerged | Earlier overlapping U-M/law work. | Git history supports supersession by PR 82; do not count three implementations. |
| [PR 79](https://github.com/bl4ckb4ll/blackball/pull/79), `add-roger-geiger-corpus` (`f76e550`) | Open | Eight files/~985 lines, mostly acquisition/bibliography records. | Large but explicitly mostly unread. |
| [PR 78](https://github.com/bl4ckb4ll/blackball/pull/78), `people/jim-simons` (`447140f`) | Open | One focused 147-line dossier. | Small but substantive; status and quality are different dimensions. |
| [PR 77](https://github.com/bl4ckb4ll/blackball/pull/77), `apprenticeship-entrepreneurship-alternatives` (`b77cdc4`) | Open | Entrepreneurship framework. | Does not contain the later selector-versus-customer case investigation. |
| [PR 76](https://github.com/bl4ckb4ll/blackball/pull/76), `apprenticeship-source-trail` | Merged Sep 3 | Usable nine-source apprenticeship trail. | Genuinely integrated. |
| [PR 75](https://github.com/bl4ckb4ll/blackball/pull/75), `notes/education-human-good-and-labor-infrastructure` (`8243302`) | Open since Sep 2 | Three files/~281 lines. | Predates and only partly captures the sharper Sep 7 positive-program discussion. |
| [PR 74](https://github.com/bl4ckb4ll/blackball/pull/74), `notes/danger-man-the-leak-teacher` (`4facaf2`) | Open | Exact-source folklore correction. | Substantial but isolated. |
| [PR 73](https://github.com/bl4ckb4ll/blackball/pull/73), `content/robert-frost-labor-poems` (`db0773b`) | Open | Two close-reading/source files. | Substantial but isolated. |
| [PR 72](https://github.com/bl4ckb4ll/blackball/pull/72), `history-common-knowledge-gaps` | Open | Method/seed list. | No demonstrated knowledge-gap denominator yet. |
| [PR 70](https://github.com/bl4ckb4ll/blackball/pull/70), `places/affluent-enclaves` (`860dbd3`) | Open | Nine place seeds, public statistics, method, and index. | Useful comparative-case scaffold, but case selection, outcomes, and causal tests remain incomplete. |
| [PR 67](https://github.com/bl4ckb4ll/blackball/pull/67), `dossier/hacker-dreifus-higher-education` (`d52b843`) | Open | ~1,122 lines, mostly intro/chapter 3 primary reading and secondary reconstruction elsewhere. | Self-described limitations prevent whole-book completion credit. |
| [PR 66](https://github.com/bl4ckb4ll/blackball/pull/66), `harvard-status-college-choice` (`b80ee62`) | Open | Status-choice context and a focused Adam Smith note. | Real contextual work, but the originating admissions thread and comparison sample are incomplete. |
| [PR 63](https://github.com/bl4ckb4ll/blackball/pull/63), `bionic-hamsters` (`1278bd0`) | Open | Three files/~1,192 lines on identity, scientific prestige, appearance/labor evidence, and inference safeguards. | Substantial case work; the later exact cosmetic-ad/Jon Harrell source was never captured. |
| [PR 59](https://github.com/bl4ckb4ll/blackball/pull/59), `bbc-radio-4-in-our-time` (`587414f`) | Draft/open | 390 files/~7,904 lines. | Automated breadth without transcript/listening provenance; line/file count is actively misleading. |
| [PR 54](https://github.com/bl4ckb4ll/blackball/pull/54), `why-we-have-to-go-to-high-school` (`ceb9b59`) | Open | Five files/~1,360 lines. | Substantial quantitative history, stranded off-main. |
| [PR 13](https://github.com/bl4ckb4ll/blackball/pull/13), `bme-undergrad-labor-market-dossier-2026-08-31` | Open | Six files/~1,115 lines. | Strong evidence but unavailable to a reader/model following the default repository URL. |
| [PR 10](https://github.com/bl4ckb4ll/blackball/pull/10), `add-non-book-media` | Open | 173 files including *Born Rich* and *Up*. | Catalog/dossier size does not prove viewing. |
| [PR 9](https://github.com/bl4ckb4ll/blackball/pull/9), `add-jeff-sharlet-dartmouth-finance-consulting` (`f5a5494`) | Open | Focused Dartmouth recruiting dossier and links. | Verifies a 49% finance/consulting example, not the claimed advanced-mathematics cohort or 90% magnitude. |

Other inspected unmerged branches include `paula-stephan-source-trail` (last commit Aug 30), `research/empire-podcast`, `eric-falkenstein-dossier`, `add-sarah-lawrence-salinger-class`, `places/affluent-enclaves`, `groton-school-winthrop-context`, `harvard-status-college-choice`, `bryan-stevenson-professed-values`, `add-eric-foner-reconstruction`, `sea-islands-freed-labor-autonomy`, and `add-lafargue-right-to-be-lazy`. Their per-item grades are in the ledger.

## Post-cutoff activity observed during final refresh

[PR 91](https://github.com/bl4ckb4ll/blackball/pull/91), `research/china-elite-networks-donor-dossiers` (`aa8a765`), opened at 20:53 UTC—after the fixed snapshot—adds three files on J. Kael Weston, T. V. Soong/Harvard/China policy, and the Eisenberg family/U-M donor network. History search recovered a 20:45 UTC Eisenberg request and a 21:06 UTC *China Mirage*/language-access follow-up, also after cutoff. The PR is real, open, and off-main; it is not silently folded into the 109-item denominator or used to improve the pre-cutoff rate. A successor audit should score it. This explicit boundary prevents a moving Sep 7 target from changing while the audit is being written.

## Implementation-history findings supported by Git

### Work existed but was never integrated

- Automotive pay, documentary film, Eliot, professor apologies, BME, high-school history, Frost, Ausubel, Jim Simons, Salinger, Falkenstein, bionic hamsters, and several history/source branches all contain real work but were not merged by the cutoff.
- The retrieved-context methodology was split across two `ai-ci` branches, neither on default. The earlier conversation referred to an issue/PR 58, but no current fetchable ref with that number remained; the Git objects themselves do remain.
- The USF effort produced both parser code and a real fixture, while a separate book-first branch records live-acquisition failure. Those branches were not reconciled into `syllabus/main`.

### Automated or scaffold work created a false completion surface

- `bbc-radio-4-in-our-time` created hundreds of episode/person files. Sampling shows catalog-level source support, generic biographies, and no transcript/listening/timecode trail sufficient for many content claims.
- `blackball-law:seed-legal-research-folders` is mostly folders/symlinks/skeleton text. Its readable capture logs and official-record case seed make the bounded seed package useful, but it is not 55 completed legal investigations.
- Empty repositories and one-file default branches (`accountable`, `post-graduation-plans`, `rag-and-bone-man`, and several bootstraps) were not counted as research.

### A job/prompt existed but the investigation did not follow

- Issue 84 is a detailed *A Free Life* research prompt, but no source reading, quotations, page notes, or branch followed.
- Issue 85 performed a first arithmetic pass but stopped before the user-requested local-worker case.
- The Geiger branch built a disciplined acquisition ledger but labels nearly every book “full text not inspected.”
- *Tally's Corner* on `main` is a reading/research plan without the reading.
- The Eldridge PR preserved transcript-checked formulations of the user's sayings; it did not test the responsibility mechanism those sayings name.

### Conversation-reported completion not supported by Git

The Kline thread reported a local branch `work/morris-kline-corpus`, commit `31a5e2c`, 32 files, and an 89-entry ledger. `git cat-file` did not find the commit; no local/remote branch, PR ref, filename, or content search found Kline in any inspected repository. Git cannot establish whether an ephemeral worktree once existed, whether a job failed before commit, or whether the report was fabricated. It establishes only the audit-relevant fact: **no durable repository work survived**.

### Supersession and duplication

- PRs 80 and 81 were closed without merge and superseded by the broader PR 82. Only the surviving content is graded.
- Baptist's productivity note exists at two paths on `main` through repository organization; duplicate routing is not counted as two investigations.
- Closely related Shorris/Clemente, class-reproduction, and education-accountability conversations were consolidated in the ledger to avoid completion inflation through fragmentation.

## What Git cannot prove

Git cannot prove why an absent request was lost, whether someone read an unrecorded source, or whether an ephemeral generated artifact once existed. The audit therefore does not assign psychological/operational causes to Kline, Downing, *Mechanics' Magazine*, curriculum assessment, expert delegation, MIT/crypto, or other absences. It reports the recoverable implementation state and marks causal explanation unknown.
