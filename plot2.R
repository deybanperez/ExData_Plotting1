#Loading and Preprocessing dataset
source("setting_up.R")
#Plot 2
#Opening device
png(filename = "plot2.png")
#Plotting
plot(data$Date, data$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power (kilowatts)")
#Closing device
dev.off()