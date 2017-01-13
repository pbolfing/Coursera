## Code from Week 4 homwork

outcome<- read.csv("outcome-of-care-measures.csv", colClasses = "character")

head(outcome)

ncol(outcome)

outcome[,11] <- as.numeric(outcome[,11])

hist(outcome[,11])

## see best.R