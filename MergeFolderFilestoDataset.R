#This script takes all the files from one folder and merges them into one dataset
#"dstest2" is the name of the compiled dataset, change this to desired name


setwd("C:/Users/Blanche/Dropbox/LEGGO/PauseTimes/LizPT/")
#set working directory to folder with all .csv files

file_list <- list.files()

for (file in file_list){
  
  # if the merged dataset doesn't exist, create it
  if (!exists("dstest2")){
    dstest2<- read.csv(file, header=TRUE)
    
  }
  
  # if the merged dataset does exist, append to it
  if (exists("datasetFIX")){
    temp_dataset <-read.csv(file, header=TRUE)
    dstest2<-rbind(dstest2, temp_dataset)
    rm(temp_dataset)
  }
  
}


