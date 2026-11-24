# Electrical engineering degrees by school

Select a year for the institutions reporting electrical and electronics engineering. The headline counts are first-major awards in the 50 states and DC. The annual CSVs give each reporting institution and both award levels. They also include the comparison codes.

| Award year | Bachelor’s first major | Master’s first major | Data |
| --- | ---: | ---: | --- |
| [2023–24](2024.md) | 14,446 | 8,330 | [School records and other fields](2024.csv) |
| [2022–23](2023.md) | 15,076 | 8,732 | [School records and other fields](2023.csv) |
| [2021–22](2022.md) | 15,863 | 6,766 | [School records and other fields](2022.csv) |
| [2020–21](2021.md) | 16,772 | 8,241 | [School records and other fields](2021.csv) |
| [2019–20](2020.md) | 17,314 | 9,316 | [School records and other fields](2020.csv) |
| [2018–19](2019.md) | 17,418 | 10,122 | [School records and other fields](2019.csv) |
| [2017–18](2018.md) | 16,723 | 11,248 | [School records and other fields](2018.csv) |
| [2016–17](2017.md) | 16,794 | 12,420 | [School records and other fields](2017.csv) |
| [2015–16](2016.md) | 15,560 | 13,425 | [School records and other fields](2016.csv) |
| [2014–15](2015.md) | 14,488 | 11,659 | [School records and other fields](2015.csv) |
| [2013–14](2014.md) | 13,793 | 9,693 | [School records and other fields](2014.csv) |
| [2012–13](2013.md) | 12,787 | 9,310 | [School records and other fields](2013.csv) |
| [2011–12](2012.md) | 12,113 | 9,621 | [School records and other fields](2012.csv) |
| [2010–11](2011.md) | 11,572 | 9,688 | [School records and other fields](2011.csv) |
| [2009–10](2010.md) | 11,455 | 9,047 | [School records and other fields](2010.csv) |

## How to reproduce the counts

1. Take the annual IPEDS completions file and the directory. Join on UNITID within the same year. Use `_rv.csv` whenever supplied. [Federal download page](https://nces.ed.gov/ipeds/datacenter/DataFiles.aspx?gotoReportId=7&surveyNumber=3&year=-1) · [CSV members and SHA-256](sources.csv)
2. For each reporting unit, keep award levels **5** (bachelor’s) and **7** (master’s), major numbers **1** (first) and **2** (second) and these three distinct codes. [IPEDS electrical engineering code](https://nces.ed.gov/ipeds/cipcode/cipdetail.aspx?cip=14.1001&y=56) · [NCSES comparison codes](https://ncses.nsf.gov/pubs/nsf26307/assets/technical-tables/tables/nsf26307-taba-005.pdf)
   - **14.1001** Electrical and Electronics Engineering, the main series.
   - **14.1099** Electrical, Electronics, and Communications Engineering, Other.
   - **14.0901** Computer Engineering, General.
3. The school-level roster includes the union of award records at either major rank and positive offerings at that level in `CyyyyDEP` from 2012–13 onward. `PBACHL` and `PMASTR` identify offerings. In the earlier years the awards file defines the roster.
4. Read `CTOTALT` and keep the `XCTOTALT` source flag for each major rank. Zero is a numeric source value. A blank means the row or numeric count is missing. Sum first-major awards by year, award level and CIP for the headline table. Continue to show second majors and other CIP codes individually. The federal UNITID can identify a reporting institution containing multiple campuses. [Summary with explicit zeros, missing rows and all-geography totals](summary.csv)

There are 14,738 institution-year-code-level records. The latest verified files cover awards conferred July 2023 to June 2024. On 24 November 2026, the 2025 completions, directory and offerings ZIPs returned HTTP 404. A school may report a combined electrical and computer engineering program under any applicable federal CIP. Read the reporting code and school’s curriculum before labeling it. Other 14.10 and 14.09 specialties fall outside the three published series.

The awards series counts completions. An individual might earn a bachelor’s and then a master’s or complete a second major. Career outcomes require linkable graduate and employer records. [Job openings and evidence of entry](../electrical-engineering-jobs.md)
