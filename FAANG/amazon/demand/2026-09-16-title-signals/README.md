# Amazon title signals — 2026-09-16 snapshot

This is a deterministic derivation from the already preserved 2,613-requisition Amazon Software Development snapshot. It does **not** re-fetch Amazon Jobs and therefore keeps the original timestamp and denominator fixed.

## Direct title counts

- population: **2613** requisitions
- title explicitly says machine learning / ML / AIML: **127**
- title explicitly says AI / artificial intelligence / GenAI / agentic AI / AIML: **178**
- title explicitly contains both ML and AI signals: **41**
- title explicitly says either ML or AI: **264**
- title explicitly identifies a non-management software-development/software-engineering/SDE role: **1920**
- title has explicit ML/AI language and also matches the software-IC title screen: **164**

These are **title signals**, not occupational classifications. They provide a conservative lower bound on requisitions whose public title itself foregrounds ML/AI. They will miss ML-centered work with generic titles, and they can include jobs whose title names an AI/ML product, accelerator, or infrastructure area even when the employee is not training models.

The earlier body-wide screening tag matched **836** requisitions for ML/AI language. That is an upper retrieval queue, not 836 ML jobs. The gap between body-wide mentions and explicit-title signals is exactly what a body-aware classification has to resolve.

## What the explicit ML/AI titles themselves contain

A mutually exclusive title-only taxonomy of the **264** ML/AI-title records gives:

| title signal family | requisitions |
| --- | ---: |
| software / systems / infrastructure | 161 |
| model / science title | 13 |
| hardware / firmware / silicon title | 44 |
| compiler title | 8 |
| management title | 16 |
| other | 22 |

This table is deliberately a **title taxonomy**, not a work taxonomy. For example,  belongs in the hardware/firmware title family even though ML appears in the title, while  belongs in software/systems. That distinction is already enough to reject treating every explicit ML title as a model-building job.

The taxonomy is priority ordered and checked in beside the results so it can be audited. Body-aware review remains necessary, especially for the , , and  buckets.

Files in this directory preserve every matching requisition and its assigned title family so the screen can be inspected rather than trusted from the aggregate count alone.
