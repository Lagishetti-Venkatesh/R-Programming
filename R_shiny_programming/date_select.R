library(shiny)

ui <- fluidPage(
  dateInput("selectedDate", "Select a Date:", value = Sys.Date()),
  actionButton("submitButton", "Submit Date"),
  textOutput("result")
)

server <- function(input, output, session) {
  # Define a reactive variable to store the selected date
  selected_date <- reactiveVal()
  
  # Observe the button click and update the selected_date variable
  observeEvent(input$submitButton, {
    selected_date(input$selectedDate)
  })
  
  # Render the selected date
  output$result <- renderText({
    paste("Selected Date:", as.character(selected_date()))
  })
}

shinyApp(ui, server)
