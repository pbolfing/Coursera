## Week 1 Quiz work

x<-4
class(x)

x<-c(4,"a",TRUE)
class(x)

x<-c(1,3,5)
y<-c(3,2,10)
cbind(x,y)

x<-list(2, "a", "b", TRUE)
x[[2]]

x<-1:4
y<-2:3
x+y

my_data<- read.csv("hw1_data.csv")

##1st 2 rows
my_data[1:2,]
head(my_data, 2)

## last 2 row
my_data[152:153,]
tail(my_data,2)

## 47th row ozone column
my_data[47, "Ozone"]

## missing values in Ozone
my_oz <-my_data[,"Ozone"]
sum(is.na(my_oz))

## mean of Ozone
mean(my_oz[!is.na(my_oz)])

##subset Ozone>31 and Temp>90
my_data2 <- my_data[my_data$Ozone>30 & my_data$Temp>90,"Solar.R"]
mean(my_data2[!is.na(my_data2)])

## mean temp, when month==6
my_data3 <- my_data[my_data$Month==6,"Temp"]

## max Ozone value May (5)
my_data4<- my_data[my_data$Month==5, "Ozone"]
max(my_data4[!is.na(my_data4)])
