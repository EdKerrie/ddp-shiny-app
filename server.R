library(shiny)
library(ggplot2)
library(datasets)

shinyServer(function(input, output, session) {
  
  inputData <- reactive({
    trees[, c(input$xcol, input$ycol)]
  })
  
  output$plot1 <- renderPlot({
    plot(inputData(), pch = 20, cex = 2,
         xlab = paste("X Variable:", input$xcol, sep=" "),
         ylab = paste("Y Variable:", input$ycol, sep=" "))
  })
})



