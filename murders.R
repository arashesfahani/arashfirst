library(dplyr)
library(tidyverse)
library(dslabs)
data("murders")
murders$state
table(murders$region)
class(murders$region)
hist(murders$total)
