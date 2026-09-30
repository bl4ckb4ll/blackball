# Employer opportunity catalog

This catalog starts from employers rather than degrees.

The question is not "what should a computer-science, electrical-engineering, or mechanical-engineering graduate be able to do?" It is:

> **What work are employers actually trying to buy, where is it located, what gate do they impose, and is there a path into it from outside the occupation?**

The first pass is deliberately concentrated in technology because public requisitions, engineering organizations, job families, internships, new-graduate programs, and technical work descriptions are unusually inspectable there. The method is intended to extend to other occupations.

## Current catalog

| Employer | Current case | Initial useful evidence |
| --- | --- | --- |
| Amazon | [amazon](../amazon/) | full Software Development census; organization-demand map |
| Anthropic | [anthropic](../anthropic/) | job-family map; geography/hybrid rules; technical role samples |
| Meta | [meta](../meta/) | software, AI, infrastructure, production engineering, data-center, security, research, hardware/device surface |
| Uber | [uber](../uber/) | engineering surface plus internships, university-graduate routes, and Career Prep |
| Google | [google](../google/) | explicit early-career software role and large internship/university surface |
| Microsoft | [microsoft](../microsoft/) | broad profession map; software/hardware/data-center/support paths; early-in-profession programs |
| Apple | [apple](../apple/) | software, OS, ML/AI, hardware, operations and student internship surfaces |
| NVIDIA | [nvidia](../nvidia/) | large engineering inventory; software, systems, silicon, hardware, robotics; explicit new-college-grad category |
| OpenAI | [openai](../openai/) | research/product/infrastructure/compute plus explicit 0–3 year emerging-talent and residency routes |
| Cloudflare | [cloudflare](../cloudflare/) | large systems/network/security engineering surface with in-hub, hybrid, and distributed arrangements |

Machine-readable first-pass fields are in [employers.tsv](employers.tsv).

## Minimum record for each employer

Each employer case should eventually contain:

```text
employer
capture_time
careers_source
job_id
title
job_family
named_team
location
work_arrangement
level
entry_route
education_required
equivalent_experience_wording
experience_required
work_description
technical_requirements
interview_gate
posting_first_seen
posting_last_seen
status
source_url
notes
```

Keep employer statements, inferred classification, and observed hiring behavior separate.

## Entry-route vocabulary

Use these labels only when the evidence supports them:

- `internship`
- `apprenticeship`
- `new_graduate`
- `early_career`
- `residency`
- `career_pivot`
- `technician`
- `experienced_hire`
- `unknown`

An employer saying "equivalent practical experience" is not proof that applicants without the conventional credential are routinely hired. It is a posting-level statement until hiring evidence is collected.

## What this catalog should eventually answer

For a person asking whether to spend months or years trying to move into a field:

1. Is the work currently advertised?
2. Is the demand repeated over time?
3. Is there an actual entry gate, or only experienced-hire demand?
4. Can the required evidence be produced outside the occupation?
5. Does the gate require enrollment in a school?
6. Is there a technician, operations, support, data-center, testing, deployment, or other adjacent route?
7. Where does the work physically exist?
8. What is forfeited or risked to pursue it?
9. What evidence shows people actually cross the gate?
10. What evidence says the route is a dead end?

The catalog is not a list of aspirational employers. It is an attempt to expose the structure of actual opportunity.
