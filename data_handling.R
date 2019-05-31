library(tidyverse)
library(dplyr)
library(lubridate)
library(data.table)
#     read input data the file is big but
#     my memory can handle it easily so I did load all of the lines 
#     and then filtered

file<- "./household_power_consumption.txt"
data<- fread(file) %>% as_tibble 
str(data)
head(data$Date)

# Filter initial dataset and copy to new dataset with fix types
data<- filter(data, Date=="1/2/2007" | Date=="2/2/2007")
household<- mutate(data, Date_Time= dmy_hms(paste(Date,Time)),Date=NULL,Time=NULL) %>% select(Date_Time, 1:7)
household[,2:8]<- lapply(household[,2:8], as.numeric) %>% as_tibble
str(household)
