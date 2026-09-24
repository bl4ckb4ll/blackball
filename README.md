# blackball

Blackball is an LLM-facing RAG bin: a model-independent evidence corpus, claim ledger, source trail, and retrieval surface for questions that should not be answered from model memory alone.

It is built to make later answers inspectable.

The basic retrieval path is:

**question → candidate claims → evidence → source owner → scope/time → disagreement → answer**

Blackball is not primarily a syllabus, recommendation list, or human-facing course guide. A syllabus can be evidence in Blackball; it is not the organizing object.

## What belongs here

- primary sources and stable source records;
- careful source-review notes;
- atomic evidence-backed claims;
- institutional and historical cases;
- citation graphs that preserve who actually produced an idea, measurement, document, or observation;
- competing interpretations and negative evidence;
- scope, timeframe, and confidence labels;
- explicit unknowns and retrieval queues;
- source snapshots sufficient to recover or verify a claim later;
- question maps that say which evidence would actually decide an issue.

## Evidence rule

Never promote metadata, a title, a search snippet, a review, or an LLM reconstruction into stronger evidence than it is.

Prefer:

**upstream primary source > inspected primary author > inspected secondary analysis > discovery metadata**

unless the question is specifically about the secondary author's interpretation.

A credential, ranking, institutional label, or professional title carries only the evidentiary weight of the process it actually certifies. Do not silently substitute broad claims about intelligence, competence, employability, judgment, or authority.

Blackball does not impose optimism as an evidentiary requirement. An encouraging possibility is not a usable path until openings, selection, costs, constraints, probability, actual work, and loss-bearing are made concrete. Accuracy forbids both false hope and unsupported hopelessness.

## Audits

- [September 1–7, 2026 conversation-to-repository forensic audit](audits/2026-09-01--07-conversation-repository/README.md) — all 131 project conversations visible at the Sep 7 20:22 UTC snapshot plus recovered outside-snapshot history mapped to a 109-item substantive ledger, graded by research quality and default-branch/PR/branch state without filling the identified gaps.

## Current question surfaces

- [Why are business schools bundled with universities and liberal arts?](llm/questions/business-school-university-bundle.md)
- [What did “Sarah Lawrence girl” mean as a class type?](llm/questions/sarah-lawrence-girl-as-class-type.md)
- [Truth before hope](TRUTH-BEFORE-HOPE.md)
- [Where are the students’ jobs?](WHERE-ARE-THE-STUDENTS-JOBS.md)
- [Professed values versus conduct](PROFESSED-VALUES-VERSUS-CONDUCT.md)
- [Family career insurance and intellectual defection](llm/questions/family-career-insurance-and-intellectual-defection.md) — tests the recurring pattern in which a family directs education toward a secure or prestigious occupation but the educational path exposes the student to the science, art, literature, or scholarship ultimately pursued; requires denominators and explicit class/resource evidence rather than anecdotal prevalence claims.
- [Employer discretion, worker risk, and the absence of a general fairness guarantee](llm/questions/employer-discretion-worker-risk.md) — separates specific legal constraints from broader questions about hiring screens, prior termination, truthfulness incentives, symbolic recognition, promotion, reciprocal obligations, and which employment risks remain with the worker.
- [Apprenticeship, entrepreneurship, and the null alternative](llm/questions/apprenticeship-entrepreneurship-and-the-null-alternative.md) — compares college, apprenticeship, wage employment, household/family enterprise, other entrepreneurship, mixed strategies, and doing nothing against the same accountability ledger.
- [Engineering education, engineering work, and who gets the job](history/engineering-careers/README.md) — separates degree, technical ability, hiring, family resources, ownership, sponsorship, work allocation, and historical demand instead of treating “studied engineering → engineer” as a complete causal story.

## Education and occupational pathways

