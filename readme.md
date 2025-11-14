# README --- Arabic Revised Behavior Scale-Revised (RBS-R)

## Confirmatory Factor Analysis & Reliability (R)

**Repository author:** *Ghaith Al-Gburi*

**Study DOI / citation:** *To be added upon publication*

This repository contains the R Markdown file used to conduct the
psychometric validation of the **Arabic version of the Repetitive
Behavior Scale--Revised (RBS-R)**. The analysis includes CFA model
testing, reliability estimation, and comparison of theoretical
structures commonly used in RBS-R validation work.

------------------------------------------------------------------------

## Quick View

-   **Script:** `RBS_validation.Rmd`\
-   **Purpose:** Validate the Arabic RBS-R using CFA and reliability
    statistics\
-   **Data:** `RBS_data.csv` (not included here for privacy)\
-   **Outputs:** Model summaries, fit indices, reliability values, and
    modification-index inspection\
-   **R version recommended:** ≥ 4.0

------------------------------------------------------------------------

## Purpose

This repository provides the analytical workflow used for the validation
of the **Arabic RBS-R**, which assesses restricted and repetitive
behaviors in individuals with ASD.\
The script runs several competing CFA models and evaluates their fit,
consistency, and internal structure.

The analysis includes:

-   CFA with multiple theoretically based factor models\
-   Reliability analysis (Cronbach's α and composite reliability)\
-   Item statistics\
-   Modification-index--guided model refinement\
-   Comparison of models via fit indices

------------------------------------------------------------------------

## Files in this Repository

-   **`RBS_validation.Rmd`** --- Main analysis script (R Markdown)\
-   **`README.md`** --- This file\
-   **`slides/`** --- Empty folder placeholder (for future presentation
    materials)

*Note:* The dataset (`RBS_data.csv`) is not included.

------------------------------------------------------------------------

## Required R Packages

Make sure the following packages are installed:

``` r
install.packages(c("lavaan", "semTools", "psych", "dplyr"))
```

### Packages used in the script

-   **lavaan** --- Structural equation modelling\
-   **semTools** --- Reliability & SEM utilities\
-   **psych** --- Item-level statistics\
-   **dplyr** --- Data wrangling

------------------------------------------------------------------------

## Expected Data Format

Your dataset must include the RBS-R items in **numeric format**, with
the following variable names:

### Stereotyped Behavior items

    sb1, sb2, sb3, sb4, sb5, sb6

### Self-injurious Behavior items

    sib1, sib2, sib3, sib4, sib5, sib6, sib7, sib8

### Compulsive Behavior items

    cb1, cb2, cb3, cb4

### Ritualistic/Sameness Behavior items

    rsmb1, rsmb2, rsmb3, rsmb4, rsmb5, rsmb6

### Restricted Interests items

    is1, is2, is3, is4

### Total/Subscale score columns (if present)

    rsmb, is, rsmbm, ism

The script will fail if required item columns are missing.

------------------------------------------------------------------------

## How to Run the Script

### Option 1 --- In RStudio

Open the file and knit it:

    RBS_validation.Rmd → Knit → HTML

### Option 2 --- From R console

``` r
rmarkdown::render("RBS_validation.Rmd")
```

------------------------------------------------------------------------

## Outputs Generated

The script produces:

### **1. CFA results**

-   Fit indices (CFI, TLI, RMSEA, SRMR)
-   Standardized loadings
-   Model comparison tables

### **2. Reliability indices**

-   Cronbach's α\
-   Composite reliability (via `compRelSEM`)

### **3. Item statistics**

-   Item-total correlations\
-   Means, SDs, response patterns

### **4. Modification index tables**

Useful for identifying misfit sources or cross-loadings.

------------------------------------------------------------------------

## Reproducibility

To reproduce the analysis exactly:

1.  Use R version ≥ 4.0\
2.  Ensure all required packages are installed\
3.  Provide a dataset with correct variable names\
4.  Render the `.Rmd` file

------------------------------------------------------------------------

## License

Released under the **MIT License**.\
You are free to reuse and adapt the code with attribution.

------------------------------------------------------------------------

## Citation

**To be added once the article is published.**

------------------------------------------------------------------------

## Contact

-   **Author:** Ghaith Al-Gburi\
-   **Email:** ghaith.ali.khaleel@gmail.com\
-   **GitHub:** https://github.com/GhaithAl-Gburi\
-   **ORCID:** 0000-0001-7427-8310
