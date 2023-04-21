make_distillery_map <- function(data = whisky, region = "Highlands") {
  data %>%
    filter(Region == region) %>%
    leaflet() %>%
    addProviderTiles(provider = providers$OpenStreetMap) %>%
    addAwesomeMarkers(
      lng = ~lng,
      lat = ~lat,
      popup = ~Distillery,
      clusterOptions = markerClusterOptions(),
      icon = icons
      )
    
}