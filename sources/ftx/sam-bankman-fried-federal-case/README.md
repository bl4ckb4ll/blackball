# United States v. Samuel Bankman-Fried — FTX / Alameda federal criminal case

## Scope

This dossier is a source-led reconstruction of the federal criminal case against **Samuel Bankman-Fried (SBF)** arising from the collapse of **FTX**, a cryptocurrency exchange, and **Alameda Research**, the affiliated trading firm he founded.

It is intended to answer several different questions without collapsing them into one another:

1. What was Bankman-Fried actually charged with and convicted of?
2. What conduct did the jury verdict establish, as opposed to what prosecutors merely alleged?
3. What did the principal cooperating witnesses — especially Caroline Ellison, Gary Wang and Nishad Singh — testify to?
4. What documentary and software evidence corroborated those witnesses?
5. What was Bankman-Fried's defense when he testified himself?
6. What happened on appeal?
7. Why does the case contain such a striking MIT / Stanford / academic-family cluster?
8. Which colorful details came from trial testimony or later reporting and therefore need a weaker evidentiary label than the conviction itself?

The evidentiary hierarchy used here is:

**published judicial opinion / judgment > official DOJ case record > filed court submission > university or other institutional biography > contemporaneous trial reporting > later summaries**.

A witness's testimony is evidence that the witness said something under oath. It is not automatically an independent finding that every detail of the testimony was true. Where possible this dossier says **“Ellison testified,” “Wang testified,” “the government argued,”** or **“the Second Circuit summarized the evidence”** rather than silently converting those propositions into unattributed facts.

## Primary case identifiers

- **United States v. Samuel Bankman-Fried**, No. **22 Cr. 673 (LAK)**, U.S. District Court for the Southern District of New York.
- Trial judge: **Lewis A. Kaplan**.
- DOJ case page: https://www.justice.gov/usao-sdny/united-states-v-samuel-bankman-fried-aka-sbf-22-cr-673-lak
- DOJ sentencing release, 28 March 2024: https://www.justice.gov/usao-sdny/pr/samuel-bankman-fried-sentenced-25-years-prison
- Second Circuit appeal: **United States v. Bankman-Fried**, No. **24-961-cr**.
- Published Second Circuit opinion, argued 4 November 2025 and decided **12 June 2026**: https://ww3.ca2.uscourts.gov/decisions/OPN/24-961_opn.pdf

As of this dossier's 31 August 2026 update, the published appellate merits decision is the Second Circuit's June 2026 opinion **affirming the conviction and sentence**.

## Short answer

FTX was not simply “a Bitcoin company.” It was a cryptocurrency exchange. The government's case was that Bankman-Fried caused billions of dollars that FTX customers believed were being held for them to become available to Alameda Research and then used those funds for Alameda trading and loan repayments, investments, political spending, real estate and other purposes while making false statements about the safety and treatment of customer assets.

After a roughly month-long federal trial in October and November 2023, a jury convicted Bankman-Fried on **all seven counts** submitted to it. On 28 March 2024, Judge Kaplan sentenced him to **25 years in federal prison**, followed by three years of supervised release, and ordered more than **$11 billion in forfeiture**. On 12 June 2026, the U.S. Court of Appeals for the Second Circuit unanimously affirmed.

The government's most important insider witnesses included **Caroline Ellison**, former Alameda CEO and Bankman-Fried's former romantic partner; **Gary Wang**, FTX co-founder and chief technology officer; and **Nishad Singh**, FTX's head of engineering. All had pleaded guilty and cooperated. Bankman-Fried himself testified and denied intending to defraud anyone.

## The seven trial counts

The jury convicted Bankman-Fried on seven felony counts:

1. wire fraud on FTX customers;
2. conspiracy to commit wire fraud on FTX customers;
3. wire fraud on Alameda lenders;
4. conspiracy to commit wire fraud on Alameda lenders;
5. conspiracy to commit securities fraud on FTX investors;
6. conspiracy to commit commodities fraud on FTX customers; and
7. conspiracy to commit money laundering.

