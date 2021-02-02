## ---------------------------
##
## Script name: 1_Data_preprocessing_review_studies
##
## Purpose of script: To preprocess the data from the studies identified in the literature review
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
setwd("/Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/") 
##
#### ---------------------------
##
## Set output directorypaths
outdir_figures='/Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/Figures/'    #replace with your output directory paths for Figures
outdir_tables='/Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/Tables/'      #replace with your output directory paths for Tables
##
##
#### -------------------------------------------------------------------------- CODE START ------------------------------------------------------------------------------------------------####


#---------- Pubmed ----------

setwd("/Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/studies/pubmed/")

# All files in 'pubmed' folder
file_list_pubmed <- list.files(pattern = "\\.csv$")

for (file in file_list_pubmed){
  
  # Read file from file list
  df <- read.csv(file, sep=',', header=T)
 
 # Create new data.frame with generic drug name
  generic_drug_name<-gsub("_pubmed.csv", "", file)
  name <-"generic_drug_name"

  df.2 <- data.frame(generic_drug_name)
  
  # Merge files
  df_final <-merge(df, df.2)
   
  write.csv(df_final, paste("/Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/studies/pubmed/new/",file)) #export each merged and modified file
   
}

# Set working directory
setwd("/Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/studies/pubmed/new/")

# Merge all files

file_list_pubmed.new <- list.files(pattern = ".csv")

df.pubmed <-  read.csv(file_list_pubmed.new[1])
for (f in file_list_pubmed.new[-1]) df.pubmed <- rbind(df.pubmed, read.csv(f))   

# Add variable 'database'
df.pubmed$database <- 'pubmed'

# Remove columns of no interest
df.pubmed2<-df.pubmed[, -c(1,2,8,9,10,15,17:24)]

# Write file
write.csv(df.pubmed2, "/Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/Data/df.pubmed.csv")



#---------- Scopus ----------

# Clear working space
rm(list=ls())

setwd("/Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/studies/scopus/")

# All files in 'pubmed' folder
file_list_scopus <- list.files(pattern = "\\.csv$")

for (file in file_list_scopus){
  
  # Read file from file list
  df <- read.csv(file, sep=',', header=T)
  
  # Create new data.frame with generic drug name
  generic_drug_name<-gsub("_scopus.csv", "", file)
  name <-"generic_drug_name"
  
  df.2 <- data.frame(generic_drug_name)
  
  # Merge files
  df_final.scopus <-merge(df, df.2)
  
  write.csv(df_final.scopus, paste("/Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/studies/scopus/new/",file)) #export each merged and modified file
  
}

# Set working directory
setwd("/Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/studies/scopus/new/")

# Merge all files
file_list_scopus.new <- list.files(pattern = ".csv")

df.scopus <-  read.csv(file_list_scopus.new[1])
for (f in file_list_scopus.new[-1]) df.scopus <- rbind(df.scopus, read.csv(f))   

# Add variable 'database'
df.scopus$database <- 'scopus'

# Remove columns of no interest
df.scopus2<-df.scopus[, -c(1,2,8,9,10,15,17:24)]

# Write file
write.csv(df.scopus2, "/Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/Data/df.scopus.csv")




#---------- Web of science ----------

# Clear working space
rm(list=ls())

setwd("/Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/studies/wos/")

# All files in 'pubmed' folder
file_list_webofscience <- list.files(pattern = "\\.csv$")

for (file in file_list_webofscience){
  
  # Read file from file list
  df <- read.csv(file, sep=',', header=T)
  
  # Create new data.frame with generic drug name
  generic_drug_name<-gsub("_wos.csv", "", file)
  name <-"generic_drug_name"
  
  df.2 <- data.frame(generic_drug_name)
  
  # Merge files
  df_final.webofscience <-merge(df, df.2)
  
  write.csv(df_final.webofscience, paste("/Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/studies/wos/new/",file)) #export each merged and modified file
  
}

# Set working directory
setwd("/Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/studies/wos/new/")

# Merge all files
file_list_webofscience.new <- list.files(pattern = ".csv")

df.webofscience <-  read.csv(file_list_webofscience.new[1])
for (f in file_list_webofscience.new[-1]) df.webofscience <- rbind(df.webofscience, read.csv(f))   

# Add variable 'database'
df.webofscience$database <- 'webofscience'
# Remove columns of no interest
df.webofscience2<-df.webofscience[, -c(1,2,8,9,10,15,17:24)]

# Write file
write.csv(df.webofscience2, "/Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/Data/df.webofscience.csv")



#---------- Merge all files to mastefile ---------- 

# Clear working space
rm(list=ls())

# Set working directory
setwd("/Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/Data/")



files <- list.files


myfiles <- list.files()
list_files<-lapply(myfiles,function(x) read.csv(x,stringsAsFactors=F))
final.dataset.all.studies<-do.call(rbind,list_files)


write.csv(final.dataset.all.studies, "final.dataset.all.studies.csv")


#### -------------------------------------------------------------------------- CODE END ------------------------------------------------------------------------------------------------####

