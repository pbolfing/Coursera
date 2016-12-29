## Week02 problem 1 coding assignment

pollutantmean <- function (directory, pollutant, id = 1:332){

        ## place holder variables
        my_sum <- 0
        my_len <- 0
        my_id <- ""
        
        ## loop through each file, get sum, and length
        for (i in id){
          
          ##deal with leading 0s in file name        
          if(i < 10){
              my_id <- paste("00", i, sep="")
          }else if(i < 100 & i >= 10){
              my_id <- paste("0", i, sep ="")
          }else{
              my_id <- as.character(i)
          }## close if/else if/else
        
          ## getting file to open
          my_file <- paste(directory, "/", my_id, ".csv", sep = "")
        
          ## reading file
          my_data <- read.csv(my_file)
        
          ## get just pollutant data
          my_data2 <- my_data[, pollutant]
        
          ## remove NAs
          my_data3 <- my_data2[!is.na(my_data2)]
        
          ## get sum of data and add to existing
          my_sum <- sum(my_data3) + my_sum
        
          ## get length of data and add to existing
          my_len <- length(my_data3) + my_len
        
          }## close for
        
          ## return value
          my_sum/my_len
}