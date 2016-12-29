## Week02 Problem 3 coding assignment

corr <- function(directory, threshold = 0){
  
    ## call complete()
    my_results <- complete("specdata")
    
    ## placeholder variables
    my_greater <- NULL
    my_cor <- NULL
    values <- NULL
    
    ## go through results, find nobs over threshold
    for (i in 1:332){
      
        ## greater than threshold
        if(my_results[i,"nobs"]>threshold){
            
              my_greater <- c(my_greater, i)
          
        }## close if
      
    }## close for
    
    ## read files and run cor
    for (i in my_greater){
      
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
      
      ## run cor
      my_cor <- cor(my_data[,"sulfate"], my_data[,"nitrate"], use = "na.or.complete")
     
      ## save results
      values <- c(values, my_cor)
      
    }## close for
    
    ## return value
    values
    
}##close function