- [Education accountability index](education/README.md) — front-loaded payment, back-loaded uncertainty, sunk-cost lock-in, lies versus incomplete information, actual job conversion, academic self-reproduction, and long-run regret.
- [Erin Brockovich](Erin%20Brockovich/README.md) — the transition from a youth-facing image of law as justice to law-school competition, debt, recruiting, actual clients, calibrated threats, workplace injury defense, and class access to counsel.
- [Main Street](Main%20Street/README.md) — ordinary repeatable employment options as the comparison baseline for expensive education, including pay, scheduling, physical cost, experience accumulation, and promotion.
- [University of Michigan](University%20of%20Michigan/README.md) — institutional outcome claims and a southeast Michigan lead concerning psychology graduates working in retail under a manager with more applicable experience and less credential prestige.

## Institutional and local case files

- [Place dossiers](places/README.md) — descriptive local case files for Greenwich, Newton, Armonk, Skaneateles, Shaker Heights, Evanston, Aurora, Cupertino, and Richmond; separates public evidence, institutional self-presentation, private research leads, interpretation, and geographic-boundary problems.
- [Hyde Park](Hyde%20Park/README.md) — Venkatesh's Hyde Park/Woodlawn labor boundary; Friedman, Fama, Obama, and Venkatesh inside the same university-centered geography; Yiran Fan and Shaoxiong Zheng killings; "potential," mourning, policing, and institutional response.
- [University of Chicago](University%20of%20Chicago/README.md) — put globally influential claims about markets, labor, poverty, human capital, law, and public policy beside the local economy and institutional power of Hyde Park and the South Side.
- [Harvard](Harvard/README.md) — Harvard as a credentialing and authority-conversion node in the Venkatesh and Obama trajectories, with a pointer to Bryan Stevenson’s criticism of the separation between law professors’ professed beliefs and conduct.
- [UMKC six-year B.A./M.D. program](history/medical-education/umkc-six-year-ba-md.md) — a durable U.S. counterexample to treating four undergraduate years plus four medical-school years as a structurally necessary sequence: direct high-school admission, integrated liberal arts and medicine, early clinical contact, docent teams, accreditation resistance, outcome evidence, and explicit unresolved questions.
- [University of Michigan](University%20of%20Michigan/README.md) — compare broad college-wide outcomes with major-specific occupational conversion and first-person local cases.

## Economics

- [Economics index](economics/README.md) — evidence and source records for Maddison, Keynes, Painter, Marx and Engels, Engels's working-class analysis, Adam Smith, and related economic history and political economy.
- [Entrepreneurship](economics/entrepreneurship/README.md) — separates household livelihood enterprise, owner-operator business, family enterprise, franchise, growth firm, and venture-backed startup; applies a common capital, labor, household-return, downside, succession, and accountability analysis.

## History and training institutions

- [History index](history/README.md) — inspectable source trails for labor, organization, coercion, technology, and historical institutions.
- [Higher-education history](history/higher-education/README.md) — a provisional Roger L. Geiger bibliography and acquisition map; no book-length Geiger text has yet been inspected.
- [Johns Hopkins founding lead](history/higher-education/roger-l-geiger/JOHNS-HOPKINS.md) — preserves the remembered “students were an afterthought” formulation as an unverified retrieval target.
- [Apprenticeship](history/apprenticeship/README.md) — applies the same accountability test to apprenticeship that Blackball applies to college and graduate education: actual training, contract enforcement, exit, deferred benefits, exclusion, wages, and outcomes rather than the surface appeal of “earn while you learn.”

## People dossiers

