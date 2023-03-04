library(tidyverse)

skim_without_charts(penguins)

penguins %>%
  arrange(body_mass_g) # do a sort by in ascending order by default.If we want
                       # that we doesin descending order we put a minus before
                       # the variable as we can see below
penguins2 <- penguins %>%
   arrange(-body_mass_g)

View(penguins2)

View(penguins)

mean_bill_len_island <- penguins %>%
  group_by(island) %>% #group by island
  drop_na() %>% #drop of non-atribbuted values
  summarize(mean_bill_length_mm = mean(bill_length_mm)) # creation of a new column
                                                        # with the mean of the bill_length

mean_bill_len_island

max_bill_len_island <- penguins %>%
  group_by (island) %>%
  drop_na %>%
  summarize(max_bill_length_mm = max(bill_length_mm))

max_bill_len_island

max_and_min_bill_len_island <- penguins %>%
  group_by (island,species) %>%
  drop_na %>%
  summarize(max_bill_length_mm = max(bill_length_mm),
            min_bill_length_mm= min(bill_length_mm),
            mean_bill_len_mm = mean(bill_length_mm))

max_and_min_bill_len_island

max_and_min_bill_len_island %>% filter(species == "Adelie") #applies a filter

penguins %>% filter(species == "Adelie")
 
         
