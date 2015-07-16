library(XML)
setwd("C:/Users/STT/OneDrive/InputLogR")
syd72morn = xmlParse("C:/Users/STT/Documents/InputLog/Sydney Tran/2015-07-02_14/output/Sydney Tran_20150702_14_GA.xml")
syd72noon = xmlParse("C:/Users/STT/Documents/InputLog/Sydney Tran/2015-07-02_15/output/Sydney Tran_20150702_15_GA.xml")
syd72night = xmlParse("C:/Users/STT/Documents/InputLog/Sydney Tran/2015-07-02_16/output/Sydney Tran_20150702_16_GA.xml")
syd73morn = xmlParse("C:/Users/STT/Documents/InputLog/Sydney Tran/2015-07-03_17/output/Sydney Tran_20150703_17_GA.xml")
syd73noon = xmlParse("C:/Users/STT/Documents/InputLog/Sydney Tran/2015-07-03_18/output/Sydney Tran_20150703_18_GA.xml")
syd73night = xmlParse("C:/Users/STT/Documents/InputLog/Sydney Tran/2015-07-03_19/output/Sydney Tran_20150703_19_GA.xml")
syd74morn = xmlParse("C:/Users/STT/Documents/InputLog/Sydney Tran/2015-07-04_20/output/Sydney Tran_20150704_20_GA.xml")
syd74noon = xmlParse("C:/Users/STT/Documents/InputLog/Sydney Tran/2015-07-04_21/output/Sydney Tran_20150704_21_GA.xml")
syd74night = xmlParse("C:/Users/STT/Documents/InputLog/Sydney Tran/2015-07-04_22/output/Sydney Tran_20150704_22_GA.xml")
syd75morn = xmlParse("C:/Users/STT/Documents/InputLog/Sydney Tran/2015-07-05_23/output/Sydney Tran_20150705_23_GA.xml")
syd75noon = xmlParse("C:/Users/STT/Documents/InputLog/Sydney Tran/2015-07-05_24/output/Sydney Tran_20150705_24_GA.xml")
syd75night = xmlParse("C:/Users/STT/Documents/InputLog/Sydney Tran/2015-07-05_25/output/Sydney Tran_20150705_25_GA.xml")

rawsyd72morn <- getNodeSet(syd72morn, "//session/event")
syd72morn_df <- xmlToDataFrame(nodes = rawsyd72morn)
syd72mornkey <- subset(syd72morn_df, type == "keyboard")

rawsyd72noon <- getNodeSet(syd72noon, "//session/event")
syd72noon_df <- xmlToDataFrame(nodes = rawsyd72noon)
syd72noonkey <- subset(syd72noon_df, type == "keyboard")

rawsyd72night <- getNodeSet(syd72night, "//session/event")
syd72night_df <- xmlToDataFrame(nodes = rawsyd72night)
syd72nightkey <- subset(syd72night_df, type == "keyboard")

rawsyd73morn <- getNodeSet(syd73morn, "//session/event")
syd73morn_df <- xmlToDataFrame(nodes = rawsyd73morn)
syd73mornkey <- subset(syd73morn_df, type == "keyboard")

rawsyd73noon <- getNodeSet(syd73noon, "//session/event")
syd73noon_df <- xmlToDataFrame(nodes = rawsyd73noon)
syd73noonkey <- subset(syd73noon_df, type == "keyboard")

rawsyd73night <- getNodeSet(syd73night, "//session/event")
syd73night_df <- xmlToDataFrame(nodes = rawsyd73night)
syd73nightkey <- subset(syd73night_df, type == "keyboard")

rawsyd74morn <- getNodeSet(syd74morn, "//session/event")
syd74morn_df <- xmlToDataFrame(nodes = rawsyd74morn)
syd74mornkey <- subset(syd74morn_df, type == "keyboard")

rawsyd74noon <- getNodeSet(syd74noon, "//session/event")
syd74noon_df <- xmlToDataFrame(nodes = rawsyd74noon)
syd74noonkey <- subset(syd74noon_df, type == "keyboard")

rawsyd74night <- getNodeSet(syd74night, "//session/event")
syd74night_df <- xmlToDataFrame(nodes = rawsyd74night)
syd74nightkey <- subset(syd74night_df, type == "keyboard")

rawsyd75morn <- getNodeSet(syd75morn, "//session/event")
syd75morn_df <- xmlToDataFrame(nodes = rawsyd75morn)
syd75mornkey <- subset(syd75morn_df, type == "keyboard")

rawsyd75noon <- getNodeSet(syd75noon, "//session/event")
syd75noon_df <- xmlToDataFrame(nodes = rawsyd75noon)
syd75noonkey <- subset(syd75noon_df, type == "keyboard")

rawsyd75night <- getNodeSet(syd75night, "//session/event")
syd75night_df <- xmlToDataFrame(nodes = rawsyd75night)
syd75nightkey <- subset(syd75night_df, type == "keyboard")

day1a <- nrow(subset(syd72morn_df, output == "BACK"))/nrow(syd72mornkey)
day1b <- nrow(subset(syd72noon_df, output == "BACK"))/nrow(syd72noonkey)
day1c <- nrow(subset(syd72night_df, output == "BACK"))/nrow(syd72nightkey)
day2a <- nrow(subset(syd73morn_df, output == "BACK"))/nrow(syd73mornkey)
day2b <- nrow(subset(syd73noon_df, output == "BACK"))/nrow(syd73noonkey)
day2c <- nrow(subset(syd73night_df, output == "BACK"))/nrow(syd73nightkey)
day3a <- nrow(subset(syd74morn_df, output == "BACK"))/nrow(syd74mornkey)
day3b <- nrow(subset(syd74noon_df, output == "BACK"))/nrow(syd74noonkey)
day3c <- nrow(subset(syd74night_df, output == "BACK"))/nrow(syd74nightkey)
day4a <- nrow(subset(syd75morn_df, output == "BACK"))/nrow(syd75mornkey)
day4b <- nrow(subset(syd75noon_df, output == "BACK"))/nrow(syd75noonkey)
day4c <- nrow(subset(syd75night_df, output == "BACK"))/nrow(syd75nightkey)

#backspace <- matrix(c(day1a, day1b, day1c, day2a, day2b, day2c, day3a, day3b, day3c, day4a, day4b, day4c), ncol = 1, byrow = TRUE)
#`colnames<-`("Back to Key Ratio")
#`rownames<-`(c("7/2 morning", "7/2 afternoon", "7/2 night", "7/3 morning", "7/3 afternoon", "7/3 night", "7/4 morning", "7/4 afternoon", "7/4 night", "7/5 morning", "7/5 afternoon", "7/5 night"))
#backspace <- as.table(backspace)


ratios1 <- c(day1a, day1b, day1c, day2a, day2b, day2c, day3a, day3b, day3c, day4a, day4b, day4c)

rp <- barplot(as.numeric(ratios1), main = "Back to Key Ratio", xlab = "Trials", ylab = "Ratio")
axis(1, at=rp, labels = 1:12 )

