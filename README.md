Association Between Nutritional Counseling During Antenatal Care and Timely Initiation of Breastfeeding — A SAS Epidemiological Analysis
📍 Dataset: 2016 Ethiopia Demographic and Health Survey (EDHS) – Birth Recode
📁 Methods: Survey-weighted descriptive, bivariate, and multivariable logistic regression
🧑‍💻 Tools: SAS 9.4 / SAS Studio
👤 Author: Aditya Kumar, MPH Epidemiology

📌 Overview

This project evaluates whether nutritional counseling during antenatal care (ANC) is associated with the timely initiation of breastfeeding (TIBF)—defined as breastfeeding within 1 hour after birth—using nationally representative data from the 2016 Ethiopia Demographic and Health Survey (EDHS).

The analysis follows a complete epidemiologic workflow in SAS, including:

Importing DHS data

Recoding categorical variables

Constructing exposure, outcome, and covariates

Applying DHS survey weights (v021 cluster, v023 strata, v005 weight)

Weighted descriptive statistics

Rao–Scott chi-square tests

Multivariable logistic regression (PROC SURVEYLOGISTIC)

The repository also includes a full research manuscript and clean SAS code broken into modular scripts.

🛠️ Repository Structure
sas-edhs-breastfeeding-analysis/
│
├── code/
│   ├── 01_data_preparation.sas
│   ├── 02_descriptive_analysis.sas
│   ├── 03_bivariate_analysis.sas
│   └── 04_logistic_regression.sas
│
├── data/
│   ├── raw/
│   │   └── README.txt         # Instructions for obtaining DHS data
│   └── processed/             # Optional (cleaned or derived datasets)
│
├── results/
│   ├── tables/                # Optional: exported tables (regression, descriptive)
│   └── figures/               # Optional: plots/graphs if produced
│
├── docs/
│   └── Original Research Manuscript.pdf
│
└── README.md

🎯 Research Objective

To determine whether women who received nutritional counseling during ANC have higher odds of initiating breastfeeding within one hour of birth compared to those who did not—after adjusting for demographic, socioeconomic, and obstetric factors.

📊 Variables Used in the Analysis
Outcome

Timely initiation of breastfeeding (bfi)

1 = Breastfed within 1 hour

0 = Not within 1 hour

Primary Exposure

Nutritional counseling during ANC (nc2)

1 = Received

0 = Did not receive

Covariates

Maternal age (age2)

Parity (pa2)

Education (edu2)

Marital status (marital2)

Wealth index (wealth2)

Employment (work2)

Health insurance (hlthin2)

Residence (residence2)

ANC visits (anc2)

Place of delivery (plc2)

Cesarean section (cs2)

Skilled provider at delivery (skilled2)

Sex of the child (sex2)

All variables follow DHS Standard Recode definitions.

📈 Statistical Approach
1. Descriptive Analysis

Using PROC SURVEYFREQ for weighted distributions.

2. Bivariate Analysis

Rao–Scott chi-square tests to evaluate unadjusted associations between the exposure/covariates and TIBF.

3. Multivariable Logistic Regression

PROC SURVEYLOGISTIC with:

Weights: v005/1,000,000

Clusters: v021

Strata: v023

Outcome: bfi (event="1")

Exposure: nc2

Model adjusts for ~13 covariates

Outputs include:

Crude odds ratios (OR)

Adjusted odds ratios (aOR)

95% confidence intervals

📁 How to Reproduce This Analysis
1. Request the DHS dataset

The dataset ETKR71FL (EDHS 2016 Birth Recode) must be downloaded from:

https://dhsprogram.com

DHS data cannot be uploaded to this repository due to licensing restrictions.

2. Place the dataset in a local folder

Example folder (matches code):

C:\Users\neplu\Downloads\ETH\

3. Update SAS library path (if needed)
libname C "C:\Users\neplu\Downloads\ETH";

4. Run the scripts in order

01_data_preparation.sas

02_descriptive_analysis.sas

03_bivariate_analysis.sas

04_logistic_regression.sas

📄 Manuscript

Full manuscript of this analysis:

docs/Original Research Manuscript.pdf


This document includes:

Abstract

Methods

Results

Adjusted odds ratios

Discussion

Public health implications

📬 Contact

Aditya Kumar
MPH, Epidemiology
Email: neplusultraa@gmail.com

⭐ Notes

No DHS raw data is included in this repository to comply with data-sharing policies.

All SAS scripts are written in a modular, reproducible format following epidemiology research standards.

This project reflects skills in SAS programming, epidemiological analysis, survey methods, and research reporting.
