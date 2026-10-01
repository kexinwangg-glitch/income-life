# Load data
gap <- read.csv("data/gapminder.csv")

# Keep observations from 2007
gap2007 <- subset(gap, year == 2007)

pdf("output/figure1.pdf")

plot(
  gap2007$gdpPercap,
  gap2007$lifeExp,
  xlab = "GDP per capita",
  ylab = "Life expectancy",
  main = "Income and Life Expectancy, 2007"
)

dev.off()