- [Graciela Chichilnisky](people/graciela-chichilnisky.md) — catastrophic-risk decision theory, rare-event-sensitive probability, and stated limits of nonparametric econometrics under weak assumptions.
- [Ariane Lambert-Mogiliansky](people/ariane-lambert-mogiliansky.md) — non-classical uncertainty, expected-utility representation beyond Boolean event algebras, and quantum-like models of context-dependent or indeterminate preferences.
- [Avital Ronell](people/avital-ronell.md) — comparative literature / German at NYU; 2018 Title IX sexual-harassment finding, adviser-student power allegations, lawsuit record, and faculty-prestige controversy.
- [Boaventura de Sousa Santos](people/boaventura-de-sousa-santos.md) — University of Coimbra sociologist; CES harassment/abuse controversy, first-person allegations, independent-commission findings, denials, and later Portuguese legal proceedings.
- [John L. Comaroff](people/john-comaroff.md) — Harvard anthropologist (retired 2024); graduate-student allegations, Harvard policy findings and sanctions, federal litigation, denials, and dismissal record.
- [Adam Smith](people/adam-smith.md) — Glasgow moral-philosophy chair, career chronology, reconstructed scale of the Scottish professoriate around 1759, and comparison with colonial American higher education.
- [Carl Friedrich Gauss](people/carl-friedrich-gauss.md) — working-family origin, sixteen years of ducal stipend support, transition to the Göttingen observatory, and later private wealth from investment; a concrete patronage → institution → capital case.
- [John O. Outwater Jr.](people/john-o-outwater-jr.md) — mechanical-engineering professor, ski-safety researcher, and family/academic-background notes.
- [Louis Joel Mordell](people/louis-joel-mordell.md) — Philadelphia self-education, the single-ticket Cambridge scholarship gamble, later job-search friction, and number-theory career, grounded in Mordell's reminiscences and Cassels's memoir.
- [Andrew Hacker](people/andrew-hacker.md) — political scientist and public critic of higher education; connects his 2005 NYRB source trail to *Higher Education?* and preserves the distinction between provocative measurement and strong causal evidence.
- [Claudia Dreifus](people/claudia-dreifus.md) — journalist, interviewer, and coauthor of *Higher Education?*; focuses on campus reporting, interviewing, classroom observation, and the evidentiary boundary between a field report and a prevalence claim.
- [Michael S. Kimmel](people/michael-kimmel.md) — former Stony Brook sociologist of gender and masculinity; graduate-student allegations, ASA award response, retirement, and limits of the public institutional record.
- [Mike Lynch](people/mike-lynch.md) — Cambridge/Bayesian technical background, Autonomy and the British high-technology success narrative, institutional prestige, HP litigation, extradition, U.S. criminal acquittal, media-framing bibliography, court-document inventory, and a dated reconstruction of Wikipedia narrative changes.
- [Tycho Brahe](people/tycho-brahe.md) — noble family and foster-uncle plan for statesmanship/jurisprudence, secret Leipzig astronomy, Tycho's rejection of inherited lineage as personal achievement, and the material-resource qualification.
- [Galileo Galilei](people/galileo-galilei.md) — father-directed medical training at Pisa, mathematical exposure and Ricci's intervention, departure without a medical degree, and the unresolved economics of the switch.
- [Charles Darwin](people/charles-darwin.md) — father-directed medicine then clergy, university natural-history exposure, and Darwin's explicit statement that expected inherited property reduced his effort to learn medicine.
- [Edwin Hubble](people/edwin-hubble.md) — paternal expectation of law, Rhodes-supported Oxford legal study, brief legal practice, and deliberate return to astronomy, with family-finance questions left open.
- [Sudhir Venkatesh](people/sudhir-venkatesh.md) — Chicago fieldwork, Hyde Park's labor boundary, Harvard Junior Fellowship, "rogue sociologist" branding, and the conversion of access to poor communities into academic and publishing value.
- [Barack Obama](people/barack-obama.md) — South Side organizing, Hyde Park residence, Harvard Law, UChicago Law faculty affiliation, and documented network/platform benefits.
- [Eugene F. Fama](people/eugene-fama.md) — Chicago graduate training, mentorship, faculty career, finance research, and direct chronological overlap with Venkatesh's Hyde Park period.
- [Milton Friedman](people/milton-friedman.md) — Chicago graduate degree and faculty career, Hyde Park residence, global policy influence, and an earlier generation of the same university-neighborhood geography.
- [T. S. Eliot](people/t-s-eliot.md) — Emily Hale archive, Eliot's 1960 posthumous counter-statement, destruction of Hale's letters, and the distinction between literary value and personal/canonical authority.
- [Yiran Fan](people/yiran-fan.md) — Booth/Economics Ph.D. student, institutional "potential" language, posthumous degree, and same-event comparison with other January 2021 victims.
- [Shaoxiong "Dennis" Zheng](people/shaoxiong-dennis-zheng.md) — UChicago statistics graduate whose 2021 killing triggered major memorial and security responses.
- [Aisha Johnson](people/aisha-johnson.md) — doorwoman killed in the same January 2021 spree as Fan; kept separate from UChicago affiliation absent evidence.
- [Anthony Faulkner Jr.](people/anthony-faulkner-jr.md) — 20-year-old killed in the same spree; sparse public biography preserved as a measurement problem rather than filled with assumptions.
- [Matt Mahoney](people/matt-mahoney.md) — Florida Tech, PAQ/ZPAQ, *Data Compression Explained*, Ocarina Networks, Dell acquisition chronology, and explicit correction of the unsupported founder/personal-$1m story.

