# simple cleaning script.
# Clean up and prepare data for app and write to new file

library(readr)
library(dplyr)
library(magrittr)

# read raw data
whisky <- read_csv("data/raw_data/whisky.csv")

# cleaning steps (change some names)
whisky %>% 
  select(Distillery, Region, Latitude, Longitude) %>%
  rename(lat = Latitude, lng = Longitude) %>%
  # write to clean data
  write_csv("data/clean_data/whisky.csv")