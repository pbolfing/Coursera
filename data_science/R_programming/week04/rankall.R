## rankall
## Paul Bolfing
## week04 homework
## function returns hospitals based on rank in each state for an outcome
## outcome == heart attack, heart failure, or pneumonia
## num == ranking, best or worst

rankall <- function(outcome, num = "best"){
     
     ## read file
     out_data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
     
     ## check outcome
     out_col = 0
     
     if(outcome == "heart attack"){
          
          out_col <- 11
          
     }else if(outcome == "heart failure"){
          
          out_col <- 17
          
     }else if(outcome == "pneumonia"){
          
          out_col <- 23
          
     }else {
          
          stop ("invalide outcome")
          
     }## close if
     

     ## get all states that have data and sort them, as sort returns state,
     ## not position
     sort_states <- sort(unique(out_data$State))
     
     ## loop through states and get hospital based on rank or return NA
     len <- length(sort_states)
     
     hospitals <- NULL
     
     for (i in 1:len){
          
          ## get data for state
          state_data <- out_data[out_data$State == sort_states[i],]
          
          ## get rates alone and find length
          mor_rate <- suppressWarnings( as.numeric(state_data[,out_col]))
          rate_len <- length(mor_rate[!is.na(mor_rate)])
          
          ## proof rank
          ranking <- 0
          
          if(num == "best"){
               
               ranking <- 1
               
          }else if(num == "worst"){
               
               ranking <- rate_len
               
          }else{
               
               ranking <- num
               
          }## close if
          
          ## get names
          if(ranking > rate_len){
               
               hospitals <- c(hospitals, "NA")
               
          } else {
               
               ## order first by mor_rate, then hospital name
               ordered <- order(mor_rate, state_data[,2])
               
               ## get row num based on rank
               row_num <- ordered[ranking]
               
               ## get hospital name
               hos_name <- state_data[,2][row_num]
               
               ## add hospital name to list
               hospitals <- c(hospitals, hos_name)
               
          }## close if
          
     }## close for
     
     ## create data.frame to return results
     df <- data.frame(Hospital=hospitals, State=sort_states)
     df
     
} ## close rankall