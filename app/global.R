# packages needed for app
library(leaflet)
library(readr)
library(dplyr)
library(magrittr)

# functions needed for app
source("R/map_maker.R")

# data
whisky <- read_csv("data/clean_data/whisky.csv")

# intermediate variables
regions <- sort(unique(whisky$Region))

icons <- awesomeIcons(
  icon = 'industry',
  iconColor = 'orange',
  library = "fa",
  markerColor = "white"
)