## Dual-Energy Subtraction Radiography (DESR): A systematic review and meta-analysis of pulmonary lesion detection

This repository contains reproducible code for our research manuscript titled `Dual-Energy Subtraction Radiography (DESR): A systematic review and meta-analysis of pulmonary lesion detection`, which is published in the journal `Clinical Radiology`.

<strong>Full citation:</strong> Frenkel, M., Iyer, S., Antar, R., Akram, A., Lee, S. M., Lichtenberger, J., & Shin, B. (2024). Dual-Energy Subtraction Radiography (DESR): A systematic review and meta-analysis of pulmonary nodule detection. Clinical Radiology.

<strong>DOI:</strong> https://doi.org/10.1016/j.crad.2024.09.015

<br>  
<br>  

## Visual Abstract
![sensitivity](https://github.com/seanmlee/desr_radiography_review/assets/82421211/ad6d6a32-2a97-40bf-9bbc-9219e4d0c829)
<br>  
<br> 

![specificity](https://github.com/seanmlee/desr_radiography_review/assets/82421211/e1c8c379-8944-4630-a649-049ae98ff154)
<br>  
<br> 

![auc](https://github.com/seanmlee/desr_radiography_review/assets/82421211/263d2982-b417-44f2-a0f1-6811c017cc55)
<br>  
<br>  

## To use this repository

- Clone the repository and open the `./desr_radiology_review.Rproj` R Project file
- This repository uses `renv` dependency management, so all software, package, and dependency version information is listed in the `./renv.lock` file and will automatically configure once prompted
- All scripts are in the `./scripts` directory, including:
  - `sensitivity.R`
  - `specificity.R`
  - `auc.R`
- Each script comprises t-tests, effect size calculation, and plotting code; plots will automatically output into the `./plots` directory
<br>  
<br> 
