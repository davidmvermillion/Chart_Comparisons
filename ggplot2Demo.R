# Load the tidyverse, which includes ggplot2

library('tidyverse')

names <- c("Datapoint", "Series1","Series2")

# Import CSV as tibble
a <- read_csv("C:/Users/david/Documents/GitHub/Chart_Comparisons/Seeded_Values_for_Comparison_Project.csv", col_names = names)
a <- as.numeric(a)
b <- pivot_wider(a)



# Scatterplot
ggplot(data = a) +
  geom_point(mapping = aes(x = Datapoint, y = Series1), color = 'blue') #+
  #geom_point(mapping = aes(x = Datapoint, y = Series2, color = 'red'))

ggplot2::mpg
