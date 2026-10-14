# Amazon: department layoffs versus advertised demand and AI productivity

Research cut-off **2026-10-14**. This is an evidence layer on top of the **2026-09-16** Amazon Software Development snapshot: **2,613 distinct requisitions, 42 business-category labels, 125 team labels, and 143 observed business/team combinations**. It does not silently change those historic counts.

## Files

- [2026-10-14-events.tsv](2026-10-14-events.tsv) — unique workforce-action IDs; Washington WARN notices reference the relevant parent corporate round where supported.
- [../org-tree/2026-10-14-labor-ai-org-signals.tsv](../org-tree/2026-10-14-labor-ai-org-signals.tsv) — reported department/service attachments for layoffs **and** separately identified AI engineering case studies.
- [../org-tree/2026-09-16-demand-map/](../org-tree/2026-09-16-demand-map/) — September advertised-work evidence, NOT employee headcounts.

The AI studies share case identifier **AMZ-2026-06-AI-CASE** in the organization signals table. It is deliberately **not** a layoff event in the workforce-events table.

## Cross-layer comparison

| Organization/node | Sept. software requisitions | Layoff observations | AI workflow observations | Critical boundary |
| --- | ---: | --- | --- | --- |
| AWS, broad hiring category | **1,224**, of which 904 use the broad team-sde-primary label | January 2026 affected-team reports: **Bedrock, Redshift, ProServe** | June Bedrock inference-engine experiment | Service name matches; affected people and engineering team do not |
| Stores / narrower retail hiring category | **70** under retail, NOT a Stores-wide total | January Prime subscription and Delivery Experience; October retail engineering cuts | June Stores pilots and Perfect Order Experience | Stores company organization does not equal one feed category |
| Selling Partner Services | **70** under namesake category | October affected-unit report | None linked to the same team | No employee headcount, no rate of layoff |
| AGI | **8** under namesake category | July confirmed AGI reductions, reported Data Services and Information VP groups | None linked to same team | No engineer-only layoff count |
| Prime Video/entertainment | **50** under broad entertainment category | January Prime subscription cuts are a **different** organization | June Prime Video Financial Systems sprint | Do not collapse Prime and Prime Video |
| Washington, unknown units | No valid organizational join | WARN notices of 2,303 (Oct 2025); 2,198 (Jan 2026, original notice inspected, including 58 SDE I–III at SEA104); 57 (July); 121 (Aug) affected roles | None assignable | Facility addresses and titles are not department IDs |

**Important:** advertised requisition counts are a date-stamped stock of vacancies, not a total workforce or the number of hires. Layoff notices describe affected positions, not necessarily people who ultimately separate (internal transfers can occur). A local WARN count may be a subset of a companywide reduction: **never add such a child count to its parent**. Separate notices must also not be summed without checking overlap and effective dates.

## What is actually supported about AI

Amazon's [June 10, 2026 first-party engineering account](https://aws.amazon.com/blogs/machine-learning/how-frontier-teams-are-reinventing-ai-native-development/) reports:

- **AWS Bedrock inference engine:** **6 senior engineers, 76 days**, versus a **projected plan of 30 developers for 12–18 months**. It also reports approximately **20x normalized commit velocity**. This is an employer-reported project comparison, **not 24 engineers fired**, a controlled estimate of counterfactual staffing, or evidence about the particular Bedrock employees who received January notices.
- **Prime Video Financial Systems:** **6 engineers**, a **10-day sprint** with **556 commits versus 96** in a comparison, and a revised **90-week to 24-week** project estimate. Prime Video Financial Systems is not Prime subscriptions.
- **Amazon Stores engineering pilots:** among 50-plus observed teams, the 25 that adopted both new tools and practices were reported to have a median **4.5x normalized deployment velocity**; some exceeded 10x. Perfect Order Experience and Worldwide Grocery are cited separately. Deployment counts and document turnaround are not audited economic output, staffing, or feature-quality measures.

## Original Washington primary filing: January 2026

