library(tidyverse)
data("diamonds")
View(diamonds)
as_tibble(diamonds) # Show the first ten rows of an dataframe (table)

data(mtcars)

readr_example()
# To list the sample files, you can run the readr_example() function with no arguments

read_csv(readr_example("mtcars.csv"))

library(readxl)
# To import spreadsheet data into R, you can use the readxl package

readxl_example()

excel_sheets(readxl_example("type-me.xlsx")) #​excel_sheets() function to list 
# the names of the individual sheets.

# You can also specify a sheet by name or number. Just type “sheet =” followed by the
# name or number of the sheet. For example,you can use the sheet named “numeric_coercion”
# from the list above.

read_excel(readxl_example("type-me.xlsx"), sheet = "numeric_coercion")

library(readxl)

ren_jan <- read_excel("C:/Users/tpess/OneDrive/Rendimentos 2023.xlsx", sheet = "Janeiro")
ren_jan_clean <- subset(ren_jan, select = !apply(is.na(ren_jan), 2, all)) # remove all the cols
# that only contains na
ren_jan
ren_jan_clean
