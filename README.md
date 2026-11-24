
# ESG Performance & Risk Intelligence

**An end-to-end business analytics project analysing ESG performance, sector-level risk patterns and company-level ESG indicators using Python, MySQL and Power BI.**

[![Python](https://img.shields.io/badge/Python-Analysis-blue)](https://www.python.org/)
[![MySQL](https://img.shields.io/badge/MySQL-Database-orange)](https://www.mysql.com/)
[![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)](https://powerbi.microsoft.com/)



## 1. Project Overview

Environmental, Social and Governance (ESG) factors are increasingly relevant to business strategy, corporate performance assessment and investment research.

This project examines ESG scores and financial indicators across **245 S&P 500 companies representing 11 sectors**. It uses data analytics techniques to identify sector-level differences, examine ESG pillar relationships, compare companies and develop a rule-based high-priority screening framework.

The project follows an end-to-end analytical workflow involving data preparation, exploratory analysis, SQL-based querying and interactive dashboard development.

Dataset snapshot: 3 March 2021.

## 2. Business Objectives

- Examine the distribution of ESG ratings across companies.
- Compare ESG performance across sectors.
- Analyse Environmental, Social and Governance pillar scores.
- Identify companies classified as high priority based on source ESG ratings.
- Explore relationships between ESG scores and selected financial indicators.
- Develop an interactive Power BI dashboard to communicate business insights.

## 3. Technology Stack

| Technology | Application |
|---|---|
| Python (Pandas, Matplotlib) | Data cleaning, exploratory analysis and visualisation |
| MySQL Workbench | Data storage, SQL queries and analytical summaries |
| Microsoft Power BI | Interactive dashboard development |
| GitHub | Version control and project documentation |

## 4. Dataset Overview

The analysis uses a historical dataset containing ESG ratings, ESG scores and selected financial indicators for 245 companies.

**Key dataset characteristics:**
- 245 company records
- 11 business sectors
- 20 retained analytical fields
- Historical snapshot dated 3 March 2021
- No missing values or duplicate rows in the cleaned working dataset

**Original data source:** [S&P 500 ESG Dataset – Scott Burstein](https://github.com/sburstein/sp500-esg-dataset)

The original dataset was cleaned and prepared for analysis. Unnecessary export-index fields and inconsistent 52-week high/low fields were excluded, and column names were standardised.

*Note: The original source repository does not specify a redistribution licence. The source data is therefore not included in this repository pending permission clarification.*

## 5. Analytical Methodology

### Phase 1 – Data Preparation and Python Analysis

- Imported and inspected the dataset using Pandas.
- Conducted missing-value and duplicate checks.
- Standardised column names and removed unsuitable fields.
- Analysed ESG rating distributions and company-level scores.
- Calculated sector averages and correlation coefficients.
- Identified companies for high-priority screening.

### Phase 2 – SQL Analysis

The cleaned dataset was imported into MySQL Workbench.

Seven analytical queries were developed to examine:

1. Overall dataset summary.
2. Company-level ESG risk rankings.
3. Sector-level ESG benchmarking.
4. ESG rating distribution.
5. High-priority company identification.
6. Sector-level ESG and financial indicator comparisons.
7. Sector-wise high-priority company counts and percentages.

### Phase 3 – Power BI Dashboard

A four-page interactive dashboard was developed:

| Dashboard page | Focus |
|---|---|
| Executive Overview | Overall ESG distribution, sector risk and key indicators |
| ESG Pillar Analysis | Environmental, Social and Governance comparisons |
| Peer Benchmarking | Company-level and sector-level comparisons |
| Risk Screening & Prioritisation | High-priority company identification and sector exposure |

Interactive filters allow users to explore sector and ESG rating differences.

## 6. Key Findings

### ESG Rating Distribution

| ESG Rating | Companies |
|---|---:|
| Negligible | 154 |
| Severe | 63 |
| Medium | 12 |
| Low | 10 |
| High | 6 |
| **Total** | **245** |

Companies classified as Severe or High were grouped into a high-priority screening category, representing **69 companies (28.2%)**.

### Sector-Level Findings

- Energy recorded the highest average total ESG score at 33.44.
- Utilities followed with an average of 32.73.
- Materials recorded an average of 27.83.
- Energy and Utilities also recorded comparatively high average Environmental scores.

### ESG Pillar Correlations

| Relationship | Correlation |
|---|---:|
| Total ESG and Environmental | 0.760 |
| Total ESG and Social | 0.743 |
| Total ESG and Governance | 0.499 |

Environmental and Social scores showed stronger positive correlations with total ESG scores than Governance scores.

These relationships may partly reflect the construction of the total score and should not be interpreted as causal effects.

### Financial Indicator Relationships

The strongest absolute correlation among the tested financial indicators was between total ESG score and price-to-sales ratio (-0.211). The other tested relationships were also weak.

The analysis does not establish a causal relationship between ESG scores and financial performance.

## 7. Power BI Dashboard Preview

### Executive Overview
![Executive Overview](screenshots/01_executive_overview.png)

### ESG Pillar Analysis
![ESG Pillar Analysis](screenshots/02_esg_pillar_analysis.png)

### Company & Sector Benchmarking
![Peer Benchmarking](screenshots/03_peer_benchmarking.png)

### ESG Risk Screening
![Risk Screening](screenshots/04_risk_screening.png)

## 8. Repository Structure

```text
esg-performance-risk-analytics/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── notebooks/
│   └── esg_analysis.ipynb
│
├── sql/
│   ├── esg_analysis.sql
│   └── README.md
│
├── powerbi/
│   ├── ESG_Performance_Risk_Intelligence.pbix
│   └── README.md
│
├── screenshots/
│   ├── 01_executive_overview.png
│   ├── 02_esg_pillar_analysis.png
│   ├── 03_peer_benchmarking.png
│   └── 04_risk_screening.png
│
├── report/
│   └── ESG_Performance_Risk_Intelligence_Report.docx
│
└── README.md

9. Limitations

The dataset represents a historical snapshot dated 3 March 2021 and does not reflect current ESG performance.

The precise source scoring methodology and score direction have not been independently verified.

The high-priority classification is a project-defined screening rule, not a predictive model or regulatory classification.

Correlation results do not establish causation.

Sector sample sizes vary.

Financial metrics may be affected by differences in scale, reporting periods and sector composition.

10. Future Scope

Incorporate more recent ESG datasets.

Extend the analysis to multiple years to study changes in ESG performance.

Explore predictive modelling after establishing a consistent and sufficiently large dataset.

Introduce sector-adjusted comparisons and additional financial controls.

Expand the dashboard with further company-level risk indicators.

11. Project Deliverables

Python exploratory analysis notebook

MySQL analytical query script

Four-page interactive Power BI dashboard

Business analysis report

Dashboard screenshots and project documentation

Project Category: Business Analytics | ESG Analytics | Data Visualisation

Tools: Python | MySQL | Power BI | GitHub
