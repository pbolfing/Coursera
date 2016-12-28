##Useful commands and tips

## NA represents any value missing or "not available" in the statistical sense

## Any operation involving NA generally yields NA as result
x <- c(44, NA, 5, NA)
x * 3
132, NA, 15, NA

## pulling from standard normal distribution
y <- rnorm(1000)

## randomly sample
my_data<- sample(c(y,z), 100)

## locate NAs
is.na()

## becareful using logical expressions when NA is involved

## summation
sum(my_na)

## note Inf stands for infinity

