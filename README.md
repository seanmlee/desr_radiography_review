## Dual-Energy Subtraction Radiography (DESR): A systematic review and meta-analysis of pulmonary lesion detection

<strong>Michael Frenkel et al. <em>Manuscript submitted for review</em></strong>

This repository contains reproducible code for our research manuscript titled "Dual-Energy Subtraction Radiography (DESR): A systematic review and meta-analysis of pulmonary lesion detection." We will provide the full citation upon publication.

<strong>We will publish final updates to code and `.README` instructions upon publication</strong>
<br>  
<br>  

## Visual Abstract
![sensitivity](https://github.com/seanmlee/desr_radiography_review/assets/82421211/ad6d6a32-2a97-40bf-9bbc-9219e4d0c829)
<br>  
<br> 

![specificity](https://github.com/seanmlee/desr_radiography_review/assets/82421211/1721dc36-5fdd-4dfe-9b03-8fa710f81d2d)
<br>  
<br> 

![auc](https://github.com/seanmlee/desr_radiography_review/assets/82421211/5a6044d3-106b-4a71-82d9-61abe8bfb203)
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
