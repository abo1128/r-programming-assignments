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
