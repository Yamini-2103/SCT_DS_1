# -------------------------------------------
# Sample Dataset Inspired by World Bank Population
# -------------------------------------------

# Sample country population values (in millions)
population_data <- c(
  1440, 1393, 331, 273, 225, 213, 170, 145, 126, 83,
  67, 60, 55, 47, 45, 100, 36, 33, 28, 26, 799, 630, 1400, 1100
)

# Convert to a dataframe
df <- data.frame(Population = population_data)

# -------------------------------------------
# Histogram with Labels (ggplot2)
# -------------------------------------------

library(ggplot2)

ggplot(df, aes(x = Population)) +
  geom_histogram(
    bins = 5,
    fill = "purple",
    color = "black"
  ) +
  geom_text(
    stat = "bin",
    bins = 5,
    aes(label = ..count..),
    vjust = -0.4,
    size = 4
  ) +
  labs(
    title = "Histogram of Country Populations (Sample World Bank Data)",
    x = "Population (Millions)",
    y = "Number of Countries"
  ) +
  theme_minimal(base_size = 14)

