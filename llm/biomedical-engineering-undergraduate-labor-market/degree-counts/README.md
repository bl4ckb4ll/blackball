# Annual BME bachelor’s degrees by school

Select an academic year for counts at each institution. For one school across years, open [school histories](school-histories.md). Download [school-year counts](school-year.csv) for analysis.

| Academic year | First-major awards, 50 states + DC | First-major awards, including territories | Institutions in roster | Positive | Zero | Missing first-major count |
|---|---:|---:|---:|---:|---:|---:|
| [2023–24](2024.md) | 8,507 | 8,558 | 197 | 184 | 13 | 0 |
| [2022–23](2023.md) | 8,675 | 8,747 | 195 | 184 | 11 | 0 |
| [2021–22](2022.md) | 8,432 | 8,496 | 192 | 178 | 14 | 0 |
| [2020–21](2021.md) | 8,380 | 8,419 | 184 | 174 | 10 | 0 |
| [2019–20](2020.md) | 8,111 | 8,136 | 176 | 165 | 11 | 0 |
| [2018–19](2019.md) | 7,801 | 7,815 | 171 | 161 | 10 | 0 |
| [2017–18](2018.md) | 7,416 | 7,416 | 161 | 150 | 11 | 0 |
| [2016–17](2017.md) | 6,928 | 6,928 | 154 | 140 | 14 | 0 |
| [2015–16](2016.md) | 6,521 | 6,521 | 151 | 136 | 15 | 0 |
| [2014–15](2015.md) | 5,823 | 5,823 | 144 | 128 | 16 | 0 |
| [2013–14](2014.md) | 5,430 | 5,430 | 134 | 119 | 15 | 0 |
| [2012–13](2013.md) | 4,838 | 4,838 | 126 | 115 | 11 | 0 |
| [2011–12](2012.md) | 4,464 | 4,464 | 113 | 106 | 7 | 0 |
| [2010–11](2011.md) | 4,023 | 4,023 | 110 | 103 | 7 | 0 |
| [2009–10](2010.md) | 3,775 | 3,775 | 104 | 98 | 6 | 0 |

## Counting rules

IPEDS counts awards conferred between July 1 and June 30. Select CIP 14.0501 (Bioengineering and Biomedical Engineering), bachelor’s award level 5, and first major 1. Second major 2 is displayed separately. These are program completions. The survey supplies no person-level identifier for deduplicating recipients across institutions or awards and no measure of who sought work. A narrower concentration reported under another CIP falls outside this series.

Each annual roster includes every UNITID with a matching first- or second-major record plus, from 2012–13 onward, every UNITID with a positive PBACHL in the annual program-offerings file. Earlier rosters use the awards file alone and may miss a program with no award record. A numeric zero requires a zero-valued source row. Missing counts stay blank. Institutions are identified by the federal reporting unit, which may cover multiple physical campuses. Historical labels come from the corresponding annual directory.

Use the revised CSV member when NCES supplies one in the archive. The [source ledger](sources.csv) identifies each selected member and its SHA-256. The machine-readable counts retain the original total-value status flags. The 2024–25 release is listed by NCES, but its award and directory downloads returned HTTP 404 during this extraction. The series ends with verified 2023–24 records.

[IPEDS completions files](https://nces.ed.gov/ipeds/datacenter/DataFiles.aspx?gotoReportId=7&surveyNumber=3&year=-1) · [NCES program definition](https://nces.ed.gov/ipeds/cipcode/CIPDetail.aspx?cipid=90505&y=56)
