require(shiny)

getIntroPanel <- function(){
  tabPanel(
    title = "Introduction",
    
    h4("Welcome to my presentation engine!")
  )
}