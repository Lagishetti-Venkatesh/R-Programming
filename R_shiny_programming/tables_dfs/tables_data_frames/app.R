#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
# 
# library(shiny)
# 
# # Define UI for application that draws a histogram
# ui <- fluidPage(
# 
#     # Application title
#     titlePanel("Old Faithful Geyser Data"),
# 
#     # Sidebar with a slider input for number of bins 
#     sidebarLayout(
#         sidebarPanel(
#             sliderInput("bins",
#                         "Number of bins:",
#                         min = 1,
#                         max = 50,
#                         value = 30)
#         ),
# 
#         # Show a plot of the generated distribution
#         mainPanel(
#            plotOutput("distPlot")
#         )
#     )
# )
# 
# # Define server logic required to draw a histogram
# server <- function(input, output) {
# 
#     output$distPlot <- renderPlot({
#         # generate bins based on input$bins from ui.R
#         x    <- faithful[, 2]
#         bins <- seq(min(x), max(x), length.out = input$bins + 1)
# 
#         # draw the histogram with the specified number of bins
#         hist(x, breaks = bins, col = 'darkgray', border = 'white',
#              xlab = 'Waiting time to next eruption (in mins)',
#              main = 'Histogram of waiting times')
#     })
# }
# 
# # Run the application 
# shinyApp(ui = ui, server = server)

library(shiny)

ui <- fluidPage(
    titlePanel("Sidebar Layout UI "),
    
    sidebarLayout(position = "left",
                  
                  
                  
                  #side panel
                  sidebarPanel(
                    h1("Installation"),
                    br(),
                    p("Shiny is available on CRAN, So you install it in the usual way from your R Console:"),
                    br(),
                    code("install.packages(\" shiny\")"),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    img(src="rstudio.png", height=70, width=200),
                     "Shiny is a product of ",
                    span("Rstudio", style="color:blue")
                  ),
                  
                  
                  #center panel.
                  mainPanel("main Panel",
                            #html code 
                            h1("header of size 1.", align='center'),
                            br(),
                            h6("header of seize 6", align='center'),
                            br(),
                            a("www.google.com", align='center'),
                            br(),
                            code("import pandas as pd \n", align='center'),
                            br(),
                            img(src="dad_adhaar.jpeg", height=72, width=72)
                            )
      
    )
    
  
)

server <- function(input, output){
  
}

shinyApp(ui, server)

#runExample("02_text")