library(shiny)


ui <- fluidPage(
    #title       
    titlePanel("Hello Venky..!"),
    
    # sidebar layout
    sidebarLayout(
      
      sidebarPanel(
        sliderInput( inputId = "bins",
                     label = "number of bins",
                     min = 1,
                     max = 100,
                     value = 50)
      
      ),
      mainPanel(
        plotOutput(outputId = "distplot")
      )
    )
  
  
)

server <- function(input, output )(
            output$distplot <- renderPlot({
              x <- faithful$waiting
              message <- paste("data x :", x," bins given ", input$bins,"minimum of x ", min(x))
             
              bins<- seq(min(x), max(x), length.out = input$bins + 1)
              
              hist(x, breaks=bins, col="#007bc2", border="white", 
                   main="histogram waiting times")
            })
)

shinyApp(ui, server)