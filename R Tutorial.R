library(XML) #load and attach packages
setwd("C:/Users/STT/OneDrive/InputLogR") #sets working directory (puts files in the folder InputLogR)

frame1 <- data.frame (actionTimes = as.numeric(onlyalldata$actionTime), pauseTimes = as.numeric(onlyalldata$pauseTime), id = "Sydney") #attached to the variable "frame1" I made a data frame with the column "actionTimes" with actionTime numbers from the data frame "onlyalldata", same with pauseTimes and another column named "id" with my name as the data

#getting xml to data frame
keystroke = xmlParse("C:/Users/STT/Documents/InputLog/Sydney Tran/2015-06-25_1/output/Sydney Tran_20150625_1_GA.xml") #parse the xml file into the variable "keystroke"
rawData <- getNodeSet(keystroke, "//session/event") #draws the data from under the node "event" 
key_df = xmlToDataFrame(nodes = rawData) #under the variable "key_df" creates a data frame using the data drawn above
onlyKeyboard <- subset(key_df, type == "keyboard") #under the variable "onlyKeyboard" we only take the subset of the data in the "type" column that is keyboard

#to make a histogram
hist(as.numeric(onlyKeyboard$actionTime)) #creates a histogram of the actionTime numbers from the onlykeyboard subset, as.numeric labels the data as numbers 
hist(liz$x, add = TRUE, col = "blue") #adds another histogram to the plot with another set of data
#adding xlim= c(0,300) sets the x axis limits; ylim= c(0, 0.02) sets the y axis limits; main= "Hello" titles the graph hello; breaks= c(0, seq(0, 1000, 25)) this makes the x axis start at 0 and from 0 to 10000 makes the bins 25 increments wide
#xlab= "" labels the x axis, ylab=; probability = TRUE or frequency = FALSE sets the y axis numbers to density; border= "red" colors the lines; col= "red" fills in the bars

#to make density plot
plot(density(as.numeric(onlyKeyboard$actionTime))) #creates a density plot
lines(density(as.numeric(liz$x)), col = "blue") #adds another density line to the plot and colors the line blue

#to make a boxplot
boxplot(as.numeric(onlyKeyboard$actionTime), as.numeric(liz$x)) #creates boxplot with both data sets, list more data sets if want more box plots
boxplot(as.numeric(onlyKeyboard$actionTime), as.numeric(liz$x), col = c("red", "blue")) #colors the first data boxplot red and the other blue

#to write a csv from data frame
write.csv(onlyKeyboard$actionTime, "sydfile.csv") #named the file "sydfile.csv"

#to read a csv
liz <- read.csv("LizData.csv", header = TRUE) #put into variable "liz"