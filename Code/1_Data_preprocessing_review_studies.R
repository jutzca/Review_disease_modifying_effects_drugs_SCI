## ---------------------------
##
## Script name: 1_Data_preprocessing_review_studies
##
## Purpose of script: To preprocess the data from the studies identified in the literature review
##                    
##
## Author: Dr. Catherine Jutzeler
##
## Date Created: 2021-01-12
##
## Copyright (c) Catherine Jutzeler, 2021
## Email: catherine.jutzeler@bsse.ethz.ch
##
## ---------------------------
##
## Data source: Literature Research
##
## Notes: This analysis is for the publication Jutzeler et al, 2021 published in XX. [add link here]
##        
##   
#### ---------------------------

## set working directory

setwd("/Users/jutzelec/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/")  #replace with your working directory

## ---------------------------
## load up the packages we will need:  

library(ggplot2)


## ----------------------------
## Install packages needed:  (uncomment as required)

#if(!require(ggplot2)){install.packages("ggplot2")}



#### ---------------------------
#Clear working space

rm(list = ls())

#### ---------------------------
#Set output directory paths

outdir_figures='/Users/jutzelec/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/Figures/'    #replace with your output directory paths for Figures
outdir_tables='/Users/jutzelec/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/Tables/'      #replace with your output directory paths for Tables

###Session Info
sessionInfo()


#### -------------------------------------------------------------------------- CODE START ------------------------------------------------------------------------------------------------####

# load original data