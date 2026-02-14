# README — Translation and Validation of the Arabic Version of the Revised Restrictive Behaviours Scale Among Iraqi Children With Autism Spectrum Disorder: A Suggestion for Model Modification (R)

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.17606530.svg)](https://doi.org/10.5281/zenodo.17606530)

**Repository author:** Ghaith Al-Gburi  

**Study DOI / Citation:** Hussein Al‐Sultan RR, Jasim SM, Lami F, et al. Translation and Validation of the Arabic Version of the Revised Restrictive Behaviours Scale Among Iraqi Children With Autism Spectrum Disorder: A Suggestion for Model Modification. Int J Methods Psychiatr Res. 2025;34(4). doi:`10.1002/mpr.70048`.

[![Read the Study](https://img.shields.io/badge/Read%20the%20Study-blue)](https://doi.org/10.1002/mpr.70048)

---

## Quick view
Click below to view the complete analysis results and visualizations:

[Open the full analysis report](https://rawcdn.githack.com/GhaithAl-Gburi/RBS-R-Arabic-Validation/main/analysis_report.pdf)

---

## Purpose
This repository contains `RBS_validation.Rmd` — an R Markdown script used to perform confirmatory factor analysis and psychometric validation of the **Arabic version of the Repetitive Behavior Scale–Revised (RBS-R)**.  The script tests multiple CFA models (2-factor, 6-factor, and modified 2-factor structures, etc.), estimates reliability (Cronbach’s α and composite reliability), and examines inter-factor correlations.

> **Data privacy:** Participant-level identifiable data are **not included** in this repository.

---

## Files in this repo
- `RBS_validation.R` — R script.
- `RBS_validation.Rmd` — R Markdown (script + narrative + results).
- `analysis_report.pdf` — Rendered PDF report for the complete analysis workflow.
- `RBS_data.csv` — CSV file containing the data used for statistical analysis.
- `survey.docx` — Doc file containing the arabic and english version of the research survey.
- `item-item spearman correlation matrix.xlsx` — item-item correlation matrix for the arabic RBS-R.
- `readme.md` — This file.  
- `LICENSE` — AGPL-3.0 License (reuse and citation conditions).

---

## Required R version & packages
- **R version:** ≥ 4.0 recommended  
- **Required packages:** `lavaan`, `semTools`, `psych`, `dplyr`

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
**License:** This repository is released under the **AGPL-3.0 License**.

**How to cite this code:**

```
Al-Gburi, G. (2025). RBS-R-Arabic-Validation. Zenodo. https://doi.org/10.5281/zenodo.17606530
```

---

## Contact
- **Author:** Ghaith Al-Gburi  
- **Email:** ghaith.ali.khaleel@gmail.com  
- **GitHub:** [https://github.com/GhaithAl-Gburi](https://github.com/GhaithAl-Gburi)  
- **ORCID:** `0000-0001-7427-8310`

