# Yu, Stasny & Li (2008) — survey nondisclosure and Bayesian identification

Status: **original paper inspected**, 2026-10-16. **Adjacent methodological case**, not a Rasch-model, IRT, or Rasch-journal paper. Criticism of identification does not imply that victimization or nondisclosure did not occur. The Bayesian methods **book** recalled in conversation remains unidentified; do not conflate it with this paper.

## Primary reference

Publication titles below use redacted display wording. The DOI and source links preserve the original bibliographic record.

Qingzhao Yu, Elizabeth A. Stasny, Bin Li (2008), “Bayesian models to adjust for response bias in survey data for estimating r*** and domestic violence rates from the NCVS,” *The Annals of Applied Statistics* **2**(2): 665–686. DOI [10.1214/08-AOAS160](https://doi.org/10.1214/08-AOAS160). [Author-hosted full text (PDF)](https://publichealth.lsuhsc.edu/faculty_pages/qyu/Research/Papers/YuStasnyLi.pdf); [arXiv:0801.3442](https://arxiv.org/abs/0801.3442).

Evidence inspected: original paper §§2–5, especially pp. 669–675 (sample, data, assumptions, model), 677–679 (priors and EMB algorithm), 680–682 (estimates and variance comparisons). NCVS microdata and supplemental software **have not been independently reproduced** here.

## The scientific question

The target quantity is the count/rate of victimizations that **occurred but were not disclosed to the NCVS interviewer**. This differs from incidents disclosed to the NCVS but **not reported to police**. NCVS includes the latter in its observed victimization data. Because undisclosed incidents are missing, their counts are not directly observed; the paper infers them using reporting-mode and spouse-presence differences.

It analyzes female NCVS respondents aged 16+ (excluding proxy interviews), uses **1993–1997** as historical information for priors, and fits **1998–2004** survey data (§2.2, p. 669).

## What the authors report (conditional on their model)

| Quantity | Reported estimate | Locator / qualification |
| --- | --- | --- |
| Observed survey disclosures in *in-person interviews with a spouse present*, 1998–2004 | **9** | Table 2, p. 672. These are *reported cases*, not a direct count of all actual incidents in that group. |
| Raw versus adjusted incidence rate, unweighted analysis | **0.79 versus 1.35 per 1,000 women** | §5.2, p. 680. The latter is a model-adjusted rate, **not** an observed rate. |
| Share of victimizations **not disclosed because a spouse is present** | **86%** | §5.2, p. 681, the estimate `1 − ρ* = 0.86`. It concerns survey response, not police reporting and not all victims. |
| Weight assigned to historical prior in that estimate | **88%** | §5.2, p. 681: `k/(k+n) = 1418/(1418+193) = 0.88`. This is the authors' empirical-Bayes **prior weight**, not a probability that the model is true. |
| Estimated non-disclosure effect for telephone interviewing, for modeled crimes except personal larceny | **37%** | §5.2, p. 681, subject to the mode-response assumptions. |

## Explicit identifying assumptions (not discoveries from the data)

1. A spouse's presence changes reporting only for the two specified forms of victimization; telephone interviewing may suppress reports of modeled personal crimes except personal larceny (§3, p. 672).
2. If both conditions apply, spouse presence dominates the telephone effect in the model's classification of nondisclosure (§3, p. 672). **Authors explicitly impose this hierarchy to make the model identifiable.**
3. Crime status and spouse presence during an interview are independent: `ωᵢⱼ = cᵢ sⱼ` (§3, p. 674). This should be stress-tested rather than treated as a measured social fact.
4. The complete-data table treats face-to-face interviews with no spouse present as free of these two specified “gag” effects. That is a modeling baseline, not evidence of complete disclosure under those conditions.
5. Prior means for reporting-bias parameters are estimated by fitting a model to **earlier NCVS observations** (§4.2, pp. 677–678). Older data do not independently validate the unobserved cell labels.

The phone-interview data **do not record who else was present** (§2.1, p. 668), which limits direct separation of the two proposed response mechanisms. The paper acknowledges that undisclosed victimizations might persist even under its comparatively favorable interviewing conditions (§3, p. 671).

## Identification challenge and validation work

The observed counts are mixtures of **occurrence** and **disclosure**. If both unknowns can vary, different pairs can yield the same number of disclosures. A fit to the observed table establishes, at most, compatibility **conditional on the assumed restrictions**; it is not by itself a direct observation of the missing incidents.

Questions to test:

- How do incidence and non-disclosure estimates change if crime occurrence is associated with spouse presence (including confounding from marital status, household composition, or selection into interview mode)?
- What if telephone respondents are sometimes overheard, while some face-to-face respondents without a spouse also withhold information? How much is identified absent the imposed hierarchy?
- Vary the previous-period prior and its estimated effective size `k`; report both posterior variance **and** sensitivity/bias under plausible alternative data-generation mechanisms. A smaller variance from shrinkage is not independent validation of a target estimate.
- Seek independent validation through privacy-sensitive survey experiments, alternate confidential modes, follow-up studies, carefully evaluated record linkage, or other designs with genuinely new information about disclosure. Treat any such evidence with its own limitations, rather than claiming an impossible error-free ground truth.
- Reproduce the authors' weighted/unweighted and empirical-Bayes versus ordinary EM comparisons, including uncertainty from only **9 disclosed cases** in the specified in-person/spouse-present table cell.

## What the paper does well, and what remains unproved

The authors openly state that observed survey tables do not present the underlying truth; they enumerate assumptions, compare weighted and unweighted fits, and give the size of the prior contribution. These are important disclosures, **not** proof that the imposed assumptions are satisfied.

The critical issue is **identification of unobserved events, not Bayesian notation itself**. More elaborate computation can improve estimation *within a stipulated model* without establishing that the model separates incidence from disclosure in the real population. Conversely, a real privacy effect could be present without this particular magnitude or structure being correct. This is a methodological parallel to the [Rasch measurement question](../../llm/questions/rasch-model-as-measurement.md): a latent quantity must be justified independently of the formalism that estimates it.

## Source / research trail

- [Original 2008 article, author PDF](https://publichealth.lsuhsc.edu/faculty_pages/qyu/Research/Papers/YuStasnyLi.pdf), especially Tables 2, 9–11 and §3.
- [Original arXiv record](https://arxiv.org/abs/0801.3442).
- [National Research Council, (2014), chapter 8, on incidence and survey measurement](https://www.ncbi.nlm.nih.gov/books/NBK202274/): later contextual discussion of mode and privacy effects; **not** independent verification of the 86% figure.
- The exact remembered female-authored Bayesian **methods book** is an **unresolved bibliographic lead**. Keep searching; do not silently equate it with this journal article.