DOJ's sentencing release describes the same trial as involving two substantive wire-fraud counts, two wire-fraud conspiracies, and conspiracies to commit securities fraud, commodities fraud and money laundering.

The distinction between these seven tried counts and additional charges that were not tried is important. See **Additional and severed charges** below.

## What the Second Circuit said the trial evidence showed

The June 2026 Second Circuit opinion is unusually useful because it gives a compact judicial reconstruction of the trial record after briefing and argument on appeal.

The court described the government's evidence, conservatively, as **robust**. Its summary says that Bankman-Fried assured customers, investors, regulators and the public that customer funds were safe while billions of dollars were transferred from FTX customers to Alameda and elsewhere. The opinion describes those funds as being used for investments, covering Alameda losses, political contributions, real estate and lifestyle expenses, among other things.

That judicial summary should be preferred over retrospective popular accounts when a later answer needs to state the basic case in a few sentences.

## The software mechanism: Gary Wang's evidence

Gary Wang was not merely a business witness. He was the FTX co-founder and chief technology officer and could testify about how Alameda's exceptional treatment was implemented in FTX's systems.

The Second Circuit summarizes Wang's evidence as follows:

- Alameda accounts had **special privileges** unavailable to ordinary FTX customers.
- Those privileges allowed Alameda to maintain a negative balance and avoid ordinary automatic liquidation constraints.
- Bankman-Fried repeatedly had Alameda's credit limit raised.
- Wang ultimately proposed a **$65 billion credit line**, which Bankman-Fried approved.
- In practical effect, the special privileges allowed Alameda to withdraw enormous amounts from FTX.
- Some funds that customers believed they were depositing at FTX were routed through an Alameda-controlled bank account.
- Wang testified that public assurances that FTX did not invest customer assets and that the exchange was fine were inconsistent with what was actually happening.

This matters because it connects the fraud case to executable system behavior. The trial was not based only on vague claims that “money went missing.” A central cooperating witness described concrete account privileges and credit limits embedded in the exchange's operation.

The Second Circuit also identifies Wang as a longtime friend of Bankman-Fried and his former **MIT roommate**.

## Caroline Ellison's role and testimony

Caroline Ellison became one of the government's most important witnesses. She had been a trader at Jane Street before joining Alameda, later became Alameda's co-CEO and then CEO, had an intermittent romantic relationship with Bankman-Fried, pleaded guilty in December 2022, and testified under a cooperation agreement.

DOJ's December 2022 announcement of the Ellison and Wang pleas is here:

- https://www.justice.gov/usao-sdny/pr/united-states-attorney-announces-extradition-ftx-founder-samuel-bankman-fried-united

Ellison pleaded guilty to seven federal counts. Her cooperation did not erase her own criminal responsibility; it meant that she admitted participating and then supplied evidence against Bankman-Fried and others.

### Customer funds and lender repayments

The Second Circuit states that Ellison testified that Bankman-Fried **directed her to use FTX customer funds to repay Alameda lenders**. She testified that he directed the criminal conduct rather than merely learning about it after the fact.

This was one of the central factual conflicts at trial: the prosecution's insiders described deliberate use of customer funds, while Bankman-Fried's defense emphasized management failures, mistaken assumptions, delegated responsibilities and lack of fraudulent intent.

### The seven balance sheets and “alternative 7”

A particularly concrete part of Ellison's evidence concerned Alameda's June 2022 balance sheet.

The government's later sentencing submission for Ellison reconstructs the episode from her testimony, spreadsheets and metadata. According to that filing:

- Alameda's actual balance sheet reflected roughly **$10 billion borrowed from FTX** and roughly **$5 billion in related-party loans** to Bankman-Fried, Wang, Singh and others.
- Ellison and Bankman-Fried believed sending the true version to lender Genesis would be damaging.
- Bankman-Fried asked Ellison to prepare alternative presentations.
- Ellison prepared **seven** alternatives.
- The alternatives variously hid or obscured the FTX borrowing and insider loans and altered the apparent risk profile.
- Bankman-Fried selected **“alternative 7.”**
- Ellison sent that version to Genesis and other lenders.
- The government's filing says spreadsheet metadata corroborated Bankman-Fried's review of the workbook before the selected tab was converted and sent.

