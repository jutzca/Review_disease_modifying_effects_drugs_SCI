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


#Pubmed

setwd("/Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/Studies/pubmed")


dflist <- Map(function(df, x) {df$Drug_name <- x; df}, dflist, names(dflist))




# All files in 'pubmed' folder
file_list_pubmed <- list.files(pattern = "\\.csv$")

dflist <- Filter(is.data.frame, as.list(.GlobalEnv))


for (file in file_list_pubmed){
  
  df <- read.csv(file, sep=',', header=T)
  
  # Extract drug name from file
  drug_name <-gsub("_pubmed.csv", "", file)
  
  
  
  
  
  
  }




for (i in 1:2) {
  
  mydata[[as.symbol(paste0('new', i))]] <- mydata$x*get(paste0("df", i))$y
  
}


# Extract file names
filenames <- list.files(pattern="*.csv", full.names=TRUE)
ldf <- lapply(filenames, read.csv)
res <- lapply(ldf, summary)
names(res) <- substr(filenames, 3, 30)

unique_names <- names(res)




library(stringr)
FileList = shell("dir /x/a:-d", intern=T)



for (file in file_list_pubmed){

  df<-read.csv(file, sep = ',', header=T)
  
  
  write.csv(df, paste("Users/jutzca/Documents/GitHub/Review_disease_modifying_effects_drugs_SCI/Studies/pubmed/",file))
} 



# Merge all files
df.pubmed <-  read.csv(file_list_pubmed[1])
for (f in file_list_pubmed[-1]) df.pubmed <- rbind(df.pubmed, read.csv(f))   

# Add variable 'database'

df.pubmed$database <- 'pubmed'



write.csv(DF, "Models_appended.csv", row.names=FALSE, quote=FALSE)













for (file in file_list_pubmed){

df <- read.csv(file)
new <- rep(df, nrow(df))                      # Create new column
df[ , ncol(df) + 1] <- new                  # Append new column
colnames(df)[ncol(df)] <- paste0("pubmed")  # Rename column name

} 





df <- read.csv(file)
new <- rep(df, nrow(df))                      # Create new column
df[ , ncol(df) + 1] <- database                  # Append new column
colnames(df)[ncol(df)] <- paste0("pubmed", file)  # Rename column name

} 














#### -------------------------------------------------------------------------- CODE END ------------------------------------------------------------------------------------------------####
