library(shiny)

shinyUI(fluidPage(
  titlePanel("Luggage Dimension Converter"),

  sidebarLayout(
    sidebarPanel(
      h4("Instructions 📘"),
      helpText("This app converts your luggage dimensions from inches to centimeters."),
      p("To use the app:"),
      tags$ul(
        tags$li("Enter your luggage's Length, Width, and Depth in inches."),
        tags$li("Click the 'Convert to cm' button."),
        tags$li("The converted dimensions and total size will appear on the right.")
      ),
      br(),
      #helpText("Enter your luggage dimensions in inches."),
      numericInput("length", "Length (in):", value = NULL),
      numericInput("width", "Width (in):", value = NULL),
      numericInput("depth", "Depth (in):", value = NULL),
      actionButton("convert", "Convert to cm")
    ),

    mainPanel(
      h3("Converted Dimensions"),
      verbatimTextOutput("converted"),
      h3("Total Size (cm)"),
      verbatimTextOutput("total")
    )
  )
))
