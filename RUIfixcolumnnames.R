tim2 <- read.table("test2.txt", header = FALSE, fill = TRUE) #makes new headers named v1, v2, etc..
colnames(tim2)[1] <- "Time"   #renames column names
colnames(tim2)[2] <- "Action"
onlytim2key <- subset(tim2, Action == "KEY")

