# Load the tidyverse, which includes ggplot2

library('tidyverse')
library('ggpmisc')

names <- c("Datapoint", "Series1","Series2")

# Import CSV as tibble
a <- read_csv("C:/Users/david/Documents/GitHub/Chart_Comparisons/Seeded_Values_for_Comparison_Project.csv", col_names = names)

# Scatterplot
# Hint to finally get the variables treated correctly from here
# https://www.sixhat.net/how-to-plot-multpile-data-series-with-ggplot.html
# Hint for fitline
# http://www.sthda.com/english/wiki/ggplot2-scatter-plots-quick-start-guide-r-software-and-data-visualization
# Tried hints from here
# https://stackoverflow.com/questions/31410230/multiple-linear-regression-for-a-dataset-in-r-with-ggplot2
# and from here
# http://www.cookbook-r.com/Graphs/Scatterplots_(ggplot2)/
# Finally figured it out with hint from Duck
# https://stackoverflow.com/questions/64213270/how-do-i-make-a-linear-fit-line-in-r-with-ggplot2-for-multiple-y-series/64213351#64213351
# Found package ggpmisc for linear fit equation from this conversation
# https://stackoverflow.com/questions/7549694/add-regression-line-equation-and-r2-on-graph
my.formula <- y ~ x # Required for linear equation listing
a %>% pivot_longer(-Datapoint) %>%
  ggplot(aes(x = Datapoint, y = value, color = name, group = name)) +                                             # Setup the background
  geom_point() +                                                                                                  # Scatterplot
  geom_smooth(method = lm, se = FALSE) +                                                                          # Linear fit
  labs(title = 'Randomized Data Points', xlab = 'Datapoint', ylab = 'Datapoint Value') +                          # Labels
  stat_poly_eq(formula = my.formula, aes(label = paste(..eq.label.., ..rr.label.., sep = "~~~")), parse = TRUE)   # Equation for linear fit