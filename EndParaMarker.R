setwd("C:/Users/STT/OneDrive/InputLogR")
library(XML)
whichtest = xmlParse("C:/Users/STT/Documents/InputLog/which/2015-07-28_0/output/which_20150728_0_GA.xml")
rawwhich <- getNodeSet(whichtest, "//session/event")
whichtest_df = xmlToDataFrame(nodes = rawwhich)
whichtestkey <- subset(whichtest_df, type == "keyboard")
paragraph <- whichtest_df[c(1:min(which(grepl(8, whichtest_df$output)))), ]
paragraphkey <- subset(paragraph, type == "keyboard") #have to subset keyboard after cause which returns diff row number if subset before
natural <- whichtest_df[c(min(which(grepl(8, whichtest_df$output)))+1: nrow(whichtest_df)), ]
naturalkey <- subset(natural, type == "keyboard")