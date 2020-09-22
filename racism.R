library(tidyverse)
library(gmodels)
racism <-read_csv('C:\\Users\\Arash\\Desktop\\R\\moharajerne afghan.1128.finalMISSING.csv') 
view(racism)
str(racism)
view(racism)
j1<- table(racism$q22, racism$q19, useNA = 'ifany')
options(digits=1)
prop.table(j1,2)
summary(racism$q22)
class(racism$q10)
racism$q22 <- as.factor(racism$q22)
class(racism$q22)
levels(racism$q22)
levels(racism$q22)[1] <- 'male'
levels(racism$q22)[2] <- 'female'
names(racism)[names(racism)=='q22'] <- 'gender'
names(racism)[names(racism)=='q23'] <- 'age'
names(racism)[names(racism)=='q24'] <- 'region'
names(racism)
j1<- table(racism$gender, racism$q19, useNA = 'ifany')
prop.table(j1,1)
prop.table(j1,2)
ftable(racism$gender, racism$q25,racism$q19)
CrossTable(racism$q25,racism$q19, expected = FALSE, prop.r=TRUE, prop.t=FALSE,
           format="SPSS", prop.chi=FALSE)

