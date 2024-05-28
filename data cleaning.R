# here good for referencing packages
install.packages('here')
# load
library("here")

install.packages('skimr')
library("skimr")

# janitor for cleaning data

install.packages("janitor")
library("janitor")
install.packages("dplyr")
library("dplyr")
install.packages("palmerpenguins")
library("palmerpenguins")
skim(penguins)
skim_without_charts(penguins)
# get idea of whole datasets
glimpse(penguins)

#   get six rows
head(penguins)
# select all species
penguins %>% 
  select(-species)

# rename column
penguins %>% 
  rename(island_new=island)

# rename to lower case

rename_with(penguins, toupper)
clean_names(penguins)

