# Load the Shiny library
library(shiny)

# Define the UI for the Shiny app
ui <- fluidPage(
  # Application title
  titlePanel("Simple Shiny Greeting App"),
  
  # User input field for name
  sidebarLayout(
    sidebarPanel(
      textInput("name", "Enter your name:", ""),
      actionButton("greetBtn", "Greet")
    ),
    
    # Display the greeting
    mainPanel(
      h3("Greeting:"),
      textOutput("greeting")
    )
  )
)

# Define the server logic for the Shiny app
server <- function(input, output) {
  observeEvent(input$greetBtn, {
    user_name <- input$name
    greeting <- paste("Hello,", user_name, "!")
    output$greeting <- renderText({
      greeting
    })
  })
}

# Run the Shiny app
shinyApp(ui = ui, server = server)

