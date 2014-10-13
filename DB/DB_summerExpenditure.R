# Presentation Engine - Data Retrieval Layer

getSummerExpenditureData <- function(startDate, endDate){
  data <- readRDS("./data/summerExpenditureData.rds")
  return(data[data$Date >= startDate & data$Date <= endDate, ])
}