# Machine learning and AI as employment specialties

This is the second specialty test case in the FAANG employer-demand work, after compilers.

The question is not whether machine learning or AI is important technology. It is what kinds of jobs an employer actually advertises under or around those labels, how many are visible, how specialized they are, and how much of the apparent demand is model/science work versus software, infrastructure, hardware, management, or adjacent work.

## Amazon: fixed 2026-09-16 snapshot

The denominator is the already preserved Amazon global `Software Development` census:

- 2,613 distinct numeric Amazon requisition IDs;
- retrieval 2026-09-16 15:57:26Z–15:57:53Z;
- zero duplicate requisition records and zero missing numeric Amazon job IDs.

See [`../../amazon/demand/2026-09-16-census.md`](../../amazon/demand/2026-09-16-census.md).

## Three different quantities must not be collapsed

### 1. Body-wide mention queue: 836

The original broad screening rule matched ML/AI language somewhere in **836** of the 2,613 source records.

That is approximately 32% of the requisition stock, but it is **not 836 ML jobs**. A posting can mention machine learning because the product uses it, the team collaborates with an ML group, ML is one possible specialization, or generative-AI tooling appears in the engineering environment.

Treat 836 as a retrieval queue for later inspection.

### 2. Explicit title signal: 264

A deterministic derivation from the same frozen snapshot found:

- **127** titles explicitly containing `machine learning`, standalone `ML`, or `AIML`;
- **178** titles explicitly containing AI language such as `AI`, `artificial intelligence`, `GenAI`, `generative AI`, `agentic AI`, or `AIML`;
- **41** titles matching both screens;
- **264** distinct titles/requisitions matching at least one of the ML or AI screens.

The 264 are about 10.1% of the dated Software Development requisition stock. They are a conservative **title signal**, not a count of ML occupations. The screen will miss ML-centered work with generic titles, and it will include jobs whose title foregrounds an AI/ML product or accelerator even if the employee's work is ordinary software or hardware engineering.

Machine-readable derivation: [`../../amazon/demand/2026-09-16-title-signals/`](../../amazon/demand/2026-09-16-title-signals/).

### 3. Title-family signal inside those 264

To make the ambiguity visible, the 264 explicit ML/AI titles are assigned to one mutually exclusive **title taxonomy**:

| title signal family | requisitions |
| --- | ---: |
| software / systems / infrastructure | 161 |
| hardware / firmware / silicon | 44 |
| model / science title | 13 |
| compiler title | 8 |
| management title | 16 |
| other | 22 |

These sum to 264.

This does **not** mean Amazon had only 13 model-building jobs. The `model_science` row is merely the number of explicit ML/AI-title records whose titles themselves look like `Machine Learning Engineer`, `ML Engineer`, `Applied Scientist`, `Research Scientist`, `Data Scientist`, or similar under the checked rule. Generic titles can still describe model/science work, and a `Machine Learning Engineer` can itself be heavily software-oriented.

The value of the table is narrower: it proves that even among vacancies whose titles explicitly foreground ML/AI, Amazon is advertising visibly different kinds of labor rather than one homogeneous “AI job.”

## Concrete contrasts already visible in titles

The title corpus contains examples such as:

- `Sr. Machine Learning Engineer, AWS Applied AI Solution` — model/science title signal;
- `Software Development Engineer, ML Systems, Annapurna Labs` — software/systems title signal;
- `Sr. Software Engineer- AI/ML, AWS Neuron Distributed Training - Performance Optimization` — software/systems title signal;
- `Sr. ASIC Design Engineer, Cloud-Scale Machine Learning Acceleration - Annapurna Labs` — hardware/silicon title signal;
- `Sr. Firmware Engineer, Annapurna Labs, Machine Learning Acceleration - Power and Performance` — hardware/firmware title signal;
- `Machine Learning - Compiler Engineer, AWS Neuron, Annapurna Labs` — compiler title signal;
- explicit ML/AI management titles — management rather than individual-contributor demand.

These examples are not selected to estimate proportions; the full deterministic title-family file supplies the counts.

## Software is still central inside the ML/AI-labelled set

Of the full 2,613-requisition snapshot, **1,920** titles match a broad non-management software-development/software-engineering/SDE title screen. Of the 264 explicit ML/AI-title records, **164** also match that software-IC title screen.

Again, the point is not that 164 is the “true” count of ML software jobs. It is that a large part of what appears under an ML/AI label is visibly ordinary software-engineering-shaped employment around ML/AI systems and products.

## What remains unknown

This title analysis cannot answer:

- how many of the 836 body-wide mentions are genuinely ML-centered jobs with generic titles;
- how many of the 264 explicit-title records actually involve training or designing models;
- how much time employees spend on model work versus systems, data, deployment, operations, or product integration;
- applicant supply and competition by subtype;
- how many people each requisition is intended to hire;
- vacancy fill rate or duration;
- how Amazon's ML/AI mix compares with other employers;
- whether an ML specialization is a better or worse preparation choice than broader software or systems training.

## Next evidence step

The next Amazon pass should classify the body-wide 836-record mention queue into at least:

1. model/science work;
2. ML software and distributed training/inference systems;
3. data/feature/retrieval infrastructure;
4. accelerator/hardware/firmware work;
5. compiler/runtime/kernel work;
6. application/product integration using ML/AI;
7. generic or incidental ML/AI mention;
8. management.

That classification needs inspected work descriptions, not title regexes alone. It should publish a manual audit sample and preserve uncertain records rather than forcing every posting into a confident bucket.

Only after that should Blackball compare the measured employer demand with university claims or advice about specializing in machine learning.
