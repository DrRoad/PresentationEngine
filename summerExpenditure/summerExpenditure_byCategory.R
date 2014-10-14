# Summer Expenditure Presentation Group
# Expenditure by category

setClass(
  "summerExpenditure_byCategory",
  contains = "summerExpenditure"
)

setMethod(
  "getTitle", "summerExpenditure_byCategory",
  function(object){
    return("Expenditure By Category")
  }
)

setMethod(
  "getData", "summerExpenditure_byCategory",
  function(object){
    data <- getSummerExpenditureData(object@startDate, object@endDate)
    
    # Excluding large purchases
    data <- data[!data$Type %in% c("Long-distance Travel", "Insurance"), ]
    
    aggregate <- 
      melt(data.frame(cast(data, Type ~ ., 
                           value = "Amount", fun.aggregate = sum)),
           id.vars = "Type")  
    
    return(aggregate)
  } 
)

setMethod(
  "generateNVD3Chart", "summerExpenditure_byCategory",
  function(object){
    data <- getData(object)
    
    chart <- nPlot(value ~ Type,
                   data = data,
                   type = 'pieChart')
    
    return(chart)
  }
)