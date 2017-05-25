#Loading and Preprocessing dataset
source("setting_up.R")
#Plot 3
#Opening device
png(filename = "plot3.png")
#Ploting main canvas and Sub_metering_1
plot(data$Date, data$Sub_metering_1, type = "l",
     ylab = "Energy sub metering", xlab = "")
#Ploting Sub_metering_2
lines(data$Date, data$Sub_metering_2, col = "red")
#Ploting Sub_metering_3
lines(data$Date, data$Sub_metering_3, col = "blue")
#Setting up the legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = c(1,1), border = NULL)
#Closing device
dev.off()