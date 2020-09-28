# Load the tidyverse, which includes ggplot2

library('tidyverse')

# Import CSV as tibble
a <- read_csv("C:/Users/david/Documents/GitHub/Chart_Comparisons/Seeded_Values_for_Comparison_Project.csv", col_names = FALSE)
b <- as.data.frame(a)
b <- t(b)
b <- as.tibble(b)

# Scatterplot
ggplot(data = a) +
  geom_point(mapping = aes(x = X1, y = X2), color = 'blue') +
  geom_point(mapping = aes(x = X1, y = X3, color = 'red'))

ggplot2::mpg
