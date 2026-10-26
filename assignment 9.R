data("fifa_audience", package = "fivethirtyeight")
head(fifa_audience)

plot(fifa_audience$population_share, fifa_audience$tv_audience_share,
     main = "Base: TV Audience Share vs. Population Share",
     xlab = "Population Share",
     ylab = "TV Audience Share")

hist(fifa_audience$tv_audience_share,
     main = "Base: Distribution of TV Audience Share",
     xlab = "TV Audience Share")

library(lattice)

xyplot(tv_audience_share ~ population_share | factor(confederation),
       data = fifa_audience,
       main = "Lattice: TV Audience Share vs. Population Share by Confederation")

bwplot(tv_audience_share ~ factor(confederation),
       data = fifa_audience,
       main = "Lattice: TV Audience Share by Confederation")

library(ggplot2)

ggplot(fifa_audience, aes(x = population_share, y = tv_audience_share,
                          color = factor(confederation))) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: TV Audience Share vs. Population Share with Trend by Confederation")

ggplot(fifa_audience, aes(tv_audience_share)) +
  geom_histogram(binwidth = 1) +
  facet_wrap(~ confederation) +
  labs(title = "ggplot2: TV Audience Share Distribution by Confederation")