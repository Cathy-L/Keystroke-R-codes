setwd("C:/Users/STT/OneDrive/InputLogR")
library(XML)
test0 = xmlParse("C:/Users/STT/Documents/InputLog/Sydney1/2015-07-23_1/output/Sydney1_20150723_1_GA.xml")
rawtest0 <- getNodeSet(test0, "//session/event")
test0_df = xmlToDataFrame(nodes = rawtest0)
#onlytest0key <- subset(test0_df, type == "keyboard")
only9key <- subset(test0_df, output == "9")
onlyparagraph <- test0_df[-c(285:439),]
keyparagraph <- subset(onlyparagraph, type == "keyboard")
onlynatural <- test0_df[-c(1:284),]
keynatural <- subset(onlynatural, type == "keyboard")