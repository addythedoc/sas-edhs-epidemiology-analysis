
**Association Between Nutritional Counseling During Antenatal Care and Timely Initiation of Breastfeeding**

A Survey-Weighted Epidemiological Analysis Using SAS

🔗 https://github.com/addythedoc/public-health-data-analytics-portfolio/tree/main

Author: Aditya Kumar, MPH (Epidemiology)
Tools: SAS 9.4 / SAS Studio
Dataset: 2016 Ethiopia Demographic and Health Survey (EDHS) – Birth Recode
Domain: Maternal & Child Health | Epidemiology

**Project Overview**

This project evaluates whether nutritional counseling during antenatal care (ANC) is associated with timely initiation of breastfeeding (TIBF)—defined as breastfeeding within the first hour after birth—among Ethiopian women.

Using nationally representative data from the 2016 EDHS, this repository demonstrates a complete epidemiologic workflow in SAS, including survey design handling, variable construction, statistical testing, and regression modeling suitable for manuscript-ready reporting.

**Research Objective**

To determine whether women who received nutritional counseling during ANC had higher odds of initiating breastfeeding within one hour of birth compared to women who did not, after adjusting for demographic, socioeconomic, and delivery-related factors.

**Data**

Source: 2016 Ethiopia Demographic and Health Survey (EDHS)

Population: Women with recent live births

Sample size: 4,074 women

Design: Stratified, clustered, survey-weighted sample

Raw DHS data are not included due to data-use restrictions

**Key Variables**

**Outcome Variable**

bfi — Timely initiation of breastfeeding

1 = Breastfed within 1 hour

0 = Later than 1 hour

**Primary Exposure**

nc2 — Nutritional counseling during antenatal care

1 = Received

0 = Not received

**Covariates**

Maternal age

Marital status

Education level

Parity

Employment status

Wealth index

Health insurance status

Urban/rural residence

Number of ANC visits

Place of delivery

Cesarean section delivery

Skilled birth attendance

Sex of the child

All variables were constructed according to DHS Standard Recode guidelines.

**Statistical Methods**

**Descriptive Analysis**

Survey-weighted distributions using PROC SURVEYFREQ.

**Bivariate Analysis**

Rao–Scott chi-square tests for unadjusted associations.

**Multivariable Analysis**

Survey-weighted logistic regression using PROC SURVEYLOGISTIC with DHS sampling design (weights, strata, and clusters). Outputs include crude odds ratios, adjusted odds ratios, and 95% confidence intervals.

**Code Structure**

The analysis workflow is organized as follows:

01_data_preparation.sas – Data import, cleaning, and variable construction

02_descriptive_analysis.sas – Survey-weighted descriptive statistics

03_bivariate_analysis.sas – Rao–Scott chi-square tests

04_logistic_regression.sas – Unadjusted and adjusted survey logistic models

**How to Reproduce**

Request DHS data (ETKR71FL) from the DHS Program (https://dhsprogram.com
).

Set the library path in SAS to your local DHS directory.

Run the SAS scripts sequentially from data preparation to regression modeling.

**Manuscript**

The full research paper—including methods, weighted results, regression tables, and public health interpretation—is available in the docs folder as Original Research Manuscript.pdf.

**Key Findings**

Nutritional counseling during ANC was not significantly associated with timely initiation of breastfeeding.

Higher parity was associated with higher odds of timely initiation.

Cesarean section delivery was strongly associated with delayed breastfeeding initiation.

Older maternal age groups showed reduced likelihood of early initiation.

**Public Health Relevance**

Findings highlight delivery-related and structural barriers to early breastfeeding initiation and emphasize the importance of post-delivery support, skilled birth attendance, and targeted interventions following cesarean deliveries.

**Contact**

Aditya Kumar, MPH (Epidemiology)
Email: neplusultraa@gmail.com

**Notes**

Raw DHS data are not shared due to licensing restrictions.

All SAS code is modular, reproducible, and well-documented.

This project demonstrates applied skills in SAS programming, survey methodology, and epidemiologic analysis.
