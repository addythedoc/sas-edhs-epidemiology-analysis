/* 04_logistic_regression.sas
   Task: Survey-weighted logistic regression
   – Unadjusted models for each predictor
   – Multivariable adjusted model
*/

libname C "C:\Users\neplu\Downloads\ETH";

/* Unadjusted regression: Mother's age */
proc surveylogistic data = data1;
    cluster v021;
    strata  v023;
    weight  sweight;
    domain  elgpop;

    class age2 (ref = "0") / param = ref;
    model bfi (event = "1") = age2;
run;

/* Unadjusted regression: Marital status */
proc surveylogistic data = data1;
    cluster v021;
    strata  v023;
    weight  sweight;
    domain  elgpop;

    class marital2 (ref = "0") / param = ref;
    model bfi (event = "1") = marital2;
run;

/* Unadjusted regression: Education */
proc surveylogistic data = data1;
    cluster v021;
    strata  v023;
    weight  sweight;
    domain  elgpop;

    class edu2 (ref = "0") / param = ref;
    model bfi (event = "1") = edu2;
run;

/* Unadjusted regression: Parity */
proc surveylogistic data = data1;
    cluster v021;
    strata  v023;
    weight  sweight;
    domain  elgpop;

    class pa2 (ref = "0") / param = ref;
    model bfi (event = "1") = pa2;
run;

/* Unadjusted regression: Respondent currently working */
proc surveylogistic data = data1;
    cluster v021;
    strata  v023;
    weight  sweight;
    domain  elgpop;

    class work2 (ref = "0") / param = ref;
    model bfi (event = "1") = work2;
run;

/* Unadjusted regression: Wealth index */
proc surveylogistic data = data1;
    cluster v021;
    strata  v023;
    weight  sweight;
    domain  elgpop;

    class wealth2 (ref = "0") / param = ref;
    model bfi (event = "1") = wealth2;
run;

/* Unadjusted regression: Type of residence */
proc surveylogistic data = data1;
    cluster v021;
    strata  v023;
    weight  sweight;
    domain  elgpop;

    class residence2 (ref = "0") / param = ref;
    model bfi (event = "1") = residence2;
run;

/* Unadjusted regression: ANC visits */
proc surveylogistic data = data1;
    cluster v021;
    strata  v023;
    weight  sweight;
    domain  elgpop;

    class anc2 (ref = "0") / param = ref;
    model bfi (event = "1") = anc2;
run;

/* Unadjusted regression: Place of delivery */
proc surveylogistic data = data1;
    cluster v021;
    strata  v023;
    weight  sweight;
    domain  elgpop;

    class plc2 (ref = "0") / param = ref;
    model bfi (event = "1") = plc2;
run;

/* Unadjusted regression: C-section */
proc surveylogistic data = data1;
    cluster v021;
    strata  v023;
    weight  sweight;
    domain  elgpop;

    class cs2 (ref = "0") / param = ref;
    model bfi (event = "1") = cs2;
run;

/* Unadjusted regression: Skilled provider */
proc surveylogistic data = data1;
    cluster v021;
    strata  v023;
    weight  sweight;
    domain  elgpop;

    class skilled2 (ref = "0") / param = ref;
    model bfi (event = "1") = skilled2;
run;

/* Unadjusted regression: Sex of child */
proc surveylogistic data = data1;
    cluster v021;
    strata  v023;
    weight  sweight;
    domain  elgpop;

    class sex2 (ref = "0") / param = ref;
    model bfi (event = "1") = sex2;
run;

/* Unadjusted regression: Nutritional counseling */
proc surveylogistic data = data1;
    cluster v021;
    strata  v023;
    weight  sweight;
    domain  elgpop;

    class nc2 (ref = "0") / param = ref;
    model bfi (event = "1") = nc2;
run;

/* Multivariable adjusted regression */
proc surveylogistic data = data1;
    cluster v021;
    strata  v023;
    weight  sweight;
    domain  elgpop;

    class age2      (ref = "0")
          marital2  (ref = "0")
          edu2      (ref = "0")
          pa2       (ref = "0")
          work2     (ref = "0")
          wealth2   (ref = "0")
          hlthin2   (ref = "0")
          residence2(ref = "0")
          anc2      (ref = "0")
          plc2      (ref = "0")
          cs2       (ref = "0")
          skilled2  (ref = "0")
          sex2      (ref = "0")
          nc2       (ref = "0")
          / param = ref;

    model bfi (event = "1") =
          age2
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
          nc2;
run;
