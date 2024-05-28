# Load the necessary packages
library(palmerpenguins)
library(dplyr)
library(tidyr)

# Load the penguins dataset
data("penguins")

# Drop rows with missing values
penguins_clean <- penguins %>%
  drop_na()

# Group by species and calculate the mean body mass
mean_body_mass <- penguins_clean %>%
  group_by(species) %>%
  summarize(mean_body_mass_g = mean(body_mass_g, na.rm = TRUE))

# View the mean body mass for each species
print(mean_body_mass)
