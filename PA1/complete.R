source("util.R")

complete <- function(directory, id = 1:332) {
        nobsV <- c()
        for (ID in id){
                completeV <- complete.cases(read.csv(idcsv(directory, ID)))
                nobsV <- c(nobsV, sum(as.numeric(completeV)))
        }
        data.frame(id = id, nobs = nobsV)
}