## Source dossiers

- [Charles Booth — *Life and Labour of the People in London*](sources/charles-booth/life-and-labour-london/README.md) — late-Victorian London A–H poverty/class framework, original survey archive, and Booth's own inherited leather/shipping business position; contemporary control for Watson/Hatherley rather than projecting modern prices backward.
- [Bryan Stevenson — *Just Mercy*](sources/bryan-stevenson/just-mercy/README.md) — the disconnect between professed beliefs and conduct as a central institutional accountability test.
- [Anh Do — *The Happiest Refugee*](sources/anh-do/the-happiest-refugee/README.md) — garment-work poverty, the doctor-or-lawyer funnel, law as the money route, competitive legal education, and an exceptional exit.
- [Estreicher and Radice — *Beyond Elite Law*](sources/estreicher-radice/beyond-elite-law/README.md) — elite legal production beside ordinary unmet civil legal needs.
- [David L. Kirp — *Shakespeare, Einstein, and the Bottom Line*](llm/david-l-kirp-shakespeare-einstein-bottom-line/README.md)
- [Andrew Hacker and Claudia Dreifus — *Higher Education?*](llm/andrew-hacker-claudia-dreifus-higher-education/README.md) — chapter-by-chapter argument/evidence map, campus-reporting method, reconstructed bibliography and upstream source trail, criticisms, and a retrieval queue that keeps direct observation separate from national inference.
- [Jeff Sharlet — Dartmouth graduates into finance and consulting](llm/jeff-sharlet-dartmouth-finance-consulting/README.md)
- [Associate Deans (@ass_deans)](sources/associate-deans/README.md) — insider academic-management satire treated as a source corpus on managerial layering, faculty/management relations, accountability, and insider/outsider information asymmetry.
- [Earl Shorris — *A Nation of Salesmen*](llm/earl-shorris-a-nation-of-salesmen/README.md) — argument map, review synthesis, legitimate-access boundary, archival leads, and a dated used-book price snapshot.
- [Earl Shorris — the Clemente Course in the Humanities](llm/earl-shorris-clemente-course/README.md) — first-course origin, recruitment, original faculty and curriculum, logistics, outcome-count disagreements, later institutionalization, and provenance.
- [Earl Shorris — *Riches for the Poor*](llm/earl-shorris-riches-for-the-poor/README.md) — publication history from *New American Blues*, argument summary, Clemente relationship, access boundary, evidence limitations, and provenance.
- [Gresham College lecture corpus](sources/gresham-college/lectures/README.md) — subject, series, speaker, transcript, audio, and video retrieval routes with explicit separation between public audiences and nonexistent enrolled students, and between lecture dates and later publication dates.
- [Mathematicians of the African Diaspora — paper corpus](sources/mathematicians-of-the-african-diaspora/README.md) — Scott W. Williams's MAD roster normalized into a paper-level coverage ledger, bibliography cull, and mathematical summary/reaction lane with discovery/abstract/full-text evidence states kept separate.
- [Paul Klee — *The Diaries of Paul Klee, 1898–1918*](sources/paul-klee/diaries/README.md) — source dossier and retrieval target for the remembered art-school passage in which substantial family support coexists with parental control over what an artist is allowed or expected to paint.
- [John Lennon — “Working Class Hero”](sources/john-lennon/working-class-hero/README.md) — song and album provenance, official full-lyrics routes and copyright boundary, Lennon/Ono and Beatles-breakup chronology, primal-therapy context, class-background evidence, recording history, political context, censorship history, and book leads.
- [Matt Mahoney / Ocarina Networks source ledger](sources/matt-mahoney/README.md) — dated primary and secondary sources, acquisition filings, funding/product chronology, archive-discovery links, rights notes, and a claim ledger separating the real $1m prize pool from any unsupported personal payout.
- [Miles Reid — *Notes for obituary*](sources/miles-reid/obituary-notes/README.md) — self-authored 2002 notes for a future Royal Society biographical memoir, with source links, chronology, academic-pipeline details, and evidence limitations.
- [FTX / Sam Bankman-Fried federal criminal case](sources/ftx/sam-bankman-fried-federal-case/README.md) — seven-count trial and 2026 appeal, software/account evidence, cooperating-witness testimony, Ellison balance-sheet evidence, MIT/Stanford network, severed charges, atomic claim ledger, source provenance and evidentiary guardrails.
- [E. P. Thompson — books, essays, and legitimate online access](llm/e-p-thompson/README.md)
- [Christopher Hill — books and legitimate online access](llm/christopher-hill/README.md)
- [Terence Ranger — books, bibliography, and access trail](llm/terence-ranger/README.md)
- [Eric Hobsbawm — books, long nineteenth century, and open article trail](llm/eric-hobsbawm/README.md)
- [Toby Green — *A Fistful of Shells* — source trail and access](llm/toby-green-a-fistful-of-shells/README.md)
- [Paulus Gerdes — *Geometry from Africa* — source trail and access](llm/paulus-gerdes-geometry-from-africa/README.md)
- [Sarah Lawrence as a class and cultural type](llm/sarah-lawrence-class/README.md)
- [J. D. Salinger and class](llm/j-d-salinger-class/README.md)

