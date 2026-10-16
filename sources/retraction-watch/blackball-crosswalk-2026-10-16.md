# Retraction Watch ↔ Blackball: cases closest to the user's objections

**Read 2026-10-16.** A targeted follow-up to [the first docket](cases.md). These are *selected inspected Retraction Watch reports*, not a census of the site or independent re-analysis of every named original paper. The value is in **how plausibility is manufactured, how to test the method, and whose status or money survives a bad result**, not collecting a list of villains. All links below are to retrieved actual Retraction Watch articles unless otherwise noted.

**Priority legend:** A = strongest direct fit; B = adjacent. **Record class:** **RETRACTED** (journal notice), **PROCEDURAL** (reported institutional/editorial action), **ALLEGED** (contested case with no final scientific/misconduct finding from this pass), **STING** (deliberately false submission), **CRITIQUE** (technical disagreement; not a retraction). Distinguish each case's scientific and personal-misconduct findings.

## A. A mathematical model can be executable yet say nothing about the world

### A1. Fractional calculus and neural networks for *Layla and Majnun* — RETRACTED (2024)

[Retraction Watch: “Nonsensical content”: Springer Nature journal breaks up with a paper on a love story](https://retractionwatch.com/2024/01/14/nonsensical-content-springer-nature-journal-breaks-up-with-a-paper-on-a-love-story/).

A 2023 *Scientific Reports* paper, *A fractional order nonlinear model of the love story of Layla and Majnun*, claimed to simulate romantic relationships with **fractional-order derivatives** and **Levenberg–Marquardt backpropagation neural networks**. The editors withdrew it because of substantial overlap and nonsensical content, saying they lacked confidence in its originality and scientific validity; the authors disagreed.

This is almost a laboratory example of the objection **“having differential equations is not evidence that your model measures something real.”** Ordinary toy models of romance can be explicitly whimsical pedagogical exercises: physicist Clint Sprott emphasized this distinction in the RW report. A model can have a unique numerical solution and zero empirically warranted claims about people.

**Independent test:** identify what observations define the state variables, what a fractional derivative is supposed to represent here, whether parameters are fitted independently of the narrative, and what distinct outcome could falsify the fitted equations. Check whether the neural-network solver is solving the claimed equation. The formal equations and dataset have **not** been independently executed here.

### A2. The two-step “individual responder” test in sports science — CRITIQUE (2020; do NOT label retracted)

[Retraction Watch guest analysis, part 3](https://retractionwatch.com/2020/03/11/harming%E2%80%8C-%E2%80%8Cthe%E2%80%8C-%E2%80%8Cscientific%E2%80%8C-%E2%80%8Cprocess%E2%80%8C-an-attempt-to-correct-the-sports-science-literature-part-3/).

Matthew Tenan and collaborators argued that Dankel and Loenneke's procedure failed to achieve its claimed false-positive rate. It chained a variance comparison such as Levene's test to a second selection/test decision. The critics complained that the editor used an appeal to unnamed expertise and “others publish similar things” instead of refuting their probability calculations or simulations. They objected especially to interpreting variance differences as evidence for genuine individual treatment responses. The article **remained published at the time**.

**Tests:** analytically derive the **joint error distribution of the full two-stage procedure** under the null rather than applying each individual nominal 5% threshold; simulate nonconstant measurement error and various variance structures; distinguish observed variance heterogeneity from an individual's causal responsiveness; compare critics' code and the original authors' defense. No independent reimplementation performed by this Blackball review. Editorial refusal to retract is not a technical proof of correctness; a critical guest essay is not one either.

### A3. Criminology papers with impossible sample counts and factor loadings — RETRACTED studies; institutional finding of errors, *not a proved fraud verdict here* (2023)

[Retraction Watch: Florida State University fires criminology professor](https://retractionwatch.com/2023/07/20/florida-university-fires-criminology-professor-blemished-by-retractions/).

FSU terminated Eric A. Stewart after six retractions and a long dispute over research with anomalous standard deviations and sample descriptions. RW obtained university communications describing **16 papers with indicators of impossible results or erroneous statistics**. Three initial committees had **not** found enough evidence to proceed to a full fabrication investigation. Stewart opposed the decision, and a three-person faculty panel had split over termination. Do not elide this mixed record.

A research-review attachment discussed inconsistent sample sizes and unusually high common-factor loadings on heterogeneous school activities. However **we have not independently inspected the complete PDF source**, and no technical finding about those particular loadings is claimed here.

**Tests:** compare reported subsample and subgroup totals with the complete public survey, reestimate factor loadings on observed variables, check dependence on inclusion criteria, loadings' implied covariance constraints, and standard deviations. A long regression table is not protection from the impossibility of counting more observations of a kind than exist in the population data.

### A4. Factor-analysis disagreement about intelligence — SCIENTIFIC DISPUTE, not a retraction (2014)

[Retraction Watch: critique of a *Neuron* study and editorial process](https://retractionwatch.com/2014/04/14/anonymous-blog-comment-suggests-lack-of-confidentiality-in-peer-review-and-plays-role-in-a-new-paper/).

Haier and collaborators questioned inference from a published factor analysis and the handling of their critical response. The original authors argued back. This is a bridge to psychometrics and future Rasch work: a factor solution and the status of a journal do not by themselves identify a psychological entity or validate the names assigned to its factors. Factor non-uniqueness is a *mathematical observation*; whether an actual measurement theory has identifying and validity evidence is a separate *empirical* question. Read both original articles before a verdict.

## B. Human behavior and education sold as statistical certainty

### A5. Sweden's prostitution-purchase ban and rape reporting — RETRACTED (original paper June 2025; explained June 2026)

[Retraction Watch: Sex pay ban paper earns a retraction](https://retractionwatch.com/2026/06/29/sex-pay-ban-paper-sweden-retraction-journal-population-economics/).

Riccardo Ciacci's 2024 *Journal of Population Economics* paper inferred that the Swedish reform increased reported rapes by as much as **62%**. Independent economists disputed the estimation and a journal committee found **fundamental multicollinearity**, arbitrary handling of it, and no sound support for the originally advertised magnitude. After an additional published analysis and drawn-out correspondence, the original was retracted in June 2025. The author's university found **methodological problems, not misconduct**; he disputes the editorial treatment and has reported lost promotion and grant opportunities. The critics and author strongly dispute one another's conduct.

**The connection to the remembered Bayesian NCVS rape/nonreporting estimates is methodological, NOT an implication they share a result or that that other paper has been retracted.** In both, the pivotal issue is which unknown quantities can be identified from **reported** events and assumptions. The Swedish paper asks a causal effect from changes in recorded cases; the remembered NCVS work seeks an unobserved incidence corrected for selection/nonresponse. Those are different identification problems. Keep reporting propensity, actual incidence, legal changes, enforcement, control groups and policy-endogeneity separate.

**Tests:** reproduce original code/data and the independent 2025/2026 replication critiques; assess collinearity/rank, estimand, identification, controls and uncertainty; ask what determines the hypothesized *unreported* quantity. A fitted coefficient cannot by itself validate a causal mechanism.

### A6. John Hattie's *Visible Learning* and meta-meta-analysis — ALLEGED technical issues; formal institutional investigation opened (March 2026)

[RW's original lengthy investigation, August 2025](https://retractionwatch.com/2025/08/21/john-hattie-education-visible-learning-stephen-vainker-melbourne-plagiarism-allegations/) and [formal-investigation update, March 2026](https://retractionwatch.com/2026/03/16/university-melbourne-opens-formal-investigation-education-researcher-john-hattie/).

Hattie's influential books rank learning interventions using standardized effect sizes pooled from large numbers of meta-analyses. A teacher/researcher, Stephen Vainker, challenged duplication, incorrect data extraction, heterogeneity of populations, and textual attribution. In a **preliminary** university examination, an independent reviewer reportedly confirmed errors in 11 of 14 sampled *data-error examples*, identifying 20 additional possible errors, while not attributing them to deliberate fabrication. The university's separate sample of **14 of 181 plagiarism allegations** found no plagiarism in that subset; later examples prompted it to open a formal investigation. Hattie denied plagiarism, defended his methods and pursued defamation litigation. A nonexistent citation in a separate foreword was later removed, without proof it was AI-written.

**Tests:** re-create the extraction ledger of each underlying study, link duplicate cohorts, define whether effect sizes are commensurate, estimate dependency between meta-analyses sharing studies, reproduce ranking with leave-one-review-out perturbations, compare policy claims with actual intervention outcomes. Separate the **data and statistical merits** from the unresolved plagiarism findings. This is strong overlap with Blackball's criticism of universities selling certainty and prestige, but **not** a license to label Hattie fraudulent.

### A7. Behavioral economics superstar whose data failed forensic checks — RETRACTED (Sept. 2026)

[Retraction Watch: Dan Ariely procrastination experiment](https://retractionwatch.com/2026/09/03/procrastination-study-duke-dan-ariely-psychological-science-data-colada-tampering-retraction/); earlier [PNAS dishonesty-paper retraction](https://retractionwatch.com/2021/09/14/highly-criticized-paper-on-dishonesty-retracted/).

A famous 2002 paper by Duke business professor and popular author Dan Ariely and Klaus Wertenbroch, claiming self-imposed deadlines underperformed imposed schedules, was retracted after an attempted replication and data forensic work. Data Colada identified duplication and inconsistent relationships in the data, and grade-calculation anomalies; the coauthor called the evidence convincing and requested withdrawal. Ariely acknowledged that the data could not be trusted but said he was unsure how the problems arose. A separate prominent study about dishonest self-reporting was retracted in 2021 over fabrication concerns. Neither notice alone establishes who intentionally manipulated what.

**Tests:** compare raw grades, intermediate calculations and published tables; reproduce numerical anomalies blind to author identities; audit how 2001 peer-review feedback changed analyses. Record book/consulting/lecture revenue separately from effect validation rather than infer the exact revenue from publication status.

## C. Machine learning and medicine: the promise outruns the data

### A8. Duke personalized cancer-treatment genomics — RETRACTED, with downstream trials closed (2010–12)

[RW's early account of failed reproduction and batch/run-date effects](https://retractionwatch.com/2010/11/01/a-retraction-in-the-potti-case/); [Duke's closure of three clinical trials based on the science](https://retractionwatch.com/2010/11/19/another-update-on-anil-potti-co-author-asks-nature-medicine-to-retract-paper/); [*Nature Medicine* retraction](https://retractionwatch.com/2011/01/07/nature-medicine-makes-it-official-retracting-anil-potti-paper/); [*NEJM* model validation retraction](https://retractionwatch.com/2011/03/02/nejm-retracts-potti-paper/); [*JCO* clinical/genomic label-misalignment notice](https://retractionwatch.com/2012/02/06/anil-potti-and-colleagues-retract-ninth-paper-this-one-in-jco/).

Anil Potti and collaborators at Duke published sophisticated-looking gene-expression signatures predicting chemotherapy response. Outside biostatisticians Keith Baggerly and colleagues reported failures of reproducibility, including signals tied more strongly to **run date/batch** than patient response. Later notices described corrupted or misaligned outcome labels and failures of external validation. Three clinical trials based on the signatures were closed.

**Tests:** recover specimen/sample identities, label pairing, run dates, randomization, batch assignment, blinded preprocessing, independent patient holdouts and the exact prediction functions; perform label shuffles and run-date-only controls. A valid matrix calculation on an invalid sample-label join can produce a compelling but meaningless predictor. Separately, RW reported Potti had falsely represented a Rhodes Scholar credential; this is not a replacement for the actual methodological record.

### A9. Patient-data problems in medical ML — RETRACTED / dataset screening (2026)

[Retraction Watch: Kaggle stroke and diabetes predictors](https://retractionwatch.com/2026/05/18/kaggle-dataset-clinical-models-stroke-diabetes/).

Medical statisticians reported datasets with duplicate patients, suspicious distributional regularity and inadequate clinical provenance. Multiple clinical-ML papers were withdrawn; **not every flagged paper is necessarily retracted**. Public datasets, Kaggle popularity, algorithmic complexity and high test accuracy cannot establish clinical validity.

**Tests:** verify clinical provenance/consent, search duplicates, split by patient/site/time, prove no shared samples, check whether label construction leaks into features, compare to simple age/sex/risk-factor models, and test actual clinical performance.

### A10. Suspect paper-mill articles get cited by clinical guidelines — REPORTED NETWORK, not measured guideline harm (Sept. 2026)

[Retraction Watch: influence of Pharmakon Neuroscience Network papers](https://retractionwatch.com/2026/09/17/paper-mill-studies-get-cited-by-clinical-guidelines-policy-docs-and-more-analysis-finds/).

Researchers tracked **1,975 papers** sharing an affiliation associated with an authorship-selling scheme. **480** were cited in patents, **57** in policy documents, **12** in clinical guidelines. Investigators specifically warn that a guideline *citing* a questionable study **does not establish the recommendation depended on it** or was wrong. Most former coauthors continued publishing; simple coauthorship alone cannot prove any particular person knowingly bought authorship.

**Tests:** trace each citation to the specific claim and model in the guideline; rederive the recommendation with suspect evidence excluded and measure whether it changes. This is the same lesson as a large literature review inheriting a false study, with a documented citation graph rather than presumed effect.

## D. Finance, credentials, publishing and asymmetric institutional authority

### A11. A prizewinning *Journal of Finance* paper could not be reproduced from the authors' deposited files — RETRACTED (2021)

[Retraction Watch: researchers return $10,000 Brattle Prize](https://retractionwatch.com/2021/07/08/researchers-forfeit-10000-award-when-papers-findings-cant-be-replicated/).

A 2019 paper on risk management at financial institutions won a 2020 prize and **$10,000**, selected by journal editors. Paul Guest found six discrepancies involving reporting, code and data. The authors conceded their archived files could not reproduce central results and returned the award; they said the originally used code/data version had been lost. This makes the prestige→cash chain **observable**.

**Tests:** replicate every table from deposit, identify all alternate versions and changed definitions; then ask whether the estimated relation survives. A prize says reviewers selected a paper; it is not a test of the equations. The case does **not** directly establish anything about the separate subject Marcos López de Prado.

### A12. Professional machine-learning textbook with impossible bibliography — RETRACTED (2025)

[Initial RW checking](https://retractionwatch.com/2025/06/30/springer-nature-book-on-machine-learning-is-full-of-made-up-citations/) and [publisher's final action](https://retractionwatch.com/2025/08/04/springer-nature-retracts-book-fake-citations-help-us-find-more/).

Springer Nature sold *Mastering Machine Learning: From Basics to Advanced* as a **$169** ebook. After RW checked part of its bibliography, the publisher **could not verify 25 of 46 references** and retracted the book, marking its chapters as retracted. The author did not explicitly agree with the notice; no definitive conclusion on the *cause* of fake references should be inferred without additional evidence.

**Tests:** automatically cross-resolve all cited titles/authors/DOIs, manually verify every match, sample pages for whether cited material actually substantiates the textbook's assertions; assess each technical claim independently, even when references are genuine.

### A13. Author submits nonsense about pregnancy cravings for prime numbers — STING (Jan. 2026)

[First-person Retraction Watch report](https://retractionwatch.com/2026/01/30/guest-post-ai-chatgpt-generated-paper-pregnancy-math/).

Mathematics educator Pascual D. Diago used a pseudonym to submit an intentionally absurd, AI-generated paper on a purported mathematical/obstetric relation. It included obvious joke names and nonexistent references; the journal accepted and posted it with a DOI, demanded payment, and kept soliciting payment after the author had refused to pay. He later reported further solicitations to the pseudonym.

**Economics distinction:** this shows a *seller of publication*, whose intended payer was an **author**, not necessarily university libraries. A fake paper and fake peer review in an outlet calling itself a journal do not show that librarians deliberately purchased that particular title. Its direct observation is **absence of meaningful screening**.

### B14. Generated nonsense appeared in subscription journals too — RETRACTED (2014)

[Retraction Watch: Springer/IEEE withdrawing over 120 nonsense papers](https://retractionwatch.com/2014/02/24/springer-ieee-withdrawing-more-than-120-nonsense-papers/).

Computer-generated science-like proceedings papers were identified in **subscription** publishing outlets, not simply marginal author-pays journals. RW cautions that a famous earlier sting targeting open-access journals did not include a valid traditional-journal comparison group.

**Tests:** compare review records, the exact publisher/conference ownership, sales contracts and access model; do not infer that open access itself causes weak review, or that a subscription means quality.

### B15. A senior professor plagiarized a junior scholar's work, university found — RETRACTED / institutional finding (2024)

[Retraction Watch: Prof plagiarized postdoc's work](https://retractionwatch.com/2024/07/24/exclusive-prof-plagiarized-postdocs-work-in-now-retracted-paper-university-found/).

Brock University found professor Charles Conteh had copied former postdoc Amy Lemay's work without credit, according to a university report and retraction notice examined by RW. This is not about a sophisticated model. It is about **whose labor becomes a publishable, promotable, revenue-relevant asset** and how hierarchy can affect recognition.

**Tests:** align original manuscript/contributions, chronology, contracts and institutional adjudication. Separate honor/credit from the actual activity performed.

### B16. Defamation threats and slow correction as power mechanisms — DOCUMENTED, case-specific

[RW: Scientist critic David Sanders sued by prominent cancer researcher](https://retractionwatch.com/2021/07/01/a-scientist-critic-was-sued-and-won-but-did-not-emerge-unscathed-this-is-his-story/); [RW: ten-year delay before cancer retraction](https://retractionwatch.com/2026/07/22/journal-retracts-breast-cancer-paper-10-years-after-sleuth-flagged-issues/); Hattie case (A6).

Independent criticism can require years, expert unpaid labor and legal exposure while the original credential/revenue benefit is received earlier. Criticism can itself be mistaken or malicious; judicial and institutional processes matter. Time-to-correction is an economic asymmetry, not a universal proof of intentional suppression.

### B17. Behavioral-economics lab replication: how much of a sample actually works? — SELECTED REPLICATION STUDY (2016)

[RW: experimental economics replication analysis](https://retractionwatch.com/2016/03/03/more-than-half-of-top-tier-economics-papers-are-replicable-study-finds/).

11 of 18 selected laboratory experimental economics studies in prominent journals passed the investigators' replication criterion. Their estimated replicated effect sizes averaged **66%** of original effects. The denominator is the **18 specifically chosen studies**, *not* all economics research, not proof that 39% were fraudulent, and not the same as reproducing published code on identical inputs.

**Tests:** stratify by lab/field/journal, preserve original and replication samples, and distinguish computational reproduction from fresh-data replication and substantive policy transfer. Statistical prestige is not a population-level validity guarantee.

## Synthesis — four mutually distinct failure mechanisms

1. **The formula is not grounded:** A1, A2, A4, A5, A6. Code executes or a p-value is produced, but data do not identify the named quantity or the stated error guarantee is not justified.
2. **The inputs or implementation are false:** A3, A7, A8, A9, A11. The model might be well-defined yet applied to inconsistent, misaligned, tampered-with or untraceable data.
3. **Certification can be sold or bypassed:** A12, A13, B14, A10. Publisher labels, technical words, references and impact metrics are institutional objects, not independent proofs.
4. **Power determines whose doubt costs money:** A6, B15, B16, A11. Criticism, recognition, retraction and hiring/promotions have unequal risks and time horizons.

These may interact, but they must not be collapsed into one allegation. **The most useful contradiction is a specific independent falsifier**: impossible row count, unreproducible regression coefficient, false-positive rate different from its claimed value, fabricated reference, batch signal instead of clinical label, or a stated causal conclusion not identified from the actual observations. “It looks phony” identifies a retrieval target, not a completed audit.

## Separate research queues — no false completion

- **Bayesian estimated incidence of unreported rape (Yu/Stasny/Li 2008):** retrieve the full original Annals of Applied Statistics paper and derive exactly what is identifiable from NCVS reporting/response information; prior and model sensitivity; no RW retraction has been established by this search. The Swedish rape-estimate case is *an analogy, not the same paper*.
- **Rasch / IRT:** find original item-response datasets and actual instrument validation rather than a journal title; test unidimensionality, conditional independence, item/person invariance, differential item functioning, and whether “ability” has independent operational meaning. No verified Retraction Watch Rasch retraction was found in this targeted pass; **absence from the sample of results proves nothing**.
- **López de Prado / machine-learning finance:** no personal wrongdoing finding follows from these cases. Independently derive the algorithm and inspect claimed trading performance, research selection, look-ahead, costs and risk-adjusted returns against a declared S&P 500 baseline. The *Journal of Finance* retraction is an **industry warning**, not evidence about him.
- **Hattie:** retrieve underlying *Visible Learning* meta-analysis extraction tables and the critique; check denominator, duplicate inclusion and effect-size commensurability independently before inferring a final scientific or plagiarism conclusion.
- **Sports science two-stage false-positive method:** reproduce critics' simulations with the authors' exact decision rule and keep a known-good control. At this stage we only **located and read the public critique**, not executed it.
- **Paper-mill → public policy:** begin with the PNN article-to-guideline citation edges and compute which guideline recommendations change under exclusion. Mere citations are not measured harms.

**Acquisition priority:** A2 (formal type-I-error derivation) → A5 (identification/coding) → A8 (batch effects and labels) → A6 (meta-analysis denominator and dependency) → A11 (deposited finance code) → A12 (bibliography). These give reusable *tests of plausible claims*, not just another catalog of retractions.
