# Presentation Engine - Data Retrieval Layer

getSummerExpenditureData <- function(){
  data <- readRDS("./data/summerExpenditureData.rds")
  return(data)
}