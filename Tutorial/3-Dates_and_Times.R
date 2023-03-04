#Dates and Times

library(tidyverse)
library(lubridate) # it´s part of tidyverse

#In R, there are three types of data that refer to an instant in time:

    # A date ("2016-08-16")
    # A time within a day (“20:11:59 UTC")
    # And a date-time. This is a date plus a time ("2018-03-31 18:15:48 UTC")"

today() # retorna a data atual
now() #retorna a data e hora atuais

#R creates dates in the standard yyyy-mm-dd format by default. 
ymd("2023-02-27")
mdy("02-27-2023")
dmy("27-02-2023")
#These functions also take unquoted numbers and convert them into the yyyy-mm-dd format.
sem_aspas<-ymd(20230227)
print(sem_aspas)

#To create a date-time from a date, add an underscore and one or more of the letters 
#h, m, and s (hours, minutes, seconds) to the name of the function

data_hora <- dmy_hms(27022023151800)
# ou data_hora <- dmy_hms("27-02-2023 15:18:00)
print(data_hora)

data_actual <- as_datetime(now()) #as_datetime faz o que o proprio nome indica
print(data_actual)
