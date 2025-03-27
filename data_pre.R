library(lubridate)#data

#importing
dataset = read.csv('sales.csv', sep=";")

#data
class(dataset$date)
dataset$date <- as.Date(dataset$date, format="%Y-%m-%d")
class(dataset$date)

#missing data, true se for na
sapply(dataset, function(x) sum(is.na(x)))