- [Olive Bray — *The Elder or Poetic Edda* (1908)](books/olive-bray-elder-poetic-edda.md) — public-domain bilingual Old Norse/English edition; Bray was the daughter of High Court judge Sir Reginald More Bray and novelist Emily Octavia Bray, making the edition useful both as literature and as a class/cultivation case.

## Primary-source corpora

- [Henry Mayhew — *London Labour and the London Poor*](sources/henry-mayhew/london-labour-and-the-london-poor/README.md) — four-volume public-domain corpus with proofread text, page scans, raw OCR/HOCR/XML derivatives, metadata and audiobook routes.
- [William Morris — *A Dream of John Ball; and, A King's Lesson*](sources/william-morris/a-dream-of-john-ball/README.md) — public-domain full text, local 1888 scan, raw scan OCR, and actual page-image reading views; directly useful upstream of E. P. Thompson's Morris work.

  Read locally: [1888 PDF](sources/william-morris/a-dream-of-john-ball/internet-archive/dreamofjohnballa00morr/dreamofjohnballa00morr.pdf) · [proofread reading text](sources/william-morris/a-dream-of-john-ball/a-dream-of-john-ball-and-a-kings-lesson-gutenberg-reading-copy.txt) · [raw scan OCR](sources/william-morris/a-dream-of-john-ball/internet-archive/dreamofjohnballa00morr/dreamofjohnballa00morr_djvu.txt)

<p align="center">
  <img src="./sources/william-morris/a-dream-of-john-ball/page-images/contents-1.png" width="24%" alt="First contents page from the 1888 scan">
  <img src="./sources/william-morris/a-dream-of-john-ball/page-images/contents-2.png" width="24%" alt="Second contents page from the 1888 scan">
  <img src="./sources/william-morris/a-dream-of-john-ball/page-images/chapter-1-page-1.png" width="24%" alt="First page of Chapter I from the 1888 scan">
  <img src="./sources/william-morris/a-dream-of-john-ball/page-images/chapter-1-page-2.png" width="24%" alt="Second page of Chapter I from the 1888 scan">
</p>
