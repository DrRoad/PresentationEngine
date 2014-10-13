# Presentation Engine
# Summer Expenditure presentation group - Parent class declaration

getSummerExpenditurePrototype <- function(){
  # Dates chosen as they covered the last week of available data
  yesterday <- as.Date("2014-09-14")
  weekAgo <- as.Date("2014-09-20")
  
  # Empty string as default option
  defaultOption <- ""
  
  return(prototype(startDate = weekAgo, endDate = yesterday,
                   option = defaultOption))
}

setClass(
  "summerExpenditure",
  slots = c(startDate = "Date", endDate = "Date", option = "character"),
  prototype = getSummerExpenditurePrototype()
)