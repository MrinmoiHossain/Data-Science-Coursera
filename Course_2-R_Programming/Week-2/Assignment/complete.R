complete <- function(directory, idMain = 1:332){
    allFiles <- list.files(path = directory, full.names = TRUE)
    selecData <- data.frame()
    nobs <- data.frame()
    completeCases <- data.frame()
    
    for(id in idMain){
        selecData <- read.csv(allFiles[id])
        nobs <- sum(complete.cases(selecData))
        completeCases <- rbind(completeCases, data.frame(id, nobs))
    }
    completeCases
}