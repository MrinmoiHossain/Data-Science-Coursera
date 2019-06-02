rankhospital <- function(state, outcome, num = 'best'){
    ## Read outcome data
    file <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    outcomes <- c("hospital", "state", "heart attack", "heart failure", "pneumonia")
    data <- as.data.frame(
        cbind(
            file[, 2],   # hospital
            file[, 7],   # state
            file[, 11],  # heart attack
            file[, 17],  # heart failure
            file[, 23]   # pneumonia
            ), 
            stringsAsFactors = FALSE
    )
    colnames(data) <- outcomes
    
    if(!state %in% data[, "state"]){
        stop('invalid state')
    }
    else if(!outcome %in% c("heart attack", "heart failure", "pneumonia")){
        stop('invalid outcome')
    }
    else if(is.numeric(num)){
        si <- which(data[, 'state'] == state)
        ts <- data[si, ]
        ts[, eval(outcome)] <- as.numeric(ts[, eval(outcome)])
        ts <- ts[order(ts[, eval(outcome)], ts[, 'hospital']), ]
        output <- ts[, 'hospital'][num]
    }
    else if(!is.numeric(num)){
        if(num == 'best'){
            output <- best(state, outcome)
        }
        else if(num == 'worst'){
            si <- which(data[, 'state'] == state)
            ts <- data[si, ]
            ts[, eval(outcome)] <- as.numeric(ts[, eval(outcome)])
            ts <- ts[order(ts[, eval(outcome)], ts[, 'hospital'], decreasing = TRUE), ]
            output <- ts[, 'hospital'][1]
        }
        else{
            stop('invalid rank')
        }
    }
    output
}