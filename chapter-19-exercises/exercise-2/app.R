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
  textOutput(outputId = "costs")){
server<- function(inpiut_list, output_list) {
  
}
}

  
  # A `titlePanel()` layout with the text "Cost Calculator"
my_ui <- titlePanel(
  h2("Greetings from Shiny"),
  textInput(inputId = "username", label = "Cost Calculato?"),
  textOutput(outputId = "message")
)
  
  # A `numericInput()` widget with the label "Price (in dollars)"

  # It should have a default value of 0 and a minimum value of 0
  # Hint: look up the function's arguments in the documentation!
numericInput <- Price (input, output) {
   min = message_str <- paste0(min)
  }
  

  # A second `numericInput()` widget with the label "Quantity"
  # It should have a default value of 1 and a minimum value of 1  

  
  # The word "Cost", strongly bolded
 ui <- cost(
  h1("My Cost")
 )
  
  # A `textOutput()` output of a calculated value labeled `cost`
  cost <- textOutput(
    min = 18,                  # minimum slider value
    max = 80,                  # maximum slider value
    value = 42
  )


# Define a `server` function (with appropriate arguments)
# This function should perform the following:

  
  # Assign a reactive `renderText()` function to the output's `cost` value
  # The reactive expression should return the input `price` times the `quantity`
  # So it looks nice, paste a "$" in front of it!
  my_server <- function(cost) {
  
    output$message <- renderText({
      
      message_str <- paste0("Hello ", input$username, "!")
      
      
      return(message_str)
    })
  }


# Create a new `shinyApp()` using the above ui and server
  ui <- fluidPage(
    h1("My", em("Awesome"), "App"),
    p("My app is really cool.", "It's the coolest thing ever!"),
  )
