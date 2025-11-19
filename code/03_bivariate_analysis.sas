/* 03_bivariate_analysis.sas
   Task: Bivariate association with timely initiation of breastfeeding (bfi)
   – Rao-Scott chi-square tests
*/

libname C "C:\Users\neplu\Downloads\ETH";

/* Assumes data1 already created in 01_data_preparation.sas */
proc surveyfreq data = data1;
    cluster v021;
    strata  v023;
    weight  sweight;

    tables elgpop *
           (age2
            marital2
            edu2
            pa2
            work2
            wealth2
            hlthin2
            residence2
            anc2
            plc2
            cs2
            skilled2
            sex2
            nc2) * bfi
           / row chisq;
run;
