# Lesson 3: Aesthetics and Visualizations
library(ggplot2)

hotel_bookings <- read.csv("C:/Users/tpess/OneDrive/Ambiente de Trabalho/Google Data Analyst Docs/R/Activities/hotel_bookings.csv")

colnames(hotel_bookings)

ggplot(data=hotel_bookings) + 
  geom_bar( mapping = aes(x=distribution_channel)) 


ggplot(data=hotel_bookings) + 
  geom_bar( mapping = aes(x=distribution_channel,fill=deposit_type))


ggplot(data=hotel_bookings) + 
  geom_bar( mapping = aes(x=distribution_channel,fill=market_segment)) 


## Step 6: Facets galore

ggplot(data=hotel_bookings) + 
  geom_bar( mapping = aes(x=distribution_channel,fill=market_segment)) +
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle= 45, size = 9))

ggplot(data=hotel_bookings) + 
  geom_bar( mapping = aes(x=distribution_channel,fill=market_segment)) +
  facet_wrap(~market_segment) +
  theme(axis.text.x = element_text(angle= 45, size = 9))

ggplot(data=hotel_bookings) + 
  geom_bar( mapping = aes(x=distribution_channel,fill=market_segment)) +
  facet_wrap(~deposit_type~market_segment) +
  theme(axis.text.x = element_text(angle= 45, size = 9))
