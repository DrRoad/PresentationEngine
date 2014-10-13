# Presentation Engine
# Summer Expenditure presentation group - Parent class declaration

getSummerExpenditurePrototype <- function(){
  # Dates chosen as they covered the last week of available data
  defaultStartDate <- as.Date("2014-09-14")
  defaultEndDate <- as.Date("2014-09-20")
  
  # Empty string as default option
  defaultOption <- ""
  
  return(prototype(startDate = defaultStartDate, endDate = defaultEndDate,
                   option = defaultOption))
}

setClass(
  "summerExpenditure",
  slots = c(startDate = "Date", endDate = "Date", option = "character"),
  prototype = getSummerExpenditurePrototype()
)