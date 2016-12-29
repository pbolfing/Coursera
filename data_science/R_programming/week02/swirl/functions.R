## Useful Commands and Tips

## functions written like mean() can take arguments, fields passed in ()

## when creating function name<- function(arg1, arg2, arg3,...){
#                                  do something
#                             }

## to see source code of a function, simply type function name without () or arg

## note setting argument = to something when creating function sets default

## %% modulus operator

## can specifically name argument when calling or partially, if you do order 
## isn't important

## you can pass functions as arguments ex. args(mean)

## you can pass anonymous functions ex. evaluate(function(x){x+1},6)

## ... as an argument allows for an indefinite number of arguments be passed

## can unpack ... arguments by putting arguments in a named list
## then find each argument based on name
args <- list(...)
people <- args[["people"]]
place <- args[["place"]]

## can define you own binary operators
"%p%" <- function(left, right){

     paste(left, right)

}
