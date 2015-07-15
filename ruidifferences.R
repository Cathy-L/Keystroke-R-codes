setwd("~/") #set working directory

importedfilename <- read.table("rui.txt", header=TRUE, fill=TRUE)

pausetimes <- diff(as.numeric(importedfilename$Time))

pausetimeframe <- data.frame(diff = (pausetimes))

