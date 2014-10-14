# Presentation Engine - Setup file

require(shiny)
require(reshape)

# --- Include other files required for presentation engine ---

# Top level generic (interface) functions
source("./genericFunctions.R", local = TRUE)

# Data retrieval/ DB handler functions
source("./DB/DB_summerExpenditure.R", local = TRUE)

# Summer Expenditure Group
source("./summerExpenditure/summerExpenditure.R", local = TRUE)
source("./summerExpenditure/summerExpenditure_byCategory.R", local = TRUE)