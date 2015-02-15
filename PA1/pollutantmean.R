source("util.R")

pollutantmean <- function(directory, pollutant, id = 1:332){
        dataV <- c()
        for (ID in id){
                pollutantV <- read.csv(idcsv(directory, ID))[[pollutant]]
                bad <- is.na(pollutantV)
                pollutantV <- pollutantV[!bad]
                dataV <- c(dataV, pollutantV)
        }
        round(mean(dataV), 3)
}
