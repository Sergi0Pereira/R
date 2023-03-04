#ggplot2_Part3

library(ggplot2)
library(palmerpenguins)

#We can have different geom´s like:
#geom_point
#geom_bar
#geom_line

ggplot(data=penguins) + geom_smooth(mapping = aes(x=flipper_length_mm, y=body_mass_g, linetype=species, color =species))

# geom_smooth draws one line showing the tendency. Useful to show trends in our data
# linetype for differ the different types of penguins
#we can combine geom functions like in the example below:

ggplot(data=penguins) + 
  geom_smooth(mapping = aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g))

#Here we have the the scatterplot and the line geom´s combine.                

ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g))
ggplot(data=penguins) + geom_jitter(mapping = aes(x=flipper_length_mm, y=body_mass_g))

#t adds a small amount of random variation to the location of each point, and is 
# a useful way of handling overplotting caused by discreteness in smaller datasets

ggplot(data=diamonds) + geom_bar(mapping = aes(x=cut, fill=cut))
ggplot(data=diamonds) + geom_bar(mapping = aes(x=cut, fill=clarity))


#geom_bar creates bar in this specific case in the x-axis. the fill aes component
# fill with colors dependeding on variable that you you want to evalute