library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("MPG change factor inputs"),
  sidebarPanel(
    
    selectInput("tm", "Transmission Type",
                choices = c("Automatic Transmission" = "automatic",
                         "Manual Transmission" = "manual")),
    numericInput('hp', 'Hourse Power', 50, min = 50, max = 350, step = 50),
    numericInput('wt', 'Wieght', 1000, min = 1000, max = 6000, step = 500)
  ),
  mainPanel(
    h3('prediction'),
    verbatimTextOutput("prediction"),h4('mile per US galon')
  )
))