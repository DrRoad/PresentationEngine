require(shiny)

source("./ui/intro_input.R", local = TRUE)

shinyUI(
  navbarPage(
    title =  "Presentation Engine",
    getIntroPanel()
    
  )
  
)