Government sentencing memorandum for Caroline Ellison, filed 17 September 2024 (mirror of SDNY docket filing):

- https://www.courthousenews.com/wp-content/uploads/2024/09/caroline-ellison-prosecutors-sentencing-memo.pdf

Because this source is a **government sentencing memorandum**, its characterizations should be attributed to the government unless the same point is independently established by the appellate opinion, verdict or another neutral court finding.

### Alameda's asset picture and “Sam coins”

The same sentencing memorandum discusses an internal analysis sometimes described as **“NAV Minus Sam Coins.”** The government argued that Alameda's apparently positive asset value depended heavily on illiquid tokens associated with Bankman-Fried's ecosystem, including FTT and other assets that could not simply be liquidated at their marked values without affecting the market.

The filing says that Ellison analyzed the implications of further venture investments during the market downturn and understood that additional spending would require still more borrowing of customer funds. This is useful evidence for the government's theory that the crisis was not just a single accounting accident discovered in November 2022.

### The Alameda all-hands meeting

Former Alameda engineer **Christian Drappi** authenticated a secretly recorded Alameda employee meeting after the collapse began. The Second Circuit says the recording captured Ellison explaining that Alameda had used FTX customer deposits to repay loans and, when asked who made the decision, attributing it to **Sam**.

This is important because it gives the prosecution an item of near-contemporaneous evidence rather than relying solely on an account reconstructed months later in preparation for trial.

## Nishad Singh

Nishad Singh, FTX's head of engineering, also pleaded guilty and testified for the government.

The Second Circuit summarizes his testimony that:

- when told Alameda had borrowed approximately **$13 billion** from FTX, Bankman-Fried did not react as though the information were an unexpected revelation;
- Singh came to regard the conduct as **“heinously criminal”**;
- he was troubled by spending on real estate, endorsements, celebrities and stadium-related expenditures;
- he signed blank checks that were used in the political-contribution program, helping obscure the true source of funds; and
- Bankman-Fried directed him to backdate and falsify FTX revenue information.

Singh's testimony therefore covered both the customer-funds mechanism and the use of corporate/insider structures to create misleading records or conceal the source of expenditures.

## FTX general counsel Can Sun

Former FTX general counsel **Can Sun** supplied a different sort of evidence.

The Second Circuit says that during the collapse Bankman-Fried asked Sun to devise legal justifications for the use of customer funds. Sun examined possible theories and concluded that they were unsupported by the facts. He testified that Bankman-Fried did not appear surprised when told that the proposed legal explanations did not work.

This evidence was relevant to the defense's attempt to characterize the events as good-faith business judgment, legal ambiguity or misunderstanding.

## Adam Yedidia

**Adam Yedidia** was a longtime Bankman-Fried friend and FTX developer. Unlike Ellison, Wang and Singh, his testimony is useful partly because he was not one of the principal cooperating executives pleading to the core fraud conspiracy.

Contemporaneous trial reporting describes Yedidia discovering that, even after correcting a major accounting bug, Alameda still appeared to owe FTX approximately **$8 billion**. He testified that after raising the issue with Bankman-Fried in mid-2022, Bankman-Fried told him in substance that the firms had been “bulletproof” the previous year but were no longer bulletproof. Yedidia later resigned after learning that Alameda had used FTX customer money to repay creditors.

Because the Second Circuit opinion does not rely on Yedidia in its short factual summary, these details are kept at a lower source tier pending a clean official trial-transcript archive.

Contemporaneous reporting leads:

- TechCrunch, 2023 trial coverage: https://techcrunch.com/2023/10/05/ftx-co-founder-sam-bankman-fried-trial-adam-yedidia-testimony/
- The Guardian, 2023 trial coverage: https://www.theguardian.com/business/2023/oct/05/sam-bankman-fried-trial-ftx-adam-yedidia-testimony

## Bankman-Fried testified himself

Bankman-Fried took the stand in his own defense.

The Second Circuit summarizes his position as follows:

