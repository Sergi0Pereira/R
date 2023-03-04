library(palmerpenguins)
library(ggplot2)

# facet_wrap A facet is a side or section of an object, like the sides of a
# gemstone. Facets show different sides of your data by placing each subset on 
# its own plot. Faceting can help you discover new patterns in your data and 
# focus on relationships between different variables.
  
graph1<-ggplot(data=penguins, aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_point(aes(color=species))+
  facet_wrap(~species)

#or

ggplot(data=penguins) +
  geom_point(aes(x=flipper_length_mm, y=body_mass_g,color=species))+
  facet_wrap(~species)

#The aes can exist inside the data for define the axis on inside the geom_point

# facet_gridis most useful when you have two discrete variables, and all
# combinations of the variables exist in the data.

ggplot(data=penguins, aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_point(aes(color=species))+
  facet_grid(species~sex)


