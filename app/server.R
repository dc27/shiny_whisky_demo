server <- function(input, output) {
  
  output$distillery_map <- renderLeaflet({
    make_distillery_map(whisky, input$region)
  })
}