setwd("C:/Users/STT/OneDrive/Rstudio/exercise")
exerciseST <- read.csv("exerciseST.csv", header= TRUE)
normalST <- read.csv("normST.csv", header = TRUE)
ExparAT <- exerciseST[c(2:(row.names(subset(exerciseST, x == "ParPT")))-1),]
ExparPT <- exerciseST[c(row.names(subset(exerciseST, x == "ParPT"))):(as.numeric(((row.names(subset(exerciseST, x == "ParBS")))))-1),]
ExparBS <- exerciseST[c(as.numeric(((row.names(subset(exerciseST, x == "ParBS")))))): (as.numeric((row.names(subset(exerciseST, x == "NatAT"))))-1),]
ExnatAT <- exerciseST[c(as.numeric(((row.names(subset(exerciseST, x == "NatAT")))))): (as.numeric((row.names(subset(exerciseST, x == "NatPT"))))-1),]
ExnatPT <- exerciseST[c(as.numeric(((row.names(subset(exerciseST, x == "NatPT")))))): (as.numeric((row.names(subset(exerciseST, x == "NatBS"))))-1),]
ExnatBS <- exerciseST[c(as.numeric(((row.names(subset(exerciseST, x == "NatBS")))))):nrow(exerciseST) ,]

NormparAT <- normalST[c(2:(row.names(subset(normalST, x == "ParPT")))-1),]
NormparPT <- normalST[c(row.names(subset(normalST, x == "ParPT"))):(as.numeric(((row.names(subset(normalST, x == "ParBS")))))-1),]
NormparBS <- normalST[c(as.numeric(((row.names(subset(normalST, x == "ParBS")))))): (as.numeric((row.names(subset(normalST, x == "NatAT"))))-1),]
NormnatAT <- normalST[c(as.numeric(((row.names(subset(normalST, x == "NatAT")))))): (as.numeric((row.names(subset(normalST, x == "NatPT"))))-1),]
NormnatPT <- normalST[c(as.numeric(((row.names(subset(normalST, x == "NatPT")))))): (as.numeric((row.names(subset(normalST, x == "NatBS"))))-1),]
NormnatBS <- normalST[c(as.numeric(((row.names(subset(normalST, x == "NatBS")))))):nrow(normalST) ,]

boxplot(as.numeric(ExparAT$x), as.numeric(NormparAT$x))