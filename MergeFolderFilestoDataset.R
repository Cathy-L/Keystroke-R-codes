#setwd location to folder of all files
#testin4 is the name of compiled dataset
#temp_testin4 is the name of temporary dataset


setwd("C:/Users/Blanche/Dropbox/LEGGO/TestTimes/")

file_list <- list.files()

testin4 <- data.frame ()


for (file in file_list){
  
    # if the merged wtf doesn't exist, create it
  if (!exists("testin4")){
    testin4 <- read.csv(file, header=TRUE)
    rm()
  }
  
  # if the merged wtf does exist, append to it
  if (exists("testin4")){
    temp_testin4 <-read.csv(file, header=TRUE)
    testin4<-rbind(testin4, temp_testin4)
    rm(temp_testin4)
  }
  
}