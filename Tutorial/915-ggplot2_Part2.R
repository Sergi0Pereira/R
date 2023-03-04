library(ggplot2)
library(palmerpenguins)
head(penguins)
ggplot(data=penguins) + geom_point(mapping= aes(x=bill_length_mm,y=bill_depth_mm))

#Funçoes : ggplot, geom_point , aes (aesthetics)
# the + sign serves to add layer to the plot(gráfico)
# Mapping means matching up a specific variable in your dataset with a specific aesthetic.

############################################################################################################
#Lesson2-Ggplot2

library(tidyverse)
library(ggplot2)

hotel_bookings <- read.csv("C:/Users/tpess/OneDrive/Ambiente de Trabalho/Google Data Analyst Docs/R/Activities/hotel_bookings.csv")

head(hotel_bookings)

colnames(hotel_bookings)

ggplot(data=hotel_bookings) +
  geom_point(mapping=aes(y=stays_in_week_nights,x=children))

library(palmerpenguins)

ggplot(data=penguins) + geom_point(mapping= aes(x=flipper_length_mm,y=body_mass_g, color=species)) 
# different colors define differente species

ggplot(data=penguins) +
  geom_point(mapping=aes(x=bill_length_mm, y= bill_depth_mm , shape= species, color=species, size=species))

#shape defines differents forms (trinagles, circle,square,ect..) for the different species
#size defines himself as sizing
#If we put the both together (shape and color), aes applies both

ggplot(data=penguins) +
  geom_point(mapping=aes(x=bill_length_mm, y= bill_depth_mm , alpha= species))

#alpha applies different black intensities for each specie 

ggplot(data=penguins) +
  geom_point(mapping=aes(x=bill_length_mm, y= bill_depth_mm),color="purple")
# if we want to change the color of all points we have to put it outside of the aes function