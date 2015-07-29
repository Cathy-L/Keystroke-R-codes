setwd("C:/Users/STT/OneDrive/InputLogR")
#InputLog
library(XML)
whichtest = xmlParse("C:/Users/STT/Documents/InputLog/which/2015-07-28_0/output/which_20150728_0_GA.xml")
rawwhich <- getNodeSet(whichtest, "//session/event")
whichtest_df = xmlToDataFrame(nodes = rawwhich)
whichtestkey <- subset(whichtest_df, type == "keyboard")
paragraph <- whichtest_df[c(1:min(which(grepl(8, whichtest_df$output)))), ]
paragraphkey <- subset(paragraph, type == "keyboard") #have to subset keyboard after cause which returns diff row number if subset before
natural <- whichtest_df[c(min(which(grepl(8, whichtest_df$output)))+1: nrow(whichtest_df)), ]
naturalkey <- subset(natural, type == "keyboard")

#RUI
whichrui <- read.table("whichtest.txt", header = FALSE, fill = TRUE)
colnames(whichrui)[1] <- "Time"   
colnames(whichrui)[2] <- "Action"
colnames(whichrui)[3] <- "output"
paragraph2 <- whichrui[c(1:min(which(grepl(8, whichrui$output)))), ]
paragraph2key <- subset(paragraph2, Action == "Key")
natural2 <- whichrui[c(min(which(grepl(8, whichrui$output)))+1: nrow(whichrui)), ]
natural2key <- subset(natural2, Action == "Key")