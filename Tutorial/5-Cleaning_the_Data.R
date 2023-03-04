# Cleaning the Data

diamonds<-rename(diamonds, carat = carat_new , color = new_color) # rename function. You have to indicate the
#Dataframe, new_variable_name = old_variable_name. You can rename more than one variable
#inside one function.
names(diamonds) # show the column names
summarize(diamonds, mean_carat=mean(carat)) # summarize the mean of a given variable# 

head(diamonds)
#`head()` function, which displays the columns and the first several rows of data.

#The `str()` and `glimpse()` functions will both return summaries of each column
#in your data arranged horizontally. 
str(diamonds)
glimpse(diamonds)

colnames(diamonds) # function that returns the names of the columns
# Visualizating Data
#One of the most commonly used visualization packages is the `ggplot2` package, 
#which is loaded automatically when you install and load `tidyverse.` The `diamonds`
#dataset that you have been using so far is a `ggplot2` dataset.

ggplot(data = diamonds, aes(x = carat, y= price, color=cut)) + geom_point() + facet_wrap(~cut)
