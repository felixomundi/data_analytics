# Load the tidyr package
library(tidyr)
library(dplyr)

# Create the data frame
id <- c(1:4)
name <- c("felix nyagaka", "keino omundi", "gaka meni", "faka ombuya")
title <- c("developer", "tutor", "designer", "teacher")
employee <- data.frame(id, name, title, stringsAsFactors = FALSE)

# Print the original data frame
print(employee)

# Ensure there are no leading or trailing spaces
employee <- employee %>% mutate(name = trimws(name))

# Separate the name column into first_name and last_name
employee_separated <- separate(employee, name, into = c('first_name', 'last_name'), sep = ' ', extra = "merge", fill = "right")

# Print the modified data frame
print(employee_separated)

