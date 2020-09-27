# Load the tidyverse, which includes ggplot2

library('tidyverse')

# Import CSV as tibble
a <- read_csv("C:/Users/david/Documents/GitHub/Chart_Comparisons/Seeded_Values_for_Comparison_Project.csv", col_names = FALSE)

# Scatterplot
ggplot(data = a) +
  geom_point(mapping = aes(x = x1, y = x2))
