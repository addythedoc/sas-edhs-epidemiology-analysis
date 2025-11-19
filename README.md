**Association Between Nutritional Counseling During Antenatal Care and Timely Initiation of Breastfeeding — A SAS Epidemiological Analysis**

📍 Dataset: 2016 Ethiopia Demographic and Health Survey (EDHS) – Birth Recode

📁 Methods: Survey-weighted descriptive, bivariate, and multivariable logistic regression

🧑‍💻 Tools: SAS 9.4 / SAS Studio

👤 Author: Aditya Kumar, MPH Epidemiology


**📌 Project Overview**

This project evaluates whether nutritional counseling during antenatal care (ANC) is associated with timely initiation of breastfeeding (TIBF)—defined as breastfeeding within the first hour after birth—among Ethiopian women using the 2016 EDHS dataset.

This repository demonstrates a full epidemiologic data analysis workflow in SAS, including:

Importing raw DHS data

Recoding variables and constructing analytical datasets

Applying complex survey design (weights, strata, clusters)

Producing weighted descriptive statistics

Conducting Rao–Scott chi-square tests

Building survey-weighted logistic regression models (crude & adjusted)

Preparing results for manuscript reporting

The final manuscript summarizing the study is included in the docs/ folder

🎯 **Research Objective**

To determine whether women who receive nutritional counseling during ANC have higher odds of initiating breastfeeding within 1 hour of birth compared to those who do not—after adjusting for demographic, socioeconomic, and delivery-related factors.

**Key Variables**
**Outcome Variable**

bfi — Timely initiation of breastfeeding

1 = Breastfed within 1 hour

0 = Later than 1 hour

**Primary Exposure**

nc2 — Nutritional counseling during ANC

1 = Received

0 = Did not receive

**Covariates Included in Analysis**

Maternal age (age2)

Marital status (marital2)

Education level (edu2)

Parity (pa2)

Employment status (work2)

Wealth index (wealth2)

Health insurance status (hlthin2)

Urban/rural residence (residence2)

Number of ANC visits (anc2)

Place of delivery (plc2)

Cesarean section (cs2)

Skilled birth attendant (skilled2)

Sex of the child (sex2)

All variables are derived according to DHS Standard Recode guidelines.

📈 **Statistical Methods**

**1. Descriptive Statistics**

Weighted distributions using PROC SURVEYFREQ.

**2. Bivariate Analysis**

Rao–Scott chi-square tests to examine unadjusted associations between predictors and TIBF.

**3. Multivariable Logistic Regression**

Survey-weighted models using PROC SURVEYLOGISTIC:

Weights: v005 / 1,000,000

Strata: v023

Clusters: v021

Outcome: bfi (event = "1")

Exposure: nc2

Adjusted for: all covariates listed above

Outputs include crude odds ratios (OR), adjusted OR (aOR), and 95% confidence intervals.

🔁 **How to Reproduce**
**1. Request DHS Dataset**

Download **ETKR71FL** from the DHS Program after requesting access:

🔗 https://dhsprogram.com

(Raw DHS data cannot be included in this repo.)

2. **Store the dataset locally**

Example path used in scripts:

C:\Users\neplu\Downloads\ETH\

3. **Update and run the SAS scripts**

Set library path:

libname C "C:\Users\neplu\Downloads\ETH";


**Run scripts in order**:

1️⃣ 01_data_preparation.sas
2️⃣ 02_descriptive_analysis.sas
3️⃣ 03_bivariate_analysis.sas
4️⃣ 04_logistic_regression.sas


📄 **Manuscript**

The final research paper is available in:

docs/Original Research Manuscript.pdf


It contains:

Methods

Fully weighted results

Regression tables

Interpretation of findings

Public health implications

📬 **Contact**

Aditya Kumar, MPH
Email: ak781322@ohio.edu

⭐ **Notes**

Raw DHS data are not included due to licensing restrictions.

All SAS code is modular, documented, and reproducible.

This project demonstrates skills in SAS programming, epidemiological methods, and applied statistical analysis.
