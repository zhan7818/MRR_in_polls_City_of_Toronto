#### Preamble ####
# Purpose: Download data from opendatatoronto
# Author: Tian Yi Zhang
# Data: 5 February 2022
# Contact: psyminette.zhang@mail.utoronto.ca

#### Workspace setup ####
library(tidyverse)
library(opendatatoronto)

#### Data download ####
# Data is from https://open.toronto.ca/dataset/polls-conducted-by-the-city/

# Datasets are grouped into packages that have multiple datasets
# which are also referred to as 'resources
# that are relevant to that topic. We obtain the package for the
# dataset using a unique key obtained from the datasets webpapge
# (see above).

# Get data
# First line gets all resources for this package using the 
# associated unique key.
# Second line filters for the resource stored in csv format.
# Third line, get_resource(), will load the first resource by default.
# Since we have filtered to only one resource, it will load the desired one.
# If there is more than one resource then we need to add 
# filter(row_number()==1).
polls_conducted_by_city <-
  list_package_resources("7bce9bf4-be5c-4261-af01-abfbc3510309") %>%
  filter(tolower(format) %in% c('csv', 'geojson')) %>%
  get_resource()
         
#### Save data ####
write_csv(polls_conducted_by_city, "inputs/data/polls_conducted_by_city.csv")


         