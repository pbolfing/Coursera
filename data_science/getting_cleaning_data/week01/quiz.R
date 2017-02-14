##week01 quiz

## question 1
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileurl, destfile = "./idaho_housing.csv")
housing <- read.csv("idaho_housing.csv")
million<- housing[housing$VAL==24, "VAL"]
sum(!is.na(million))

## Answer 53

## question 2
##one variable per column

## question 3
exurl<- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(exurl, destfile="./natural_gas.xlsx")
colIndex <- 7:15
rowIndex <- 18:23
dat<-read.xlsx("./natural_gas.xlsx", sheetIndex =1, colIndex = colIndex, rowIndex = rowIndex)
sum(dat$Zip*dat$Ext,na.rm=T)

#36534720

## question 4
filexml <-"http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
restaurant <- xmlTreeParse(filexml, useInternal = TRUE)
ans <- xpathSApply(restaurant, "//zipcode", xmlValue)
sum(ans=="21231")

#127

##question 5

file_csv <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
DT <- fread(file_csv)

#use system.time(DT[,mean(pwgtp15),by=SEX]) which is the answer