- he denied defrauding anyone and denied intentionally taking customer funds;
- he said he believed Alameda had assets sufficient to cover its liabilities;
- he characterized FTX's growth and failure as involving serious management and risk-control failures;
- he identified the absence of a dedicated risk-management function or chief risk officer as a major mistake;
- he said he was surprised by the size of Alameda's negative balance late in 2022; and
- he defended public statements about FTX's condition on the ground that he still believed Alameda had a positive net asset value.

His lawyers therefore did not need to prove that FTX was well run. They needed to create reasonable doubt about **fraudulent intent**. The jury rejected that defense and convicted on all seven counts.

## Verdict, sentence and forfeiture

The jury returned guilty verdicts on all seven counts on **2 November 2023**.

On **28 March 2024**, Judge Kaplan sentenced Bankman-Fried to:

- **25 years in prison**;
- **three years of supervised release**; and
- **more than $11 billion in forfeiture**.

DOJ's sentencing release states that the proven schemes involved billions in misappropriated FTX customer funds, more than $1.7 billion in fraud affecting FTX investors, and more than $1.3 billion affecting Alameda lenders.

Primary DOJ source:

- https://www.justice.gov/usao-sdny/pr/samuel-bankman-fried-sentenced-25-years-prison

For later retrieval, do not translate the forfeiture order into a claim that every victim permanently lost $11 billion. Criminal forfeiture, bankruptcy recoveries, asset appreciation, restitution/remission and victim loss are related but not identical accounting concepts.

## Appeal: conviction and sentence affirmed in June 2026

Bankman-Fried appealed to the U.S. Court of Appeals for the Second Circuit. Oral argument took place on **4 November 2025**. The court decided the appeal on **12 June 2026** and **affirmed**.

Primary source:

- https://ww3.ca2.uscourts.gov/decisions/OPN/24-961_opn.pdf

Among other issues, Bankman-Fried challenged evidentiary rulings, restrictions on portions of an advice-of-counsel theory, jury instructions, alleged suppression of exculpatory material, and forfeiture/loss-related rulings. The panel rejected his grounds for reversal.

One important legal point for future Blackball answers is that later asset appreciation or a later ability to repay creditors does not retroactively make an earlier fraudulent taking lawful. The relevant question is not simply whether bankruptcy assets eventually became valuable enough to fund distributions; the fraud offenses concern obtaining or using property through materially false or deceptive representations at the time of the conduct.

The opinion is also a useful safeguard against the common retrospective argument that “customers were eventually made whole, therefore there was no theft/fraud.” Recovery can matter to bankruptcy distributions and sentencing arguments without negating an already completed fraud.

## Additional and severed charges

The seven-count October 2023 trial did **not** encompass every charge prosecutors had brought during the case.

Additional allegations included unlawful campaign-finance activity, bank-related conduct and an alleged conspiracy to bribe Chinese government officials. Extradition-consent questions involving the Bahamas complicated trying some later-added counts in the first trial.

Prosecutors initially contemplated a second trial. In December 2023 they told Judge Kaplan that they would **not proceed with a second trial**, citing the overlap in evidence and the public interest in proceeding promptly to sentencing.

Contemporaneous report summarizing the government's December 2023 letter:

- Associated Press: https://apnews.com/article/b01fae9f9dd69f2ac2e8bbda21d277ff

### Chinese bribery allegation

The DOJ Criminal Division's FCPA case page records the separate allegation that Bankman-Fried authorized transfers intended to induce Chinese officials to unfreeze cryptocurrency accounts associated with Alameda. This was an **additional charged allegation**, not one of the seven counts on which the 2023 jury convicted him.

DOJ FCPA case page:

- https://www.justice.gov/criminal/criminal-fraud/case/united-states-v-samuel-bankman-fried

The government's later Ellison sentencing memorandum says Ellison disclosed evidence concerning the alleged scheme and refers to transfers totaling roughly **$140 million**. Other government descriptions of the charged bribery conduct use different dollar descriptions for particular transfers; preserve the source-specific number rather than silently harmonizing them.

