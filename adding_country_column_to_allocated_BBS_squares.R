## From list of all bbs squares - I want to add a new column for Wales and Scot sites

library(dplyr)

# Import Wales and Scotland Data
setwd("//ueahome/eressci18/wxu23vau/data/Documents/Deployment Sites/Wales")
list.files()
wales<-read.csv("Wales_site_data2019.csv")
setwd("//ueahome/eressci18/wxu23vau/data/Documents/Deployment Sites/Scotland")
list.files()
scotland<-read.csv("Scot_site_data2019.csv")

# Import list of allocated squares
setwd("//ueahome/eressci18/wxu23vau/data/Documents/Deployment Sites/Heywood")
list.files()
allocated<-read.csv("allocated_squares_y.csv")

# Create a new column 'country' and initialize with 'Unknown'
allocated <- allocated %>%
  mutate(country = case_when(
    sitename %in% wales$sitename ~ "Wales",   # If sitename is in Wales
    sitename %in% scotland$sitename ~ "Scotland", # If sitename is in Scotland
    TRUE ~ "England" # Default value if no match
  ))
