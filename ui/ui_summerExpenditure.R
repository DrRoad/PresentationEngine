# Panel definition for Summer Expenditure tab/page/group

require(shiny)

getSummerExpenditurePanel <- function() {
  tabPanel(
    title = "Summer Expenditure",
    value = "summerExpenditure",
    
    # Navigation list page under Summer Expenditure Tab
    navlistPanel(
      id = "summerExpenditure",
      
      "Options",
      
      tabPanel(
        title = "By Category",
        value = "byCategory"
      ),
      
      tabPanel(
        title = "Food Expenditure (By week)",
        value = "foodByWeek"
      ),
      
      tabPanel(
        title = "Where will I have my breakfast tomorrow?",
        value = "breakfastMigration"
      ),
      
      # Main visualisation area
      mainPanel(
        conditionalPanel(
          condition = "input.group == 'summerExpenditure' &&
                       (input.summerExpenditure == 'byCategory' ||
                        input.summerExpenditure == 'breakfastMigration')",
          dateRangeInput(
            inputId = "summerExpenditureDates",
            label = NULL,
            start = as.Date("2014-06-30"),
            end = as.Date("2014-09-20"),
            min = as.Date("2014-06-30"),
            max = as.Date("2014-09-20")
          )
        )
        
      )
    )
    
  )
}