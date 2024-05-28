library("tidyverse")
install.packages("dplyr")
install.packages("palmerpenguins")
install.packages("tidyr")
library("palmerpenguins")
library(dplyr)
# Load the dataset
data("penguins")
head(penguins)
# arrange data ascending
penguins %>% arrange(bill_length_mm)

# arrange data descending 
penguins %>% arrange(-bill_length_mm)

# remain with male penguins
penguins %>% filter(sex == "male")


# save dataset
penguins2 <- penguins %>% arrange(-bill_length_mm)
View(head(penguins2))
library(tidyr)
# summary of penguins 
mean <- penguins %>% group_by(island) %>% drop_na() %>%  summarise(mean_bill_length_mm =mean(bill_length_mm))

# max

mean <- penguins %>% group_by(island) %>% drop_na() %>%  summarise(mean_bill_length_mm =max(bill_length_mm))