## Bail revocation and alleged witness tampering

Bankman-Fried was initially released pretrial under an unusually large bond package and lived at his parents' home near Stanford.

Judge Kaplan later revoked his bail. The government argued, and the court found probable cause, that Bankman-Fried had attempted to tamper with witnesses while on release. The conduct included contacts involving potential witnesses and dissemination to the press of private writings belonging to Caroline Ellison. The Second Circuit affirmed the bail-revocation decision in September 2023.

This issue is separate from the seven trial convictions: bail revocation is a pretrial detention determination, not an eighth jury conviction.

A later government sentencing filing summarizes the bail proceedings and the Second Circuit's affirmance:

- https://www.courthousenews.com/wp-content/uploads/2024/03/prosecution-sbf-sentencing-memo.pdf

For a future high-stakes answer, retrieve the September 2023 Second Circuit bail order directly rather than relying only on the sentencing memorandum.

## Caroline Ellison and Bankman-Fried: relationship evidence

Ellison testified that she and Bankman-Fried had an intermittent romantic relationship beginning in 2018 and that **he was also her boss** throughout the relationship.

This fact matters evidentially for two different reasons that should not be conflated:

1. it creates an obvious possible source of bias or motive for a witness, which the defense could explore; and
2. it also describes an employment and ownership hierarchy relevant to who had decision-making power at Alameda.

The government's Ellison sentencing memorandum emphasizes that when she became Alameda's co-CEO her salary did not substantially change, she did not receive an ownership stake comparable to Bankman-Fried's, and she continued to defer to him on major decisions. That is the government's characterization of the working relationship based on trial evidence and private writings; it should not be inflated into a general psychological diagnosis.

## Colorful trial testimony: preserve, but label it correctly

Several memorable details were reported from Ellison's testimony. They are useful as trial-history evidence but should **not** be mixed into the hard core of the fraud conviction without attribution.

### Presidential ambition

Ellison testified that Bankman-Fried once said he believed he had about a **5% chance of becoming President of the United States**. This is evidence about what Ellison remembered him saying, not a substantive element of the fraud offenses.

Contemporaneous sources:

- Washington Post: https://www.washingtonpost.com/business/2023/10/10/caroline-ellison-sam-bankman-fried-trial/
- ABC News: https://abcnews.com/US/sam-bankman-fried-thought-5-chance-becoming-president/story?id=103870644

### Cultivated “eccentric founder” image

Ellison testified that Bankman-Fried consciously cultivated an image of a brilliant but eccentric and careless-looking founder: uncut hair, casual clothes and a relatively modest car. She said he believed his hair had been valuable to his public image and even to his compensation at Jane Street. Bankman-Fried later disputed the idea that the appearance was calculated, saying his clothes and hair largely reflected comfort, busyness and laziness.

This is a useful example of **conflicting sworn accounts**, not something Blackball should flatten into one unqualified fact.

Contemporaneous sources:

- ABC News trial summary: https://abcnews.com/US/ftx-sam-bankman-fried-trial-key-moments/story?id=104222061
- The Guardian: https://www.theguardian.com/business/2023/oct/13/caroline-ellison-testimony-sam-bankman-fried-trial-takeaways

### Relief when the fraud became public

Ellison described feeling a sense of relief when FTX collapsed because she no longer had to continue concealing what had happened. Again, this is testimony about her state of mind, not an independent factual finding about Bankman-Fried.

Contemporaneous source:

- https://www.theguardian.com/business/2023/oct/11/caroline-ellison-testimony-sam-bankman-fried-trial

## The MIT / Stanford / academic-family cluster

The user's original memory of the case — “the young woman who testified against her boyfriend was a professor's kid and more than one of them went to MIT” — is substantially correct, but the strongest version is **MIT rather than Boston University**.

### Caroline Ellison

Caroline Ellison did **not** attend MIT as an undergraduate. She attended Stanford. But her connection to MIT is unusually strong:

