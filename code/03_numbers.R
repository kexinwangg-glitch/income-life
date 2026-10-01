# Load data
gap <- read.csv("data/gapminder.csv")

# Keep observations from 2007
gap2007 <- subset(gap, year == 2007)

# Calculate key numbers
mean_lifeexp <- mean(gap2007$lifeExp)
mean_gdp <- mean(gap2007$gdpPercap)

mean_lifeexp
mean_gdp

writeLines(
  c(
    paste("Mean life expectancy:", mean_lifeexp),
    paste("Mean GDP per capita:", mean_gdp)
  ),
  "output/numbers.txt"
)
