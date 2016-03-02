
### Use input to create a histogram    
shinyServer(function(input, output) {
  
#Renders a visualizatoin thht allows the user to choose the type of visualization(histogram, box, bar)
#Compares data to the Petal Length of Iris data
  output$plot <- renderPlotly({
    irisGraph <- plot_ly(iris,  x = eval(parse(text = input$dataOptions)), y = Petal.Length, type = input$graphOptions
                 ) 
    layout(irisGraph,
           yaxis = list(title = "Petal Length"), 
           xaxis = list(title = input$dataOptions), 
           #Changes title name based on the selected data
           title =  paste(input$dataOptions, "vs Petal Length (cm)", sep = " ") 
           )
  })
})