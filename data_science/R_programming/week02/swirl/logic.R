## Useful Commands and Comments

## Two booleans TRUE and FALSE

## equality operator == means exactly equal too

## inequality operators <, <=, >, >=

## not-equal operator !=

## ! can be used with many things like !TRUE, !FASLE or even !5==7

## And operators & and &&, & will evaluate across the whole vector
## && only evaluates across the first value of a vector
TRUE & c(TRUE, FALSE, TRUE)
TRUE, FALSE, TRUE

TRUE && c(TRUE, FALSE, TRUE)
TRUE

## Or operator | and ||, | evaluates across whole vector
## || evaluates first member of vector

## can chain logical operators together like arithmetic operators

## And operators are evaluated before or operators

## isTRUE function returns true or false
isTRUE()

## identical function returns true or false
indentical(,)

## exclusive or function takes two elements and only returns true if one is 
## true and the other is false
xor(,)

## which function returns indice of element that is true
which()

## any function returns true if any element is true
any()

## all function returns true if all are true
all()

