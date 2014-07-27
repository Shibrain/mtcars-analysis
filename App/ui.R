library(shiny)
shinyUI(pageWithSidebar(
  headerPanel(
    "MPG change factor inputs",p("asasa")
    
    ),


  sidebarPanel(
    p("You can change the variables: Transmission Type, Gross Hourse Power, Wieght for a car"),
    
    
    selectInput("tm", "Transmission Type",
                choices = c("Automatic Transmission" = "automatic",
                         "Manual Transmission" = "manual")),
    p("\n Now Select the gross Hourse Power of the car"),
    numericInput('hp', 'Hourse Power', 50, min = 50, max = 350, step = 50),
    p("The wight of the car in lb"),
    numericInput('wt', 'Wieght', 1000, min = 1000, max = 6000, step = 500),
    p("\n\n Notice that options are limited by the data used to fit the prediction model")
  ),
  mainPanel(
    p("The Outpot is a prediction made by linear regression model built from mtcars data set"),
    p("mtcars is data extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models).."),
    
    h3('prediction'),
    verbatimTextOutput("prediction"),h4('mile per US galon')
  )
))