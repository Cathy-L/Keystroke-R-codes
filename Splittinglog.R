setwd("C:/Users/STT/OneDrive/InputLogR")
library(XML)
test0 = xmlParse("C:/Users/STT/Downloads/Ek_20150723_15_GA.xml")
rawtest0 <- getNodeSet(test0, "//session/event")
test0_df = xmlToDataFrame(nodes = rawtest0)
#onlytest0key <- subset(test0_df, type == "keyboard")

onlyparagraph <- test0_df[-c(as.numeric(row.names(subset(test0_df, output == "|")))+1:nrow(test0_df)),]
keyparagraph <- subset(onlyparagraph, type == "keyboard")
onlynatural <- test0_df[-c(1:row.names(subset(test0_df, output == "|"))),]
keynatural <- subset(onlynatural, type == "keyboard")
