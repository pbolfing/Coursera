## Useful commands and tips

## way to tell R you want to select particular element is with index vector
## in square brackets after vector
x[1:10]

## index vectors-logical, positive integers, negative integers, character

z<- x[is.na(x)] #returns all NAs because NA values are true (logical)
y<- x[!is.na(x)] #returns all non-NA values because they are false (logical)

y[y>0] #returns all positive vectors because they are the true values (logical)

## multi-positional subsetting (positive)
x[c(3,5,7)]

## select all but a couple (negative)
x[c(-2,-10)]
x[-c(2,10)]

## creating named vectors
vect<- c(foo = 11, bar = 2, norf = NA)

## get vector names
name(vect)

## add vector names
name(vect2)<-c("foo", "bar", "norf")

## comparing vectors
identical(vect,vect2)

## subsetting by name
vect["bar"]
vect[c("bar","foo")]


