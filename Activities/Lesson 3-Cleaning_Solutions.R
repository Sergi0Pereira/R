booking_df <- read.csv("hotel_bookings.csv")

View(booking_df)

head(booking_df)

str(booking_df)

glimpse(booking_df)

colnames(booking_df)

skim_without_charts(booking_df) # ideal for seeing all the characteristics of the
                                # data frame

trimmed_df <- booking_df %>% 
          select ("hotel",'is_canceled', 'lead_time') %>%
          rename(EuroStars_Porto = hotel, Canceled = is_canceled,Time=lead_time)
trimmed_df

unite_date_df <- booking_df %>%
         select(hotel,arrival_date_day_of_month,arrival_date_month,arrival_date_year) %>%
          unite(arrival_day_month_year,c(arrival_date_day_of_month,arrival_date_month,
                                         arrival_date_year),sep="/") # sep para separar as variaveis
head(unite_date_df)

total_clients_df <- booking_df %>%
        mutate(total_clients = babies+children+adults) %>%
        select(babies,children,adults,total_clients)
View(total_clients_df)

head(booking_df)
summary_statistics <- booking_df %>%
  summarize(number_canceled = sum(is_canceled), 
            average_lead_time= mean(lead_time)) 
head(summary_statistics)
