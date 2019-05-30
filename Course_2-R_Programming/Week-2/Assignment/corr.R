corr <- function(directory, threshold = 0){
    
    source('complete.R')
    completeCases <- complete(directory)
    caseAboveThreshold <- completeCases[completeCases$nobs > threshold, 1]
    allFiles <- list.files(path = directory, full.names = TRUE)
    correlations <- rep(NA, length(caseAboveThreshold))
    
    for(i in caseAboveThreshold){
        selectData <- read.csv(allFiles[i])
        completeCases <- complete.cases(selectData)
        validSulfateData <- selectData[completeCases, 2]
        validNitrateData <- selectData[completeCases, 3]
        correlations[i] <- cor(x = validSulfateData, y = validNitrateData)
    }
    correlations <- correlations[complete.cases(correlations)]
}