setwd("C:/Users/STT/OneDrive/InputLogR")
tim1 <- read.table("test.txt", header = TRUE, fill = TRUE)
onlytim1key <- subset(tim1, Subject == "KEY")
#type colnames(tim1) into console to get the column names cause they are different
