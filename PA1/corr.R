source("util.R")

corr <- function(directory, threshold = 0) {
        completeV <- complete(directory)
        nobsV <- completeV$nobs
        qualifiedV <- nobsV > threshold
        idV <- completeV$id[qualifiedV]
        corrV <- c()
        for (ID in idV){
                pollutantV <- read.csv(idcsv(directory, ID))
                sulfateV <- pollutantV[["sulfate"]]
                nitrateV <- pollutantV[["nitrate"]]
                corrV <- c(corrV, cor(sulfateV, nitrateV, use = "complete.obs"))
        }
        corrV
}