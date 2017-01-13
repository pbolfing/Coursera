## best function
## pbolifng
## week04 homework
## function returns best hospital in a state for an outcome
## state == two letter abbreviation
## outcome == heart attack, heart failure, or pneumonia

best <- function(state, outcome){
     
     ## read file
     out_data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
     
     ## check state
     if(!state %in% out_data[,7]){
          
          stop ("invalid state")
     }
     
     ## check out come
     out_col = 0
     
     if(outcome == "heart attack"){
          
          out_col = 11
          
     }else if(outcome == "heart failure"){
          
          out_col = 17
          
     }else if(outcome == "pneumonia"){
          
          out_col = 23
          
     }else {
          
          stop ("invalide outcome")
          
     }## close if
     
     ## use valid state and outcome to return hospital name
     ## get rows with only input state
     state_data <- out_data[out_data$State == state,]
     
     ## get rates alone then find lowest
     mor_rate <- suppressWarnings( as.numeric(state_data[,out_col]))
     min_rate <- min(mor_rate, na.rm = TRUE)
     
     
     ## get lowest indexes
     min_indexes <- which(mor_rate == min_rate)
     
     ## get hospital name
     hos_names <- state_data[min_indexes, 2]
     
     ## return hospital name
     min(hos_names)
     
     
}## close function
