# r-programming-assignments
Youssef Aboyoussef
LIS 4370
Repository for R Programming Assignments 

Assignment 2

Blog post: https://yaboyousf.blogspot.com/2026/09/r-studios-assignment-2.html

Corrected myMean function:

```
myMean <- function(assignment2) {return(sum(assignment2) / length(assignment2))}
```

Assignment 3 

https://yaboyousf.blogspot.com/2026/09/assignment-3-polls.html

Poll Script 

```
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll   <- c(  4,      62,      51,    21,      2,        14,       15)
CBS_poll   <- c( 12,      75,      43,    19,      1,        21,       19)
df_polls <- data.frame(Name, ABC_poll, CBS_poll)
str(df_polls)
head(df_polls)
mean(df_polls$ABC_poll)
median(df_polls$CBS_poll)
range(df_polls[, c("ABC_poll","CBS_poll")])
df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_poll
df_polls
install.packages("ggplot2")  # only needed once
install.packages("tidyr")    # only needed once
library(ggplot2)
library(tidyr)
df_long <- pivot_longer(df_polls, 
                        cols = c(ABC_poll, CBS_poll), 
                        names_to = "Poll", 
                        values_to = "Value")
```
Assignment 4

https://yaboyousf.blogspot.com/2026/09/assignment-4.html

```
Frequency     <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BloodPressure <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
FirstAssess   <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)    # bad=1, good=0
SecondAssess  <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)    # low=0, high=1
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)    # low=0, high=1
df_hosp <- data.frame(
  Frequency, BloodPressure, FirstAssess,
  SecondAssess, FinalDecision, stringsAsFactors = FALSE
)
summary(df_hosp)
df_hosp <- na.omit(df_hosp)
df_hosp
boxplot(
  BloodPressure ~ FirstAssess,
  data = df_hosp,
  names = c("Good","Bad"),
  ylab = "Blood Pressure",
  main = "BP by First MD Assessment"
)

boxplot(
  BloodPressure ~ SecondAssess,
  data = df_hosp,
  names = c("Low","High"),
  ylab = "Blood Pressure",
  main = "BP by Second MD Assessment"
)

boxplot(
  BloodPressure ~ FinalDecision,
  data = df_hosp,
  names = c("Low","High"),
  ylab = "Blood Pressure",
  main = "BP by Final Decision"
)
hist(
  df_hosp$Frequency,
  breaks = seq(0, 1, by = 0.1),
  xlab = "Visit Frequency",
  main = "Histogram of Visit Frequency"
)

hist(
  df_hosp$BloodPressure,
  breaks = 8,
  xlab = "Blood Pressure",
  main = "Histogram of Blood Pressure"
)
```
