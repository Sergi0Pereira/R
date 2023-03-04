data("ToothGrowth") #load of the dataset
View(ToothGrowth) #Visualization of the dataset
install.packages("dplyr") #install dplyr packages
library(dplyr)

filtered_tg <- filter(ToothGrowth , dose==0.5)
View(filtered_tg)
filtered_tg <- arrange(filtered_tg,len)
View(filtered_tg)
filtered_tg <- ToothGrowth %>%
  filter(dose == 0.5) %>%
  arrange(len)
View(filtered_tg)

average_tooth_len <- ToothGrowth %>%
  filter(dose==0.5) %>%
  group_by(supp) %>%
 summarize (mean_len = mean(len,na.rm= T),.group="drop")
View(average_tooth_len)


# Here's an explanation of what each line of code does:

# filtered_tg <- filter(ToothGrowth , dose==0.5): This line filters the
# ToothGrowth dataset by selecting only the rows where the dose
# variable is equal to 0.5, and saves the result in a new data frame
# called filtered_tg.

# filtered_tg <- arrange(filtered_tg,len): This line arranges the rows 
# of the filtered_tg data frame in ascending order based on the values
# in the len column.

# filtered_tg <- ToothGrowth %>% filter(dose == 0.5) %>% arrange(len): 
# This line is equivalent to the first two lines of code combined.
# It uses the %>% operator, which is called a pipe, to apply the 
# filter and arrange functions to the ToothGrowth dataset in a single
# line of code. The resulting data frame is also saved as filtered_tg.

# View(filtered_tg): This line opens a new window with the filtered_tg
# data frame displayed as a table. The View function is a convenient 
# way to visualize the contents of a data frame.

# average_tooth_len <- ToothGrowth %>% filter(dose==0.5) %>% 
# group_by(supp) %>% summarize (mean_len = mean(len,na.rm= T),.
# group="drop"): 
# This line calculates the average tooth length for each supp group,
# where supp is another variable in the ToothGrowth dataset. It uses
# the %>% operator to pipe the filter function to select only the rows
# where the dose variable is equal to 0.5, and then pipes the group_by 
# function to group the data by the supp variable. Finally, 
# the summarize function is used to calculate the mean tooth 
# length for each group and save it as a new data frame called 
# average_tooth_len. The .group="drop" argument is used to drop 
# the grouping variable from the output, as it is not needed for 
# further analysis.

# View(average_tooth_len): This line opens a new window with the 
# average_tooth_len data frame displayed as a table.

# In summary, the code filters and arranges the ToothGrowth dataset
# to create a new data frame called filtered_tg, and then calculates 
# the average tooth length for each supp group where the dose variable 
# is equal to 0.5 and saves it as a new data frame called 
# average_tooth_len. Both data frames are displayed in new windows 
# using the View function. The summarize function is used to calculate 
# the mean tooth length for each group, with the .group="drop" argument
# used to drop the grouping variable from the output.
#The na.rm = T argument specifies that any missing values in the len 
#column should be removed before calculating the mean tooth length. This 
#ensures that the mean calculation is based only on the non-missing 
#values in the column.


