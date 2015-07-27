setwd("C:/Users/STT/OneDrive/InputLogR")
test2 <- read.table("test2.txt", header = FALSE, fill = TRUE) #makes new headers named v1, v2, etc..
colnames(test2)[1] <- "Time"   #renames column names
colnames(test2)[2] <- "Action"
colnames(test2)[3] <- "output"

onlypara <- test2[-c(as.numeric(row.names(subset(test2, output == "|")))+1:nrow(test2)),]
onlyparakey <- subset(onlypara, Action == "KEY")
onlynatl <- test2[-c(1:row.names(subset(test2, output == "|"))),]
onlynatlkey <- subset(onlynatl, Action == "KEY")