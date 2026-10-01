# Load data
gap <- read.csv("data/gapminder.csv")

# Create summary table
table1 <- aggregate(
  cbind(lifeExp, gdpPercap) ~ continent,
  data = gap,
  FUN = mean
)

table1

write.csv(
  table1,
  "output/table1.csv",
  row.names = FALSE
)
