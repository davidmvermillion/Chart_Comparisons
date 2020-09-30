# Load the tidyverse, which includes ggplot2

library('tidyverse')

names <- c("Datapoint", "Series1","Series2")

# Import CSV as tibble
a <- read_csv("C:/Users/david/Documents/GitHub/Chart_Comparisons/Seeded_Values_for_Comparison_Project.csv", col_names = names)

# Scatterplot
# Hint to finally get the variables treated correctly from here
# https://www.sixhat.net/how-to-plot-multpile-data-series-with-ggplot.html
# Hint for fitline
# http://www.sthda.com/english/wiki/ggplot2-scatter-plots-quick-start-guide-r-software-and-data-visualization
ggplot(a, aes(Datapoint, y = value, color = variable)) +
  geom_point(aes(y = Series1, col = 'Series1')) +
  geom_point(aes(y = Series2, col = 'Series2')) +
  xlab('Datapoint') +
  ylab('Datapoint Value')

#