- Her father, **Glenn Ellison**, is the Gregory K. Palm Professor of Economics at MIT.
- Her mother, **Sara Fisher Ellison**, is a Senior Lecturer in Economics at MIT.
- MIT News describes Glenn Ellison coaching his daughter Caroline's middle-school mathematics team.
- Caroline participated in MIT's **PRIMES** high-school research program and wrote a mathematics research project on polynomial coefficients over finite fields.
- Stanford Mathematics records her as a Putnam Competition honor-roll participant during her undergraduate years.

Institutional sources:

- Glenn Ellison, MIT Economics: https://economics.mit.edu/people/faculty/glenn-ellison
- Sara Fisher Ellison, MIT Economics: https://economics.mit.edu/people/faculty/sara-fisher-ellison
- MIT News on Glenn Ellison and Caroline's math team: https://news.mit.edu/2013/mit-economists-hard-math-books-inspire-young-students
- MIT PRIMES testimonial by Caroline Ellison: https://math.mit.edu/research/highschool/primes/testimonials/t-Ellison.html
- MIT PRIMES paper index: https://klein.mit.edu/research/highschool/primes/papers.html
- Stanford Mathematics, 2013 Putnam results: https://mathematics.stanford.edu/news/2013-putnam-competition-results
- Stanford Mathematics, 2014 Putnam results: https://mathematics.stanford.edu/news/2014-putnam-competition-results
- Stanford Mathematics, 2015 Putnam results: https://mathematics.stanford.edu/news/2015-putnam-competition-results

A Boston Globe report based on confirmation from an MIT spokesperson also explicitly identifies Glenn and Sara Fisher Ellison as Caroline's MIT-economist parents:

- https://www.bostonglobe.com/2022/11/16/business/mit-media-lab-cancels-fellowship-program-tied-crypto-firm-ftx/

### Sam Bankman-Fried

Bankman-Fried attended **MIT**. An MIT Educational Studies Program biography lists:

- college/employer: MIT;
- major: Physics/Math;
- graduation year: **2014**.

MIT source:

- https://esp.mit.edu/teach/teachers/sambf/bio.html

The Boston Globe reported, based on MIT confirmation, that he majored in physics and minored in mathematics and graduated in 2014.

Bankman-Fried was himself also the child of academics. His father **Joseph Bankman** and mother **Barbara Fried** were longtime Stanford Law School professors. Joseph Bankman is the Ralph M. Parsons Professor of Law and Business; Fried is professor emerita.

Institutional/current faculty sources:

- Joseph Bankman, Stanford Law School: https://law.stanford.edu/directory/joseph-bankman/
- Barbara Fried, Stanford Law School: https://law.stanford.edu/directory/barbara-h-fried/

A 2024 defense sentencing memorandum also identifies them as Bankman-Fried's parents and Stanford Law professors; because it is a defense filing, use it only for uncontested biographical facts, not for its character assessment of Bankman-Fried.

### Gary Wang

The Second Circuit identifies Gary Wang as Bankman-Fried's former **MIT roommate** and longtime friend.

The Boston Globe reported that an MIT spokesperson confirmed Wang studied mathematics and computer science and graduated from MIT in **2015**.

- https://www.bostonglobe.com/2022/11/17/business/failed-crypto-firm-ftx-has-some-key-boston-connections/

Wang's MIT connection is therefore not merely a press inference from social relationships; it was institutionally confirmed and also appears in the appellate court's account of his relationship to Bankman-Fried.

### Adam Yedidia

MIT records identify Adam Yedidia as an alumnus who completed a doctorate in **Electrical Engineering and Computer Science**, with the thesis completed in 2020 and the degree recognized in MIT's 2021 commencement context.

- MIT Systems Intelligence for Manufacturing Laboratory news: https://sia.mit.edu/news/

Yedidia later worked as an FTX developer and testified at Bankman-Fried's trial.

### Sam Trabucco

Former Alameda co-CEO **Sam Trabucco** also had an MIT background. An MIT Educational Studies Program biography lists him as an MIT student in mathematics/computer science and gives a graduation year of **2015**.

- https://esp.mit.edu/teach/teachers/sammyt628/bio.html

