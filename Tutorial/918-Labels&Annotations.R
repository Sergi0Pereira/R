# Labels and Annotations
library(tidyverse)
ggplot(data=penguins, aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_point(aes(color=species))+
  labs(title="Palmer Penguins Body Mass and Flipper Length",subtitle = "By Gender and Sex",
       caption = "Dr. Gorman - 2007-2009")+
  annotate("text", x=222, y=4100, label="Gentoo males are the largest!",
           fontface="bold", size=5, color="blue", angle=45)


mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)


ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) + 
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       subtitle=paste0("Data from: ", mindate, " to ", maxdate),
       x="Market Segment",
       y="Number of Bookings")

       
  ggsave("teste.png")
  
