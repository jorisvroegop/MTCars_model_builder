library(shiny)

# Define server logic required to draw the linear model plot
shinyServer(function(input, output) {
  
  reg <- reactive({
    chosen_var <- input$variable
    lm(mtcars[,"mpg"] ~ mtcars[,chosen_var])
    })
  
  output$lmPlot <- renderPlot({
    chosen_var <- input$variable
    plot(mtcars[,chosen_var], mtcars[,"mpg"], xlab = input$variable, 
         xlim = c(0,max(mtcars[,chosen_var])), ylab = "MPG", ylim = c(0,35), 
         main = paste(input$variable, "vs. mpg"), bty = "n", pch = 16)
    abline(reg(), col="grey", lwd=2, lty=2)
  })

  output$data <- renderTable({
      mtcars[, c("mpg", input$variable), drop = FALSE]
    }, rownames = TRUE)
})
