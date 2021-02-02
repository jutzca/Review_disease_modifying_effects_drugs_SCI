## ---------------------------
##
## Script name: 2_Data_analysis_review_studies
##
## Purpose of script: Data analysis
##
## Author: Dr. Catherine Jutzeler
##
## Date Created: 2021-02-1
##
## Copyright (c) Catherine Jutzeler, 2021
##
## Email: catherine.jutzeler@bsse.ethz.ch
##
## ---------------------------
##
## Data source: Literature Research
##
## Notes: This analysis is for the publication Jutzeler et al, 2021 published in XX. [add link here]
##   
## ---------------------------
##
## load up the packages we will need:  (uncomment as required)
##
library(dplyr)
library(ggplot2)
##
## ----------------------------
##
## Install packages needed:  (uncomment as required)
##
# if(!require(XX)){install.packages("XX")}
##
#### ---------------------------
##
## R Studio Clean-Up:
cat("\014") # clear console
rm(list=ls()) # clear workspace
gc() # garbage collector
##
#### ---------------------------
##
## Set working directory 
setwd("/Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/Data/")
##
#### ---------------------------
##
## Set output directorypaths
outdir_figures='/Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/Figures/'    #replace with your output directory paths for Figures
outdir_tables='/Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/Tables/'      #replace with your output directory paths for Tables
##
##
#### -------------------------------------------------------------------------- CODE START ------------------------------------------------------------------------------------------------####

# Load data
all.studies.data <- read.csv("final.dataset.all.studies.csv", sep=',', header=T)


#---------- Summary statistics ---------- 

# Number of studies identified per database
df.sum.stats_db <- all.studies.data%>%
  dplyr::count(database)
df.sum.stats_db

df.sum.stats_db%>%ggplot(aes(database, n))+geom_bar(stat = "identity")

# Number of studies identified per database and per drug
df.sum.stats_db_drug <- all.studies.data%>%
  dplyr::count(database, generic_drug_name)%>%
  as.data.frame()%>%write.csv("/Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/Tables/df.sum.stats_db_drug.csv")
df.sum.stats_db_drug








#### -------------------------------------------------------------------------- CODE END ------------------------------------------------------------------------------------------------####

