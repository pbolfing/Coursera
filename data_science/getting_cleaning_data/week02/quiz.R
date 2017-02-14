##week02 quiz

## question 1
library(httr)
library(jsonlite)
oauth_endpoints("github")
myapp <- oauth_app("github",
                   key="4256e0dff6c763f2e4ad",
                   secret = "286c8ec19c0811459f7d4d8058ca539b4924ecb1")
github_token <-oauth2.0_token(oauth_endpoints("github"),myapp)
gtoken <- config(token=github_token)
request <- GET("https://api.github.com/users/jtleek/repos", gtoken)
json1 <- content(request)
#since datasharing is the 11th repo, found using fromJSON() and names()
json1[11]

# answer 2013-11-07T13:25:07Z

## question 2
library(sqldf)

# answer sqldf("select pwgtp1 from acs where AGEP < 50")

## question 3
library(sqldf)

# answer sqldf("select distinct AGEP from acs")

## question 4

con <- url("http://biostat.jhsph.edu/~jleek/contact.html")
line <- readLines(con)
nchar(line[10])  #45
nchar(line[20])  #31
nchar(line[30])  #7
nchar(line[100])  #25

## question 5

df <- read.fwf("getdata_wksst8110.for", skip = 4, 
               width =c(10, 9, 4, 9, 4, 9, 4, 9, 4))
sum(df$V4)

# answer 32426.7
