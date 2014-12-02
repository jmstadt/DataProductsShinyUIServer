winsDifference <- function(iWinsGuess) iWinsGuess-1175

library(shiny)
shinyServer(
  function(input, output) {
    output$oWinsGuess <- renderPrint({input$iWinsGuess})
    output$results <- renderPrint({
      if (input$goButton == 0) "You have not pressed Submit"
      else winsDifference(input$iWinsGuess)})
  }
)
