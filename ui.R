# Presentaiton Engine - User interface definition

require(shiny)

# Include UI definition for different presentation groups
source("./ui/intro_input.R", local = TRUE)
source("./ui/summerExpenditure_input.R", local = TRUE)

shinyUI(
  navbarPage(
    title =  "Presentation Engine",
    
    # Tab for Introduction
    getIntroPanel(),
    
    # Tab for Summer Expenditure
    getSummerExpenditurePanel()
  )
)