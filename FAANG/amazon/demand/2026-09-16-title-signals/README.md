# Amazon title signals — 2026-09-16 snapshot

This is a deterministic derivation from the already preserved 2,613-requisition Amazon Software Development snapshot. It does **not** re-fetch Amazon Jobs and therefore keeps the original timestamp and denominator fixed.

## Counts

- population: **2613** requisitions
- title explicitly says machine learning / ML / AIML: **127**
- title explicitly says AI / artificial intelligence / GenAI / agentic AI / AIML: **178**
- title explicitly says either ML or AI: **264**
- title explicitly identifies a non-management software-development/software-engineering/SDE role: **1920**
- title has explicit ML/AI language and also matches the software-IC title screen: **164**

These are **title signals**, not occupational classifications. They provide a conservative lower bound on requisitions whose public title itself foregrounds ML/AI. They will miss ML-centered work with generic titles, and they can include software/infrastructure jobs whose title contains AI/ML because of the product or team rather than because the employee is an ML researcher or model developer.

The earlier body-wide screening tag matched **836** requisitions for ML/AI language. That is an upper retrieval queue, not 836 ML jobs. The gap between body-wide mentions and explicit-title signals is exactly what the next manual/body-aware classification has to resolve.

Files in this directory preserve the matching requisitions so the screen can be audited rather than trusted from the count alone.
