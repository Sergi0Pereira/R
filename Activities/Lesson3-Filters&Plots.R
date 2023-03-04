#Lesson 3: Filters and Plots'

colnames(hotel_bookings)

ggplot(data=hotel_bookings) +
  geom_bar(mapping= aes(x=hotel,fill=market_segment)) 

ggplot(data=hotel_bookings) +
  geom_bar(mapping= aes(x=hotel)) +
  facet_wrap(~market_segment)

#Filters

install.packages('tidyverse')
library(tidyverse)


onlineta_cityhotel <- filter(hotel_bookings,
         (hotel == "City Hotel" & 
           hotel_bookings$market_segment=="Online TA"))
#or

onlineta_cityhotelv2 <- hotel_bookings %>%
  filter(hotel== "City Hotel" & market_segment== "Online TA") 
  
View(onlineta_cityhotel)
View(onlineta_cityhotelv2)


ggplot(data=onlineta_cityhotel) +
  geom_point(mapping = aes(x=lead_time,y=children))  



  

  