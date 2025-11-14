# README — Translation and Validation of the Arabic Version of the Revised Restrictive Behaviours Scale Among Iraqi Children With Autism Spectrum Disorder: A Suggestion for Model Modification

**Repository author:** Ghaith Al-Gburi  

**Study DOI / citation:** *To be updated upon publication.*

---

## Quick view
Click below to view the complete analysis results and visualizations (once rendered):

[Open the full analysis report (HTML)](https://rawcdn.githack.com/GhaithAl-Gburi/RBS-R-Arabic-Validation/main/results.html)

---

## Purpose
This repository contains `RBS_validation.Rmd` — an R Markdown script used to perform confirmatory factor analysis (CFA) and psychometric validation of the **Arabic version of the Repetitive Behavior Scale–Revised (RBS-R)**.  
The script tests multiple CFA models (2-factor, 6-factor, and modified 2-factor structures), estimates reliability (Cronbach’s α and composite reliability), and examines inter-factor correlations.

> **Data privacy:** Participant-level identifiable data are **not included** in this repository.

---

## Files in this repo
- `RBS_validation.Rmd` — Main R Markdown analysis file.  
- `results.html` — Rendered HTML report of the full analysis workflow.  
- `RBS_data.csv` — the CSV file containing the data related to the study referenced above.
- `survey.docx` — the doc file containing the arabic and english version of the research survey.
- `item-item spearman correlation matrix.xlsx` — the item-item correlation matrix for the arabic RBS-R.
- `readme.md` — This file.  
- `LICENSE` — MIT License (reuse and citation conditions).

---

## Required R version & packages
- **R version:** ≥ 4.0 recommended  
- **Required packages:** `lavaan`, `semTools`, `psych`, `dplyr`

Install packages in R:

```r
install.packages(c("lavaan","semTools","psych","dplyr"))
```

---

## Expected data format (column names)

The script expects an R data frame (or CSV) with these columns:

| Subscale | Variables |
|-----------|------------|
| Stereotyped Behaviour | `sb1`–`sb6` |
| Self-injurious Behaviour | `sib1`–`sib8` |
| Compulsive Behaviour | `cb1`–`cb8` |
| Ritualistic Behaviour | `rit1`–`rit6` |
| Sameness Behaviour | `same1`–`same11` |
| Restricted Interests | `rb1`–`rb4` |

Optional derived columns:
- `rsmb`, `is`, `rsmbm`, `ism` — factor scores.

---

## How to run

### Option 1 — Knit in RStudio
Open `RBS_validation.Rmd` and click **Knit → HTML**.

### Option 2 — Run from the console
```r
rmarkdown::render("RBS_validation.Rmd")
```

### Option 3 — Command line
```bash
Rscript -e "rmarkdown::render('RBS_validation.Rmd')"
```

---

## Outputs produced by the script

- **Confirmatory Factor Analyses (CFA)** for multiple model structures using `lavaan` (`WLSMV` estimator).  
- **Reliability Analyses:** Spearman's α and composite reliability via `semTools::compRelSEM`.  
- **Item statistics:** Corrected item-total correlations and descriptive statistics (`psych::alpha`).  
- **Factor Correlations:** Spearman correlations among latent factors.  
- **Model Comparison:** Fit indices (CFI, TLI, RMSEA, SRMR) and chi-square difference tests.  
- **Modification indices:** Automatically printed for model refinement suggestions.

---

## License & citation

**License:** Released under the **MIT License** (reuse permitted with attribution).

**How to cite (placeholder):**

```
Al-Gburi G. Arabic Validation of the Repetitive Behavior Scale–Revised (RBS-R): 
Confirmatory Factor Analysis and Psychometric Evaluation. [Journal Name, Year, DOI].
```

---

## Contact
- **Author:** Ghaith Al-Gburi  
- **Email:** ghaith.ali.khaleel@gmail.com  
- **GitHub:** [https://github.com/GhaithAl-Gburi](https://github.com/GhaithAl-Gburi)  
- **ORCID:** `0000-0001-7427-8310`

