setwd("C:/Users/STT/OneDrive/InputLogR")
#InputLog
library(XML)
#test1 = xmlParse("C:/Users/STT/Documents/InputLog/10fast trial/2015-06-24_0/output/10fast trial_20150624_0_GA.xml")
#rawtest1 <- getNodeSet(test1, "//session/event")
#rawtest1_df = xmlToDataFrame(nodes = rawtest1)
#test1key <- subset(rawback1_df, type == "keyboard")

#v = nrow(subset(rawtest1_df, output == "BACK")) 

#RUI
ruicount <- read.table("whichtest.txt", header = FALSE, fill = TRUE)
colnames(ruicount)[1] <- "Time"   
colnames(ruicount)[2] <- "Action"
colnames(ruicount)[3] <- "output"
backratio <- nrow(subset(ruicount, output == "Back"))/nrow(subset(ruicount, Action == "Key"))