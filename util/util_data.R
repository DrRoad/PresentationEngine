# Data/ Table utility functions

# Accepts a date column, return a character column with format "(year) W(week)"
getYearWeekColumn <- function(dateColumn){
  return(format(dateColumn, "%Y W%W"))
}