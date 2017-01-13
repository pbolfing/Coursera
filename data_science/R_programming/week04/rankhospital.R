## rankhospital
## Paul Bolfing
## week04 homework
## function returns hospital based on rank in a state for an outcome
## state == two letter abbreviation
## outcome == heart attack, heart failure, or pneumonia
## num == ranking, best or worst

rankhospital <- function(state, outcome, num = "best"){
     
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
     
     ## get rows with only input state
     state_data <- out_data[out_data$State == state,]
     
     ## get rates alone and find length
     mor_rate <- suppressWarnings( as.numeric(state_data[,out_col]))
     len <- length(mor_rate[!is.na(mor_rate)])
     
     ## proof rank
     ranking <- 0
     
     if(num == "best"){
          
          ranking <- 1
          
     }else if(num == "worst"){
          
          ranking <- len
          
     }else{
          
          ranking <- num
          
     }
     
     ## check rank
     if(ranking >len){
          
          stop ("NA")
          
     } ## close if
     
     
     ## order first by mor_rate, then hospital name
     ordered <- order(mor_rate, state_data[,2])
     
     ## get row num based on rank
     row_num <- ordered[ranking]
     
     ## get hospital name
     hos_name <- state_data[,2][row_num]
     hos_name
     
}## close rankhospital