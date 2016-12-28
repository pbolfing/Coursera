## Useful Commands and Tips

## Matrices and data frames store tabular (row and column) data
## Matrices are of one type, data frames can be of multiple

## find dimension
dim(my_vector)

## add dimension
dim(my_vector) <- c(4,5)

## attributes
attributes()

## note first number is rows, second is columns

## class 
class()

## creating matrix
matrix(data,nrow,ncol, ...)

## adding columns
cbind(patients, my_matrix)

## creating data frame
data.frame(patients, my_matrix)

## set column names
colnames(my_data) <- cnames

