# Generic (interface) functions for S4 (formal) classes
# (i.e. presentation items)

require(rCharts)

setGeneric(
  "getTitle", function(object) {
    return("")  
  }
)

setGeneric(
  "getData", function(object) {
    return(data.frame())
  }
)

setGeneric(
  "generateNVD3Chart", function(object) {
    chart <- rCharts$new()
    chart$templates$script <- ""
    return(chart)
  }
)

setGeneric(
  "generateDataTable", function(object) {
    return(data.frame())
  }
)