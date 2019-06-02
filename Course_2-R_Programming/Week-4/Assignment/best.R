best <- function(state, outcome){
    file <- read.csv("outcome-of-care-measures.csv", colClasses = 'character')
    outcomes <- c("hospital", "state", "heart attack", "heart failure", "pneumonia")
    data <- as.data.frame(
        cbind(
            file[, 2],          # hospital
            file[, 7],          # state
            file[, 11],         # heart attack
            file[, 17],         # heart failure
            file[, 23]          # pneumonia
        ),
        stringsAsFactors = FALSE
    )
    colnames(data) <- outcomes
    
    if(!state %in% data[, 'state']){
        stop('invalid state')
    }
    else if(!outcome %in% c("heart attack", "heart failure", "pneumonia")){
        stop('invalid outcome')
    }
    else{
        si <- which(data[, "state"] == state)
        ts <- data[si, ]    
        vals <- as.numeric(ts[, eval(outcome)])
        min_val <- min(vals, na.rm = TRUE)
        result  <- ts[, "hospital"][which(vals == min_val)]
        output  <- result[order(result)]
    }
    return(output)
}