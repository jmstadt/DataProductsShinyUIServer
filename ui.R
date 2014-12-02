library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("New York Yankees wins vs Boston Red Sox since 1901, 
              2176 total games played between the two teams"),
  sidebarPanel(
    numericInput(inputId="iWinsGuess", label = "Guess how many games the 
                 Yankees won", 0, min = 0, max = 2176, step = 1),
    actionButton("goButton", "Submit")
  ),
  mainPanel(
    h3('Results'),
    h4('You entered'),
    verbatimTextOutput("oWinsGuess"),
    h4('your wins guess was different by '),
    verbatimTextOutput("results")
  )
))