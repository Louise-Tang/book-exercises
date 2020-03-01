# Exercise 4: complex Shiny UI layouts

# Load libraries so they are available
library("shiny")

# Use source() to execute the `app_ui.R` and `app_server.R` files. These will
# define the UI value and server function respectively.
source("app_ui.R")
source("app_ui.R")

# You will need to fill in the `app_ui.R` file to create the layout.
# Run the app through this file.

# Create a new `shinyApp()` using the loaded `ui` and `server` variables

  textOutput(outputId = "costs"))
server<- function(inpiut_list, output_list) {
   selectInput()
}

  
  # A `titlePanel()` layout with the text "Cost Calculator"
  titlePanel() <- Cost (Calculator){
    mix = cost 
  }
  
  # A `numericInput()` widget with the label "Price (in dollars)"
  numericInput() <- Price (input){
    input = dollar 
  }
    
  # It should have a default value of 0 and a minimum value of 0
  # Hint: look up the function's arguments in the documentation!
  ui <- fluidPage(
    sliderInput(
      min = 0                 
  )
  )
  
  # A second `numericInput()` widget with the label "Quantity"
  # It should have a default value of 1 and a minimum value of 1  
  ui <- quantity (
    numericInput(
      min = 1                
    )
  )

  
  # A `textOutput()` output of a calculated value labeled `cost`



# Define a `server` function (with appropriate arguments)
# This function should perform the following:
  my_server <- function(input, output) {
    output$message <- renderText({
      message_str <- paste0("Hello ", input$username, "!")
      message_str
    })
  }
  
  # Assign a reactive `renderText()` function to the output's `cost` value
  # The reactive expression should return the input `price` times the `quantity`
  # So it looks nice, paste a "$" in front of it!



# Create a new `shinyApp()` using the above ui and server
  shinyApp(ui = my_ui, server = my_server)