A [24-page Amazon WARN notice on the Washington ESD government host](https://fortress.wa.gov/esd/file/WARN/Public/DownloadFile.aspx?download=1&file=a6d82fc5-3b7e-4b5b-8f9b-de2d0800173e.pdf), dated January 29 and stamped received January 30, 2026, lists per-facility affected positions, 116 remote positions, expected separation dates beginning April 28, and job-title attachments. The per-site approximate counts plus 116 remote positions sum to **2,198 planned affected employees**. Original [SEA104 title rows](2026-01-30-wa-warn-sea104.tsv), manually inspected against PDF page 4: SDE I **14**, II **36**, III **8** = **58** at that Bellevue facility, of **134** affected positions at SEA104. This is a **verified local subset**, **not** a complete Washington software-engineer total, nor a completed-separations total.

These first-hand government-filed figures supersede the earlier journalistic *source* for the January 2026 state-count row. Secondary accounts remain useful for department leads but are not required to know the filed event. The attachment names titles and facilities, **not** AWS/Stores business units or any AI cause.

The cross-employer [original-filing ingestion contract](../../../employers/layoffs/README.md) records direct SEC EDGAR and separate state WARN acquisition routes. Its adapters and continuous polling are **planned, not running**.

### Documented cuts, with different evidence strengths

- [Amazon Oct. 28, 2025 announcement](https://www.aboutamazon.com/news/company-news/amazon-workforce-reduction): approximately **14,000** corporate roles; [original Oct. 28 Washington WARN filing](https://cdn.geekwire.com/wp-content/uploads/2025/10/amazon-warn.pdf): **2,303** affected Washington roles, with later scheduled separations; [GeekWire's review](https://www.geekwire.com/2025/amazon-layoffs-hit-software-engineers-hardest-in-washington/) reports **more than 600 SDEs** among those positions.
- [Amazon Jan. 28, 2026 announcement](https://www.aboutamazon.com/news/company-news/amazon-layoffs-corporate-jan-2026): approximately **16,000** corporate roles. [Business Insider's review of internal employee posts](https://www.businessinsider.com/internal-messages-teams-jobs-affected-amazon-layoffs-2026-1) suggests Bedrock, Redshift, ProServe, Prime subscriptions and Delivery Experience were affected. These are **named service leads**, not published unit-specific layoff counts. [GeekWire's Jan. 2026 WARN coverage](https://www.geekwire.com/2026/amazon-layoffs-hit-nearly-2200-in-washington-state-more-than-half-in-core-product-and-engineering-roles/) reports **2,198** Washington positions, with software development the largest title group.
- [July 2 Washington notice reviewed by GeekWire](https://www.geekwire.com/2026/filing-shows-amazon-cut-57-tech-jobs-in-washington-state-in-recent-weeks/): **57** affected positions, **16** software engineers, no validated business-unit join.
- [Reuters July 22, 2026](https://www.reuters.com/business/world-at-work/amazon-cuts-jobs-its-artificial-general-intelligence-group-2026-07-22/): Amazon confirms **some AGI cuts** but no count; accounts of employees under two named AGI VPs do not verify full structure or occupation.
- [Aug. 31 Washington notice, GeekWire](https://www.geekwire.com/2026/amazon-lays-off-121-workers-across-corporate-and-fulfillment-jobs-in-washington-state/): **121** affected positions. A [human-reviewed secondary title extraction](https://walaborintel.com/warn/notice/amazon-9ac60a70b1ed/) lists **39 SDEs** (13 SDE I + 12 II + 12 III + 2 principal); its **original position attachment has not been independently verified**.
- [Reuters Oct. 8, 2026](https://www.reuters.com/business/world-at-work/amazon-makes-fresh-job-cuts-mainly-retail-division-2026-10-08/) and [Business Insider Oct. 7](https://www.businessinsider.com/amazon-layoffs-hit-hundreds-of-employees-across-multiple-teams-2026-10): cuts **primarily Stores**, including reported retail engineering and support teams. **Fewer than 1,000** is a bound for the overall round, **not** a count for Stores, software engineers or Selling Partner Services.

## Competing executive explanations

[Andy Jassy's June 17, 2025 AI memo](https://www.aboutamazon.com/news/company-news/amazon-ceo-andy-jassy-on-generative-ai) explicitly forecasts a smaller corporate workforce because of AI efficiency. The [October 2025 Amazon workforce memo](https://www.aboutamazon.com/news/company-news/amazon-workforce-reduction) links AI's pace to leaner organization. But [Jassy told analysts on Oct. 30](https://www.geekwire.com/2025/its-culture-amazon-ceo-says-massive-corporate-layoffs-were-about-agility-not-ai-or-cost-cutting/) the October round was **not primarily AI-driven** and emphasized culture/layers. The [January 2026 memo](https://www.aboutamazon.com/news/company-news/amazon-layoffs-corporate-jan-2026) also emphasizes bureaucracy and continued targeted hiring. Preserve **both** explanations instead of adopting one as a causal estimate.

## Rules for extending this map

1. **Separate company announcements, government notices, first-hand source reports, employer case studies and inferences.** Use the explicit source and identification labels in both TSVs. A journalist reading internal Slack posts provides stronger evidence than an unattributed rumor, but not payroll verification.
2. Join the **narrowest supported named node**. The Sept. retail feed label is **not** identical to the corporate Stores division. Business/team bucket labels are not stable personnel IDs. **Prime subscriptions != Prime Video**.
3. Unknown counts stay **blank**, not zero. Avoid reporting a denominator of software vacancies as a denominator of employed engineers, and avoid double-counting parent rounds plus local WARNs or the same team twice.
4. For causal displacement, require **which tasks moved to AI, which positions were removed/not filled, matched organizational identity, timing, and credible alternative explanations**. The Bedrock match is currently **same service**, not same team or staff.

## Next specific acquisitions

Finish title-by-title parsing and reconciliation of the inspected original Washington **2026-01-30** attachment; separately obtain and inspect the original **2026-08-31** attachment; record exact position titles and effective dates. Resolve AWS Bedrock/Redshift/ProServe and Stores engineering organizations in **posting bodies, not generic team tags**; retrieve another requisition snapshot to see actual additions/removals of stable job IDs. Neither disappearing ads nor new ads establish employment flows without corroboration.
