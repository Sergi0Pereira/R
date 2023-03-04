install.packages("here")
library("here")

install.packages("skimr")
library("skimr")

install.packages("janitor")
library("janitor")

install.packages("dplyr")
library("dplyr")

install.packages("palmerpenguins")
library("palmerpenguins")

skim_without_charts(penguins)

head(penguins)

str(penguins)

penguins %>% 
  select(species) # select command

penguins %>% 
  rename (Especies = species) # rename a column

rename_with(penguins, toupper) # coloca o nome das colunas em maiusculo

clean_names(penguins) # ensures that was only characters , numbers and underscores in the names
