#setwd location to folder of all files
#dsname is the name of compiled dataset
#temp_dsname is the name of temporary dataset


setwd("C:/Users/Blanche/Dropbox/LEGGO/PauseTimes/LizPT/")

file_list <- list.files()

for (file in file_list){
  
  # if the merged wtf doesn't exist, create it
  if (!exists("dsname")){
    dsname <- read.csv(file, header=TRUE)
  }
  
  # if the merged wtf does exist, append to it
  if (exists("dsname")){
    temp_dsname <-read.csv(file, header=TRUE)
    dsname<-rbind(dsname, temp_dsname)
    rm(temp_dsname)
  }
  
}