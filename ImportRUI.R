setwd("C:/Users/STT/OneDrive/InputLogR")
tim1 <- read.table("test.txt", header = TRUE, fill = TRUE)
#colnames(tim1)[1] <- "Etime"  #rename first column 
onlytim1key <- subset(tim1, Action == "KEY")

#type colnames(tim1) into console to get the column names cause they are different
#the first column is the action column, don't know how to name the column with numbers and get the data
timtime <- as.numeric(onlytim1key$Time)

diffimp <- data.frame(diff = (timtime))
