## Useful Commands and Tips

## Dates represented by Date class, stored as number of days since 1970-01-01

## Time is represented by POSIXct and POSIXlt, stored as number of seconds since
## 1970-01-01 for POSIXct and as a list of seconds, minutes, hours, etc for
## POSIXlt

## To see internals of variable
unclass(d1)

## create date variables
as.Date("1969-01-01")

## get system date
Sys.Date()

## get system time, returns class POSIXct
Sys.time()

## convert to POSIXlt, time must be in format (YYYY-MM-DD)
as.POSIXlt(Sys.time())

## condence unclass
str(unclass())

## get day of the week
weekdays()

## get month
months()

## get quarter
quarters()

## convert character string into time (POSIXlt), note need to know code use help
strptime()

## can perform addition and subtraction and comparisons on times and dates

## difftime() lets you specify 'units' parameter
difftime(Sys.time, t1, units = 'days')

## if you use dates and times a lot look into lubridate package 