He was a senior Alameda figure but **was not one of the prosecution witnesses at Bankman-Fried's trial**. Do not silently add him to the cooperating-witness list merely because he belonged to the same MIT/Alameda network.

## Why the academic-network detail is worth preserving

The educational/family pattern is unusually dense:

- Bankman-Fried: MIT physics/mathematics; child of two Stanford Law academics.
- Wang: MIT mathematics/computer science; Bankman-Fried's former MIT roommate; FTX co-founder/CTO; cooperating witness.
- Ellison: Stanford mathematics background; daughter of two MIT economists; MIT PRIMES alumna; Alameda CEO; cooperating witness; former romantic partner of Bankman-Fried.
- Yedidia: MIT EECS doctorate; longtime Bankman-Fried friend; FTX developer; trial witness.
- Trabucco: MIT mathematics/computer-science background; former Alameda co-CEO; not a trial witness.
- Singh: Berkeley EECS rather than MIT; FTX engineering executive; cooperating witness.

This does **not** establish any general proposition about MIT, Stanford, elite universities, mathematicians, economists or professors' children. What it does establish is that the FTX/Alameda leadership and witness network was unusually concentrated in a small, technically educated and socially interconnected elite-academic circle.

That network can matter to later questions about recruitment, trust, social proof, elite credentialing, friendship networks, founder mythology and why counterparties or journalists found particular people credible — but each such causal claim would need its own evidence.

## Related FTX prosecution: Ryan Salame

Former FTX executive **Ryan Salame** was prosecuted separately. His case should not be conflated with Bankman-Fried's seven trial counts.

DOJ sources:

- Guilty plea announcement, 7 September 2023: https://www.justice.gov/usao-sdny/pr/statement-us-attorney-damian-williams-guilty-plea-ryan-salame-former-ceo-ftx
- Sentencing announcement, 28 May 2024: https://www.justice.gov/usao-sdny/pr/former-ftx-executive-ryan-salame-sentenced-90-months-prison

Salame pleaded guilty to campaign-finance / Federal Election Commission conspiracy and unlicensed money-transmission conduct. DOJ said the political-contribution scheme involved hundreds of contributions and tens of millions of dollars. He was sentenced to **90 months in prison** plus supervised release, forfeiture and restitution.

This separate prosecution is useful evidence that the political-money strand around FTX was not merely a colorful side issue raised at Bankman-Fried's trial.

## Cooperating witnesses after the trial

The cooperating witnesses received substantially lower sentences than Bankman-Fried. That is expected to be an important defense-side context whenever their testimony is summarized: they pleaded guilty, faced serious exposure and cooperated with prosecutors in hopes that their assistance would be considered at sentencing.

At a minimum, later retrieval should preserve:

- **Caroline Ellison:** sentenced in September 2024 to two years' imprisonment after extensive cooperation.
- **Nishad Singh:** sentenced in October 2024 without a prison term.
- **Gary Wang:** sentenced in November 2024 without an additional prison term / effectively time served, after cooperation.

These sentencing outcomes do not establish that their testimony was false; nor should their cooperation incentives be omitted when assessing witness credibility.

For a future detailed sentencing comparison, retrieve the judgments and government cooperation letters rather than relying on retrospective news summaries.

## What is established at different evidentiary levels

### Level A — verdict / judicial disposition

High confidence:

- Bankman-Fried was tried in SDNY on seven federal fraud/conspiracy/money-laundering counts.
- The jury convicted him on all seven.
- Judge Kaplan sentenced him to 25 years and imposed more than $11 billion in forfeiture.
- The Second Circuit affirmed in June 2026.

### Level B — evidence summarized by the appellate court

High confidence that this evidence was presented at trial; individual propositions remain witness/document evidence rather than separate verdict interrogatories:

- Ellison said Bankman-Fried directed use of FTX customer funds to repay Alameda lenders.
- Wang described Alameda's exceptional account privileges and a $65 billion credit line.
- Singh described the approximately $13 billion Alameda borrowing, falsified/backdated revenue information and political-contribution mechanics.
- Sun said proposed legal justifications for the use of customer money were unsupported by the facts.
- Drappi authenticated the Alameda meeting recording attributing the decision to Bankman-Fried.
- Bankman-Fried denied fraudulent intent and testified in his own defense.

