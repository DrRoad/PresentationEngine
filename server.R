# Presentation Engine - Server Logic definition

require(shiny)

source("./setup.R", local = TRUE)

shinyServer(function(input, output) {
    
  item <- 
    reactive({
      switch(
        input$group,
        "summerExpenditure" = ({
          startD <- input$summerExpenditureDates[1]
          endD <- input$summerExpenditureDates[2]
          
          return(new(paste0(input$group, "_", input$summerExpenditure),
                     startDate = startD, endDate = endD))
        })
        
      )
    })
  
  output$summerExpenditureNVD3Chart <-
    renderChart2({
      generateNVD3Chart(item())
    })
    
})