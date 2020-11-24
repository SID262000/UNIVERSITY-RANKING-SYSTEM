install.packages("magrittr")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("gridExtra")
library(ggplot2)
library(magrittr)
library(dplyr)
library(gridExtra)
timesData <- read.csv("timesData.csv")
#replace first the missing values (`-`) with NA
timesData$teaching[timesData$teaching=='-'] <- NA
timesData$international[timesData$international=='-'] <- NA
timesData$research[timesData$research=='-'] <- NA
timesData$citations[timesData$citations=='-'] <- NA
timesData$income[timesData$income=='-'] <- NA
timesData$total_score[timesData$total_score=='-'] <- NA

#replace factors with numeric
timesData$teaching <- as.numeric(as.character(timesData$teaching))
timesData$international <- as.numeric(as.character(timesData$international))
timesData$research <- as.numeric(as.character(timesData$research))
timesData$citations <- as.numeric(as.character(timesData$citations))
timesData$income <- as.numeric(as.character(timesData$income))
timesData$total_score <- as.numeric(as.character(timesData$total_score))

# replace NAs with 0
timesData$income[is.na(timesData$income)] <- 0
timesData$international[is.na(timesData$international)] <- 0

#calculate the total score
timesData$t_score =
  0.3 * as.numeric(as.character(timesData$teaching)) +
  0.075 * as.numeric(as.character(timesData$international)) +
  0.3 * as.numeric(as.character(timesData$research)) +
  0.3 * as.numeric(as.character(timesData$citations)) +
  0.025 * as.numeric(as.character(timesData$income))

#replace the total_score where missing with the calculated value
timesData$total_score[is.na(timesData$total_score)] <- timesData$t_score[is.na(timesData$total_score)]

timesData$wr = as.numeric(as.character(timesData$world_rank))