### Level C — government court filings

Strong documentary leads, but retain attribution:

- the seven alternative balance sheets and selection of “alternative 7”;
- spreadsheet metadata corroborating review;
- the “NAV Minus Sam Coins” analysis;
- Ellison's private writings and cooperation history;
- the government's description of the Chinese bribery evidence;
- the government's characterization of the power imbalance between Ellison and Bankman-Fried.

### Level D — contemporaneous trial reporting

Useful but lower tier unless transcript-corroborated:

- the “5% chance of becoming president” remark;
- cultivated hair / cheap-car / eccentric-founder image testimony;
- some detailed relationship chronology;
- Yedidia's “bulletproof” quotation;
- Ellison's description of emotional relief after the collapse;
- various colorful details about attempts to recover frozen Chinese exchange accounts before the alleged payment scheme.

## Common failure modes for later answers

1. **Calling FTX a Bitcoin company.** It was a cryptocurrency exchange; Bitcoin was only one asset in a much broader crypto business.
2. **Calling Ellison an MIT graduate.** She attended Stanford. Her parents are MIT economists and she participated in MIT PRIMES.
3. **Saying Ellison's father taught at Boston University.** The relevant professor was Glenn Ellison at MIT.
4. **Treating all MIT-linked people as defendants or cooperators.** Trabucco, for example, was an Alameda executive with an MIT background but was not a prosecution witness at SBF's trial.
5. **Turning testimony into a judicial finding.** Use “Ellison testified” for details that rest on her account.
6. **Ignoring cooperation incentives.** Ellison, Wang and Singh pleaded guilty and cooperated.
7. **Reducing the case to “crypto went down.”** The government's case centered on unauthorized use of customer assets, false statements, misleading balance sheets and privileged access for Alameda.
8. **Assuming eventual bankruptcy recovery erases the fraud.** The Second Circuit rejected that logic.
9. **Mixing severed/untried charges into the seven convictions.** Campaign-finance and foreign-bribery allegations were not separate guilty verdicts in the October/November 2023 trial.
10. **Using the academic network as guilt by association.** The network is sociologically interesting; it is not evidence against MIT, Stanford, professors, mathematicians or economists as groups.

## Retrieval questions this dossier can support

- What exactly did Caroline Ellison testify that Bankman-Fried told her to do?
- Was there software evidence that Alameda received privileges other FTX customers did not?
- What was the $65 billion Alameda credit line?
- What were the seven balance sheets and “alternative 7”?
- Did Bankman-Fried testify, and what was his defense?
- Which witnesses had pleaded guilty before testifying?
- Which central FTX/Alameda people attended MIT?
- Were Caroline Ellison's parents professors, and where?
- Did Ellison herself attend MIT?
- What did the jury convict Bankman-Fried of?
- What was the sentence?
- What happened on appeal in 2026?
- Were campaign-finance and Chinese-bribery allegations part of the seven-count verdict?
- What evidence came from a court opinion versus a prosecution sentencing memorandum versus trial journalism?

## Source limitations and open retrieval work

- The Second Circuit opinion is the best compact official account, but it is an appellate opinion, not a line-by-line transcript of a month-long trial.
- DOJ press releases are authoritative for the government's procedural record and position, not neutral historical analyses.
- Sentencing memoranda are adversarial filings. They often contain excellent record citations and documentary detail but must remain attributed to the filing party.
- Much of the daily trial transcript circulated through press reproductions and unofficial mirrors. Before promoting a colorful quotation to a top-tier claim, locate the official transcript page or an authenticated docket copy.
- The exact accounting of victim losses, bankruptcy recoveries, distributions, token appreciation and forfeited assets changed after trial and should be treated as a separate, time-sensitive research problem.
- The current custody status of each cooperating witness is also time-sensitive and should be freshly checked before answering a present-tense question.

See also:

- [Atomic claim ledger](CLAIMS.md)
- [Source map and provenance](SOURCES.md)
