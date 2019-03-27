library(shiny)

# Define UI for application that draws a lm plot of selected regressor
shinyUI(fluidPage(
  
  # Application title
  titlePanel("MTCars - impacts on MPG"),
  
  # Sidebar with a selection input for regressor 
  sidebarLayout(
    sidebarPanel(
      selectInput("variable", "Variable:",
                  c("Horsepower" = "hp",
                    "Weight" = "wt",
                    "Displacement" = "disp",
                    "1/4 mile time" = "qsec")),
      tableOutput("data")
    ),
    
    # Show a plot of the data and linear model
    mainPanel(
      h5("Select a variable in the sidebar which you would like to relate to miles per gallon 'mpg' 
         in the 'mtcars' dataset. After you pick a variable, you can see the data in the sidebar and 
         a plot of that data below. Additionally a simple linear regression line is drawn through the points."),
      plotOutput("lmPlot")
    )
  )
))
