# Presentaiton Engine - User interface definition

require(shiny)

# Include UI definition for different presentation groups
source("./ui/ui_intro.R", local = TRUE)
source("./ui/ui_summerExpenditure.R", local = TRUE)

shinyUI(
  navbarPage(
    title =  "Presentation Engine",
    id = "group",
    
    # Tab for Introduction
    getIntroPanel(),
    
    # Tab for Summer Expenditure
    getSummerExpenditurePanel()
  )
)