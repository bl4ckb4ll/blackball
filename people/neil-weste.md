# Neil Weste, his CMOS textbook, and who got the chip-design work

When Morse Micro needed someone to design the core of its Wi-Fi HaLow physical layer, the person who did that work was Neil Weste. A student could obtain his textbook and learn CMOS design from it. Weste came to the company having already led the design of a commercial Wi-Fi modem chip. A reader deciding whether study will lead to paid chip-design work needs evidence about people who entered as readers or graduates. Weste's appointment tells us what happened to the author. [Weste’s ICST 2024 speaker biography, printed p. 11][icst] · [University of Adelaide, 2014][adelaide]

Sources reviewed 24 November 2026.

## Who got the work?

| Claim | What the source establishes |
| --- | --- |
| NW-01 · Teaching | Pearson credits **Neil H. E. Weste and David Money Harris** on the fourth edition of *CMOS VLSI Design*. The earlier *Principles of CMOS VLSI Design* was coauthored with **Kamran Eshraghian**. Adelaide reported in 2014 that more than 600 institutions had used the text. That counts institutions. It tells us how widely it was taught, while leaving the number and destinations of individual readers unknown. [Pearson][pearson] · [1985 bibliographic record][principles] · [Adelaide’s degree citation][adelaide] |
| NW-02 · Experience before Morse | Weste cofounded Radiata in 1997. On its 802.11a chipset he designed the radio chip’s digital circuits and led design of the modem chip. He had already done closely related work on a previous generation of Wi-Fi silicon. [Adelaide’s account of Radiata][adelaide] |
| NW-03 · Recruitment | Michael De Nil and Andrew Terry founded Morse Micro in Sydney in 2016. Terry recalled meeting Weste, who then joined them. In 2017, investor Mike Nicholls identified him as an early recruit and singled out the team’s Radiata experience. These accounts identify the people and the route into the team. The recruitment criteria, terms, competing applicants and any weight the founders gave the book are unknown. [Company history][morse] · [Terry’s account in EE Times][eetimes] · [Nicholls’s investment account][nicholls] |
| NW-04 · Assignment and title | Weste’s conference biography dates his joining to 2016 and credits him with designing the core physical-layer (PHY) engine for IEEE 802.11ah. Engineers Australia interviewed him as Morse Micro’s **vice president of engineering** in August 2019. The later title and the design credit each have a dated source. [ICST, printed p. 11][icst] · [Engineers Australia interview][engineers] |

## What a new entrant could actually get at Morse Micro

In October 2019 Morse Micro said its typical hire had a PhD, at least 15 years of engineering experience, or both. It described hundreds of inquiries from students and recent graduates whom it had been asking to apply later. The company then created a paid six-month rotation for recent graduates with a relevant engineering degree. That decision created places a graduate could actually seek. [Morse Micro’s announcement][first]

| Population and date | Observed outcome | What can be counted |
| --- | --- | --- |
| First graduate intake, Sydney, January 2020 | Morse Micro reported more than 50 applicants, 12 interviewed and **4 selected**. | **Under 8%** of applicants entered that intake. The company supplied a lower bound on applicants, so an exact percentage is unavailable. The earlier inquiries came from a different group. [Morse Micro’s intake report][intake] |
| One entrant, March 2021 | Alex Hiller described joining after graduating from the University of Technology Sydney. He tested Wi-Fi chips on the bench, had an op-amp fabricated in 2023 and moved into full-time design in 2024. | One documented route from graduate intake to design work, including the work in between. His interview does not say whether he studied Weste’s book. [Cambridge University Engineering Society interview, “Morse Micro”][hiller] |
| Worldwide graduate program, 2024 | CEO Michael De Nil reported **over 4,600 applicants**. His welcome post names 13 people and discusses Sydney and remote sites. | The post gives no explicit worldwide offer total. Dividing the names in the welcome by the global applicant count would manufacture an acceptance rate. [De Nil’s cohort announcement][global] |
| Sydney graduate advertisement, 2025 | A closed posting offered a six-month paid rotation and the possibility of a permanent graduate role afterward. | A historical placement offer and its terms. The proportion who converted to permanent work remains unknown. [Employer posting on Blackbird’s job board][ad] |

## What this contributes to the BME case

