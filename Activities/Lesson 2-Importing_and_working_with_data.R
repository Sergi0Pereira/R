library(readr)
library(dplyr)
avocado <- read_csv("Activities/avocado.csv")

View(avocado)

head(avocado)

str(avocado)

colnames(avocado)

avocado_adr <- select(avocado,"region", "AveragePrice", "Small Bags") 
# avocado_adr receives all the fields in the select statment

View(avocado_adr)

######################################################################################################

hotel_bookings <- read_csv("C:/Users/tpess/OneDrive/Ambiente de Trabalho/Google Data Analyst Docs/R/Activities/hotel_bookings.csv")
head(hotel_bookings)
str(hotel_bookings)
colnames(hotel_bookings)

new_df <- select(hotel_bookings,"adr",adults) #adr means average daily rate
new_df
mutate(new_df,total= adr/adults)


