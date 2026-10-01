# Synthetic role-specific public-profile lens

This is a testable descriptive model for reading a public technical profile against the
**AI Systems Engineer, Codex Agents** work surface.

It is not a reconstruction of OpenAI's recruiting process, an applicant-tracking system,
or the beliefs of any named employee. It does not rank candidates or recommend hiring decisions.

## Goal

Given:
1. the role evidence in this directory; and
2. a bounded snapshot of a public technical profile,

record what a technically careful reader can actually see.

The experiment should distinguish useful matching evidence from filters that merely make an applicant
pool smaller.

## Evidence classes

Every observation belongs in one class:

- **presentation friction** — evidence may be obscured or inconvenient to inspect;
- **direct role evidence** — a concrete artifact corresponds to work named in the role;
- **transferable evidence** — a concrete artifact shows adjacent systems work;
- **distinctive but non-role evidence** — individuating but not evidence for this role;
- **proxy/distractor** — cheap-to-measure attributes that must not be promoted into role evidence;
- **unknown** — a material question the bounded inspection cannot answer;
- **next inspection** — one bounded action likely to reduce an important unknown.

## Rules

1. Cite the repository, file, PR, release, test or commit behind each substantive technical claim.
2. Separate "not observed in this bounded pass" from evidence that something is absent.
3. Stay inside public professional/project evidence. Do not infer personality, family life, politics, protected characteristics or private biography.
4. Follower/star counts, prestige, school, employer names, activity volume and years-as-a-scalar are not direct role evidence.
5. Do not infer authorship solely from repository ownership; keep AI assistance and collaborator authorship unresolved where necessary.
6. A polished README may reduce presentation friction. It cannot manufacture missing technical evidence.
7. An unusual project may distinguish the profile without bearing on the role.
8. A bonus such as Rust remains a visible bonus/unknown when absent from the inspected packet; it must not silently become a hard requirement.
9. Prefer one high-information next inspection over unbounded crawling.
10. Stop when the evidence budget is exhausted and list unresolved questions.

## Role-specific questions

Look for public artifacts concerning:
- agent execution loops, harnesses or tool-use orchestration;
- durable state and long-running task control;
- sandboxing, isolation, privilege or execution boundaries;
- model/agent evals, failure analysis and deliberately adverse cases;
- distributed/runtime/platform infrastructure;
- observability, debugging, profiling and reproducible evidence;
- compiler, kernel, runtime or low-level systems work;
- Rust where actually present;
- inference/GPU/fleet work where actually present;
- developer-facing API/tool design.

Do not collapse these into one "AI experience" scalar.

## Output record

A run should record:
- profile snapshot identity/revision;
- role snapshot identity/revision;
- analysis/prompt revision;
- evidence budget used;
- presentation friction;
- direct role evidence;
- transferable evidence;
- distinctive non-role evidence;
- proxy/distractors explicitly ignored;
- unknowns;
- next inspection.

The Looking Glass experiment compares this output with generic recruiter/search summaries and generic
technical summaries of the same public profile.
