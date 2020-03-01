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
shinyApp(ui = my_ui, server = my_server)

  
  # A `titlePanel()` layout with the text "Cost Calculator"
my_ui <- fluidPage( 
  titlePane("Cost Calculator"),
  tnumericInput(inputID= "price", label="Price (in dollars)", value = 0, min=0 ),
  tnumericInput(inputID = "quality", label="uantity", valur=1, min=1)
  p(strong("cost")),
  textOutput(outputId = "costs"))
server<- function(inpiut_list, output_list) {
  
  
}
  # A `numericInput()` widget with the label "Price (in dollars)"

  # It should have a default value of 0 and a minimum value of 0
  # Hint: look up the function's arguments in the documentation!

  

  # A second `numericInput()` widget with the label "Quantity"
  # It should have a default value of 1 and a minimum value of 1  

  
  # The word "Cost", strongly bolded
 
  # A `textOutput()` output of a calculated value labeled `cost`
  


# Define a `server` function (with appropriate arguments)
# This function should perform the following:

  
  # Assign a reactive `renderText()` function to the output's `cost` value
  # The reactive expression should return the input `price` times the `quantity`
  # So it looks nice, paste a "$" in front of it!
  


# Create a new `shinyApp()` using the above ui and server
  