## Useful Commands and Tips

## vapply() allows you to specify explicitly the result format and will
## throw an error if the result doesn't match
vapply(flags, unique, numeric(1))

## table() will give summary of data in a table like format
table(flags$landmass)

## tapply() gives the result of two flags(identifing groups)
tapply(flags$animate, flags$landmass, mean)

## 
