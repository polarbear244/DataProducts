library(shiny)

shinyServer(function(input, output) {

  convertDimensions <- eventReactive(input$convert, {
    length_cm <- input$length * 2.54
    width_cm <- input$width * 2.54
    depth_cm <- input$depth * 2.54
    total_cm <- length_cm + width_cm + depth_cm

    list(
      converted = paste0("Length: ", round(length_cm, 2), " cm\n",
                         "Width: ", round(width_cm, 2), " cm\n",
                         "Depth: ", round(depth_cm, 2), " cm"),
      total = paste0(round(total_cm, 2), " cm")
    )
  })

  output$converted <- renderText({
    convertDimensions()$converted
  })

  output$total <- renderText({
    convertDimensions()$total
  })
})
