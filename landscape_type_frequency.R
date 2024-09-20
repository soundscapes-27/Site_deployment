## Deployment Sites
## Habitat Frequency in different threshold ranges for Eng, Scot, & Wales

library(dplyr)

## BBS sites

setwd("//ueahome/eressci18/wxu23vau/data/Documents/Deployment Sites/Scotland")
setwd("//ueahome/eressci18/wxu23vau/data/Documents/Deployment Sites/Wales")
list.files()

scotland<-read.csv("Scot_site_data2019.csv")
wales<-read.csv("Wales_site_data2019.csv")

dom_habitat <- wales %>% 
  group_by(dominant_habitat) %>% 
  summarise(habitat_sum = n())

low <- scotland %>% 
  filter(patch_density<4)
low_habitat_sum <- low %>% 
  group_by(dominant_habitat) %>% 
  summarise(habitat_sum = n())

medium <- scotland %>% 
  filter(patch_density>=5 & patch_density<7)
med_habitat_sum <- medium %>% 
  group_by(dominant_habitat) %>% 
  summarise(habitat_sum = n())

high <- scotland %>% 
  filter(patch_density>=7)
high_habitat_sum <- high %>% 
  group_by(dominant_habitat) %>% 
  summarise(habitat_sum = n())

#NE sites
ne<-read.csv("BBS_NE.csv")

ne_habitat <- ne %>% 
  group_by(dominant_habitat) %>% 
  summarise(habitat_sum = n())

low <- ne %>% 
  filter(patch_density<=5)
low_habitat_sum <- low %>% 
  group_by(dominant_habitat) %>% 
  summarise(habitat_sum = n())

medium <- ne %>% 
  filter(patch_density>=5 & patch_density<=10)
med_habitat_sum <- medium %>% 
  group_by(dominant_habitat) %>% 
  summarise(habitat_sum = n())

high <- ne %>% 
  filter(patch_density>=10)
high_habitat_sum <- high %>% 
  group_by(dominant_habitat) %>% 
  summarise(habitat_sum = n())

#SE Sites
se<-read.csv("BBS_SE.csv")

se_habitat <- se %>% 
  group_by(dominant_habitat) %>% 
  summarise(habitat_sum = n())

low <- se %>% 
  filter(patch_density<=5)
low_habitat_sum <- low %>% 
  group_by(dominant_habitat) %>% 
  summarise(habitat_sum = n())

medium <- se %>% 
  filter(patch_density>=5 & patch_density<=10)
med_habitat_sum <- medium %>% 
  group_by(dominant_habitat) %>% 
  summarise(habitat_sum = n())

high <- se %>% 
  filter(patch_density>=10)
high_habitat_sum <- high %>% 
  group_by(dominant_habitat) %>% 
  summarise(habitat_sum = n())