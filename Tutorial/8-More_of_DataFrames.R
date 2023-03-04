#Data Frames
library("ggplot2")
data("diamonds")
View(diamonds)
head(diamonds) # show the first six rows of a data frame
str(diamonds) # show the properties of a data frame columns
colnames(diamonds) # show the names of the columns
library(tidyverse)
mutate(diamonds, carat_2 = carat*100) #creates a new column with the name carat_2
