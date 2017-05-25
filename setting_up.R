#Cleaning environment
rm(list = ls())
#Reading dataset
data = read.csv(file = unz("household_power_consumption.zip", "household_power_consumption.txt"), header = TRUE, sep = ";", na.strings = "?")
#Converting Date to R date format
data$Date = as.Date(x = data$Date, format = "%d/%m/%Y")
#Making a subset
data = subset(data,(Date >= "2007-02-01") & (Date <="2007-02-02"))
#Checking complete cases
sum(complete.cases(data)) == nrow(data)
#concatenating dates
datetime = with(data, paste(Date, Time))
#Convert strings to a date serie
datetime = strptime(datetime, format = "%Y-%m-%d %H:%M")
#Add the new column to the dataset
data$Date = datetime
#Deleting time column
data$Time = NULL