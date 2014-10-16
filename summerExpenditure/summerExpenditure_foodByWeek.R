# Summer Expenditure Group
# Food Expenditure (by Week)

setClass(
  "summerExpenditure_foodByWeek",
  contains = "summerExpenditure"
)

setMethod(
  "getTitle", "summerExpenditure_foodByWeek",
  function(object){
    return("Food Expenditure (by Week)")
  }
)

setMethod(
  "getData", "summerExpenditure_foodByWeek",
  function(object){
    data <- getSummerExpenditureData(object@startDate, object@endDate)
    
    # Only include rows related to food expenditure (i.e. Meal.Type is not NA)
    # And Date, Meal.Type and Amount columns
    data <- data[!is.na(data$Meal.Type),
                 c("Date", "Meal.Type", "Amount")]
    
    # Include YearWeek column (a "(year) W(week)" representation of given date)
    data$YearWeek <- getYearWeekColumn(data$Date)
    
    aggregate <- melt(cast(data, YearWeek ~ Meal.Type, 
                           value = "Amount", fun.aggregate = sum, fill = 0))
    
    return(aggregate)
  }
)

setMethod(
  "generateNVD3Chart", "summerExpenditure_foodByWeek",
  function(object) {
    data <- getData(object)
    
    chart <- nPlot(value ~ YearWeek,
                   data,
                   group = "Meal.Type",
                   type = "multiBarChart")
    
    return(chart)
  } 
)