library(shiny)

shinyUI(fluidPage(
  titlePanel("Luggage Dimension Converter"),

  sidebarLayout(
    sidebarPanel(
      helpText("Enter your luggage dimensions in inches."),
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
