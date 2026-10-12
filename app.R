library(shiny)

ui <- fluidPage(
  titlePanel("My First Shiny App"),
  
  sliderInput(
    inputId = "n",
    label = "Number of observations:",
    min = 10,
    max = 1000,
    value = 100
  ),
  
  plotOutput("hist")
)

server <- function(input, output) {
  
  output$hist <- renderPlot({
    hist(rnorm(input$n),
         main = "Random Normal Data")
  })
}

shinyApp(ui = ui, server = server)