# Creation of a Data Frame

Id <- c(1:4)

Names <- c("Sérgio Pereira","Mario Moreira","Ricardo Teixeira","Filipa Leite")

Job <- c("Programmer","Personal Trainer","Eletrician","HairDresser")

us <- data.frame(Id,Names,Job)

head(us)

nomes_separados <- separate(us,Names,into=c("Nome","Apelido"),sep=" ")
nomes_unidos    <- unite (nomes_separados,"Nome Completo",Nome,Apelido,sep = " ")

nomes_separados
nomes_unidos

library(palmerpenguins)
data("penguins")

penguins %>%
  mutate(Mass_Kg = body_mass_g/1000, flipper_length = flipper_length_mm/1000 ) %>%
  drop_na()  

penguins %>%
  mutate(Mass_Kg = body_mass_g/1000, flipper_length = flipper_length_mm/1000 ) %>%
  drop_na()    

