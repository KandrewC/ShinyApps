library(shiny)
library(plotly)
shinyUI(fluidPage(
  titlePanel("Iris Data Comparison"),
  sidebarPanel(
    #Allows user to choose a graph visualization option
    selectInput("graphOptions", label = "Graph Options",
                 choices = list("Histogram" = "histogram", "Box" = "box", "Bar" = "bar"), 
                 selected = "box"),
    #Allows user to choose between different datas to compare with Petal Length
    radioButtons("dataOptions", label = "Data Options",
                 choices = list("SepalWidth" = 'Sepal.Width', "PetalWidth" = "Petal.Width", "Species" = 
                                  "Species"), 
                 selected = 'Sepal.Width')    
  ),
  mainPanel(
    plotlyOutput("plot")
  )
))


