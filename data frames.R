# install packages
install.packages("tidyverse")
# load library ggplot2
library(ggplot2)
# load our data
data("diamonds")
# load/view data of given kind
View(diamonds)
# view first 6  rows of data
head(diamonds)

# see structure of the data
str(diamonds)

# view column names

colnames(diamonds)

# load library
library(tidyverse)

# add columns to table/data frame

mutate(diamonds, new_column=carat*2)





