# Association Between Nutritional Counseling During Antenatal Care and Timely Initiation of Breastfeeding  
### A Survey-Weighted Epidemiological Analysis (SAS)

🔗 **Part of the Public Health & Healthcare Analytics Portfolio**  
https://github.com/addythedoc/public-health-data-analytics-portfolio/tree/main


---

## Project Overview

This project investigates whether **nutritional counseling during antenatal care (ANC)** is associated with **timely initiation of breastfeeding (within 1 hour of birth)** among women in Ethiopia, using nationally representative survey data.

The analysis applies **complex survey methods in SAS** and follows a complete epidemiologic workflow suitable for peer-reviewed research and public health reporting.

---

## Data Source

- **Dataset:** 2016 Ethiopia Demographic and Health Survey (EDHS)
- **File:** Birth Recode (ETKR71FL)
- **Design:** Stratified, multistage cluster sampling
- **Population:** Women with recent live births

⚠️ Raw DHS data are not included due to data-use restrictions.  
Data can be requested from: https://dhsprogram.com

---

## Research Objective

To assess whether receipt of nutritional counseling during ANC increases the odds of initiating breastfeeding within one hour of birth, after adjusting for maternal, socioeconomic, and delivery-related factors.

---

## Tools & Software

- **SAS 9.4 / SAS Studio**
- Survey procedures:
  - `PROC SURVEYFREQ`
  - `PROC SURVEYLOGISTIC`

---

## Key Variables

### Outcome
- **bfi** — Timely initiation of breastfeeding  
  - `1` = Within 1 hour  
  - `0` = After 1 hour

### Primary Exposure
- **nc2** — Nutritional counseling during ANC  
  - `1` = Received  
  - `0` = Not received

### Covariates
- Maternal age
- Marital status
- Education
- Parity
- Employment
- Wealth index
- Health insurance
- Urban/rural residence
- Number of ANC visits
- Place of delivery
- Cesarean section
- Skilled birth attendance
- Child sex

All variables were derived using DHS standard recode guidelines.

---

## Statistical Methods

### Descriptive Analysis
- Survey-weighted frequencies using `PROC SURVEYFREQ`

### Bivariate Analysis
- Rao–Scott chi-square tests

### Multivariable Analysis
- Survey-weighted logistic regression using `PROC SURVEYLOGISTIC`
- **Weights:** `v005 / 1,000,000`
- **Strata:** `v023`
- **Clusters:** `v021`
- Adjusted odds ratios (aOR) with 95% confidence intervals

---

## Repository Structure

```plaintext
breastfeeding-nutritional-counseling-ethiopia/
├── code/
│   ├── 01_data_preparation.sas
│   ├── 02_descriptive_analysis.sas
│   ├── 03_bivariate_analysis.sas
│   └── 04_logistic_regression.sas
├── docs/
│   └── Original Research Manuscript.pdf
├── Output Tables SAS.docx
├── README.md
└── LICENSE


**How to Reproduce**

Request DHS data (ETKR71FL) from the DHS Program

Set the library path in SAS:

libname C "C:\Your\Local\Path\To\EDHS";


**Run scripts in order:**

01_data_preparation.sas

02_descriptive_analysis.sas

03_bivariate_analysis.sas

04_logistic_regression.sas

**Manuscript**

The full research paper, including methods, weighted results, regression tables, and public health interpretation, is available in:

docs/Original Research Manuscript.pdf

**Public Health Relevance**

The findings highlight delivery-related and structural barriers to early breastfeeding initiation, emphasizing the importance of post-delivery support and skilled birth attendance, particularly following cesarean sections.

**Contact**

Aditya Kumar, MPH (Epidemiology)
📧 Email: neplusultraa@gmail.com

**Notes**

Raw DHS data are not shared due to licensing restrictions

Code is modular, reproducible, and well-documented

Demonstrates applied skills in SAS programming, survey methodology, and epidemiologic analysis
