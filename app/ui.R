# simple ui with one input and one large output
ui <- fluidPage(
  # loads stylesheet from www folder
  theme = "stylesheet/styles.css",
  titlePanel("Whisky Distillery Locations"),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        "region",
        "Region: ",
        choices = regions
      )
    ),
    mainPanel(
      leafletOutput("distillery_map")
    )
  )
)