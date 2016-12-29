## Week02 problem 2 coding assignment

complete <- function(directory, id = 1:332){
  
  ##place holder variables
  my_len <- 0
  my_nobs <- NULL
  
  ## loop through each file and nobs
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
    
    ## get only rows with no NAs
    my_data2 <- my_data[!is.na(my_data[my_data$nitrate & my_data$sulfate,])]
    
    ## divide by four because there are 4 columns
    my_len <- length(my_data2)/4
    
    ## adding data
    my_nobs <- c(my_nobs, i, my_len)
  }## close for  
  
    ## make matrix from nobs
    my_matrix <- matrix(my_nobs, nrow = (length(my_nobs)/2),ncol = 2, byrow=TRUE)
    
    ## make data frame
    my_dataframe <- data.frame(my_matrix)
    
    ## add column names
    cnames <- c("id", "nobs")
    colnames(my_dataframe)<-cnames
    
    ## return value
    my_dataframe
  
}## close function