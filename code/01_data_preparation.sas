/* 01_data_preparation.sas
   Project: Timely initiation of breastfeeding – EDHS 2016 (Ethiopia)
   Task: Create analysis dataset, recode variables, define eligibility
*/

libname C "C:\Users\neplu\Downloads\ETH";

data data1;
    set C.etkr71fl;

    /* Survey weight */
    sweight = v005/1000000;

    /* Mother's age: 3 groups */
    if v013 in (1, 2) then age2 = 0;              *15–24;
    else if v013 in (3, 4) then age2 = 1;         *25–34;
    else if v013 in (5, 6, 7) then age2 = 2;      *35–49;

    /* Marital status */
    if v501 = 0 then marital2 = 0;                /* Never married */
    else if v501 in (1, 2) then marital2 = 1;     /* Married/living together */
    else if v501 in (3, 4, 5) then marital2 = 2;  /* Divorced/separated/widowed */

    /* Education */
    if v106 = 0 then edu2 = 0;                    /* No education */
    else if v106 = 1 then edu2 = 1;               /* Primary */
    else if v106 in (2, 3) then edu2 = 2;         /* Secondary or above */

    /* Parity */
    if v201 = 1 then pa2 = 0;                     /* One child */
    else if v201 in (2:4) then pa2 = 1;           /* 2–4 children */
    else if v201 in (5:14) then pa2 = 2;          /* More than 4 children */

    /* Respondent currently working */
    if v714 = 0 then work2 = 0;                   /* Not working */
    else if v714 = 1 then work2 = 1;              /* Working */

    /* Wealth Index Combined */
    if v190 in (1, 2) then wealth2 = 0;           /* Poor */
    else if v190 = 3 then wealth2 = 1;            /* Middle */
    else if v190 in (4, 5) then wealth2 = 2;      /* Rich */

    /* Health insurance */
    if v481 = 0 then hlthin2 = 0;                 *No;
    else if v481 = 1 then hlthin2 = 1;            *Yes;

    /* Type of residence */
    if v025 = 2 then residence2 = 0;              /* Rural */
    else if v025 = 1 then residence2 = 1;         /* Urban */

    /* Number of antenatal visits during pregnancy */
    if m14 = 0 then anc2 = 0;                     *None;
    else if m14 in (1, 2, 3) then anc2 = 1;       /* 1–3 visits */
    else if m14 in (4:20) then anc2 = 2;          /* ≥4 visits (recommended ANC) */

    /* Place of delivery */
    if m15 in (21:26) then plc2 = 0;              *Public facility;
    else if m15 in (31:36) then plc2 = 1;         *Private facility;
    else if m15 in (11, 12) then plc2 = 2;        *Home;
    else if m15 in (41, 46, 96) then plc2 = 3;    *Other;

    /* Delivery by caesarean section */
    if m17 = 0 then cs2 = 0;                      /* Not by C-section */
    else if m17 = 1 then cs2 = 1;                 /* By C-section */

    /* Child's age in months */
    cage2 = b19;

    /* Assistance during delivery – detailed coding (delivery2) */
    if cage2 < 24 then do;
        if not missing(m3a) then delivery2 = 0;

        if m3n = 1 then delivery2 = 7;            *No one;
        if m3i = 1 or m3j = 1 or m3k = 1 or m3l = 1 or m3m = 1
            then delivery2 = 6;                   *Relative/other;
        if m3h = 1 then delivery2 = 5;            *Other health worker;
        if m3g = 1 then delivery2 = 4;            *Traditional birth attendant;
        if m3c = 1 or m3d = 1 or m3e = 1 or m3f = 1
            then delivery2 = 3;                   *Other professional;
        if m3b = 1 then delivery2 = 2;            *Nurse/midwife;
        if m3a = 1 then delivery2 = 1;            *Doctor;
        if m3a in (8, 9) then delivery2 = 9;
    end;

    /* Skilled provider during delivery */
    if cage2 < 24 then do;
        skilled = delivery2;
        if delivery2 in (1, 2) then skilled2 = 0; *Skilled provider;
        else if delivery2 in (3, 4, 5, 6) then skilled2 = 1; *Unskilled provider;
        else if delivery2 = 7 then skilled2 = 2; *No one;
    end;

    /* Sex of the child */
    if b4 = 2 then sex2 = 0;                      /* Female */
    else if b4 = 1 then sex2 = 1;                 /* Male */

    /* Nutritional counseling during antenatal care */
    if anc2 = 0 then nc2 = 0;                     *No ANC and no nutritional counseling;
    else if anc2 > 0 then do;
        if s413d = 0 then nc2 = 0;                /* Did not receive nutritional counseling */
        else if s413d = 1 then nc2 = 1;           /* Received nutritional counseling */
    end;

    /* Start breastfeeding within 1 hr (outcome) */
    if midx = 1 and cage2 < 24 then do;
        bfi = 0;                                  *No;
        if (m4 not in (94, 99)) and
           (m34 ge 0 and m34 le 100) then bfi = 1; *Yes;
    end;

    /* Eligible population: complete cases for all variables */
    if bfi      = . or
       nc2      = . or
       age2     = . or
       marital2 = . or
       edu2     = . or
       pa2      = . or
       work2    = . or
       wealth2  = . or
       hlthin2  = . or
       residence2 = . or
       anc2     = . or
       plc2     = . or
       cs2      = . or
       skilled2 = . or
       sex2     = . then elgpop = .;
    else elgpop = 1;

run;
