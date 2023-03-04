install.packages("SimDesign")
library(SimDesign)

actual_sales <- c(129,167,180,199)
predicted_sales <- c(120,180,170,200)


bias(actual_sales,predicted_sales) # the bias function of the SimDesign package
# calculates difference between a given values and another.

sample(actual_sales) # randomize the order of the items for controlling bias

#####################################################################################################
# Lesson_3-Change
install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")

library(tidyverse)
library(skimr)
library(janitor)

hotel_bookings <- read.csv("C:/Users/tpess/OneDrive/Ambiente de Trabalho/Google Data Analyst Docs/R/Activities/hotel_bookings.csv")

skim_without_charts(hotel_bookings) 

arrange(hotel_bookings,lead_time)

hotel_bookings_v2 <- 
  arrange(hotel_bookings,desc(lead_time))

max(hotel_bookings_v2$lead_time)
min(hotel_bookings_v2$lead_time)

mean(hotel_bookings$lead_time)

city_hotel <- filter(hotel_bookings_v2,hotel_bookings_v2$hotel=="City Hotel")
city_hotel_mean <- mean(city_hotel$lead_time)

city_hotel
city_hotel_mean  

resumo <- hotel_bookings %>%
  group_by (hotel) %>%
  summarise(max_lead_time=max(hotel_bookings$lead_time),
                    min_lead_time=min(hotel_bookings$lead_time))
resumo
tibble(hotel_bookings)
rename_with(hotel_bookings,tolower)

head(hotel_bookings)
mutate(hotel_bookings,novo= lead_time*2)
