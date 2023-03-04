# Visualization Packages
################################################################################
# ggplot2, Plotly, Lattice,RGL, Dygraphs, Leaflet, #Highcharter, Patchwork,
# gganimate and ggridge
################################################################################
# In ggplot2 an AESTHETIC is a visual property of an object in your plot.
# Think of an aesthetic as a connection or mapping between a visual feature
# in your plot and a variable in your data.
################################################################################
# A GEOM refers to the geometric object used to represent your data. 
################################################################################
# Facets let you display smaller groups or subsets of your data. With facets, 
# you can create separate plots for all the variables in your dataset.
################################################################################
# the label and annotate functions let you customize your plot. You can add text
# like titles, subtitles and captions to communicate the purpose of your plot 
# or highlight important data.
################################################################################

#ggplot2_Part2
install.packages("ggplot2")
library(ggplot2)
library(palmerpenguins)

data(penguins)
View(penguins)

# relationship between body mass and flipper length in the three penguin species

ggplot(data=penguins) + geom_point(mapping= aes(x=flipper_length_mm,y=body_mass_g)) 

  
# The ggplot() function creates a coordinate system that 
# you can add layers to. The first argument of the 
# ggplot() function is the dataset to use in the plot. 
# In this case, it’s “penguins.”

# The geom_point() function uses points to create scatterplots,
# the geom_bar function uses bars to create bar charts, and so on.

# (mapping = aes(x = flipper_length_mm, y = body_mass_g)): Each geom function in 
# ggplot2 takes a mapping argument. This defines how variables in your dataset are
# mapped to visual properties. The mapping argument is always paired with the 
# aes() function. The x and y arguments of the aes() function specify which 
# variables to map to the x-axis and the y-axis of the coordinate system. In this
# case, you want to map the variable “flipper_length_mm” to the x-axis, and the 
# variable “body_mass_g” to the y-axis. 

