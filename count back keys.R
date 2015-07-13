library(XML)
setwd("C:/Users/STT/OneDrive/InputLogR")

test1 = xmlParse("C:/Users/STT/Documents/InputLog/10fast trial/2015-06-24_0/output/10fast trial_20150624_0_GA.xml")
rawtest1 <- getNodeSet(test1, "//session/event")
rawtest1_df = xmlToDataFrame(nodes = rawtest1)
test1key <- subset(rawback1_df, type == "keyboard")

v = nrow(subset(rawtest1_df, output == "BACK")) 