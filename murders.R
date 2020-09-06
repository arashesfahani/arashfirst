library(dplyr)
library(tidyverse)
library(dslabs)
data("murders")
murders$state
table(murders$region)
class(murders$region)
hist(murders$total)
rate2 <-murders$total/murders$population*100000
rate2
