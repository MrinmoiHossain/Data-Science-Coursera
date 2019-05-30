pollutantmean <- function(directory, pollutant, id = 1:332){
    allFiles <- list.files(path = directory, full.names = TRUE)
    selectData <- data.frame()
    
    for(i in id){
        selectData <- rbind(selectData, read.csv(allFiles[i]))
    }
    
    if(pollutant == 'sulfate'){
        mean(selectData$sulfate, na.rm = TRUE)
    }
    else if(pollutant == 'nitrate'){
        mean(selectData$nitrate, na.rm = TRUE)
    }
}