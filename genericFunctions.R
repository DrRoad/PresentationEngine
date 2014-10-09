# Generic (interface) functions for S4 (formal) classes
# (i.e. presentation items)

require(rCharts)

setGeneric(
  "getTitle", function() {
    return("")  
  }
)

setGeneric(
  "getData", function() {
    return(data.frame())
  }
)

setGeneric(
  "generateNVD3Chart", function() {
    chart <- rCharts$new()
    chart$templates$script <- ""
    return(chart)
  }
)

setGeneric(
  "generateDataTable", function() {
    return(data.frame())
  }
)