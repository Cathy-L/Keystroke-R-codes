setwd("C:/Users/STT/OneDrive/InputLogR")
tim1 <- read.table("test.txt", header = TRUE, fill = TRUE)
#colnames(tim1)[1] <- "Etime"  #rename first column 
onlytim1key <- subset(tim1, Action == "KEY")

#type colnames(tim1) into console to get the column names cause they are different

timtime <- as.numeric(as.character(onlytim1key$Time))

timpause <- diff(timtime)
diffimp <- data.frame(diff = (timpause))