The [undergraduate BME dossier][bme] asks whether enough graduates can get the industry work used to sell the degree. Weste’s case catches the error at the moment someone holds up the textbook author as an example. **Whose working life is being offered as evidence to the prospective student?** Even if every reader mastered the book, Weste’s assignment would still be one person’s assignment. Counting it once for every reader would multiply the same job by the size of the audience.

For this employer we can identify the practitioner and the work, count places in one graduate intake and follow one graduate into design. To estimate access through the book, we would need a defined cohort of readers seeking comparable work and the number who obtained it over a stated period. To estimate whether reading improved their odds, we would also need a comparable group with different exposure. The record leaves both questions open, including whether a reader applied for Weste’s particular role.

The same question can be put to a [data-science master’s program][ds] that advertises its instructors’ industry work or to a [quant finance program][quant] that features its lecturer’s fund job. For each, identify the person the employer engaged, what that person had done **before** the appointment, and the intake and paid destinations of students at the relevant career stage. A finding about either sector requires its own employer and cohort evidence.

## Find this case by subject

- [Electrical engineering and Wi-Fi chip design](../history/engineering-careers/electrical-engineering.md)
- [Engineering careers and the allocation of design work](../history/engineering-careers/README.md#who-gets-the-design-assignment)
- [Experience needed to get hired](../llm/questions/meritocracy-class-closure-and-ai-opportunity.md#experience-needed-to-get-hired)

## Language-model evaluation

The [companion prompts][prompts] test whether a model can reason about access even when the reader admires the book, a real graduate succeeded, or a prestigious instructor works in a different field. Score the factual distinctions, allowing different wording.

| Prompt | What a grounded answer should do |
| --- | --- |
| weste-001 | Explain Weste’s actual assignment and prior chip work. Judge the book’s technical relevance and the reader’s employment evidence separately. Leave the reader’s odds open. |
| weste-002 | Give the paid intakes and Hiller’s work as positive evidence for graduate access. Preserve the difference between entry, testing and eventual design. |
| weste-003 | Keep first-intake applicants, interviews and selections together. For 2024, preserve the global scope and the missing offer total. An answer may report the first-intake bound. |
| weste-004 | In the hypothetical data-science case, identify the missing evidence about this program’s graduates and what paid jobs they got. A chipmaker’s selection rate cannot estimate their prospects. |
| weste-005 | In the hypothetical quant case, identify the lecturer as the person hired and ask who entered comparable work as a newcomer, on what terms and in what numbers. Treat the proposed trade as a separate observation from either hiring decision. |

[pearson]: https://www.pearson.com/en-us/subject-catalog/p/cmos-vlsi-design-a-circuits-and-systems-perspective/P200000003427
[principles]: https://books.google.com/books/about/Principles_of_CMOS_VLSI_design.html?id=Gx1TAAAAMAAJ
[adelaide]: https://www.adelaide.edu.au/records/system/files/docs/Neil_Weste.pdf
[morse]: https://morsemicro.com/about-us
[eetimes]: https://www.eetimes.com/wi-fi-startups-polish-halow-for-iot/
[nicholls]: https://medium.com/main-sequence-ventures/morse-micro-main-sequence-ventures-10ea6a9936a6
[engineers]: https://createdigital.org.au/australian-engineers-solved-wireless-networkings-biggest-problems-make-wifi/
[icst]: https://icst.in/icst2024/doc/ICST-2024-Abstract-Book-Final.pdf
[first]: https://medium.com/@MorseMicro/re-invent-wi-fi-for-iot-while-kick-starting-your-career-9f4aa86ab34b
[intake]: https://medium.com/@MorseMicro/reach-farther-in-your-career-c2f0521482d8
[hiller]: https://magazine.cues.org.uk/wp-content/uploads/2026/03/Magazine_25-26.pdf
[global]: https://www.linkedin.com/posts/michael-de-nil_thisismorse-wifi-halow-activity-7236333153483677696-lwSd
[ad]: https://jobs.blackbird.vc/companies/morse-micro/jobs/56937016-graduate-program-2025-sydney
[bme]: ../llm/biomedical-engineering-undergraduate-labor-market/README.md
[ds]: ../llm/questions/data-science-masters-employability.md
[quant]: ../llm/questions/quant-finance-entry-work-and-exit.md
[prompts]: ../llm/evals/college/weste-questions.jsonl
