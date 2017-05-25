#Loading and Preprocessing dataset
source("setting_up.R")
#Plot 4
#Opening device
png(filename = "plot4.png")
#Splitting screen in two rows and two columns
par(mfrow = c(2,2))
#Plot 4.1
plot(data$Date, data$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power")
#Plot 4.2
plot(data$Date, data$Voltage, type = "l",
     xlab = "datetime", ylab = "Voltage")

#Plot 4.3
#Plotting main canvas and Sub_metering_1
plot(data$Date, data$Sub_metering_1, type = "l",
     ylab = "Energy sub metering", xlab = "")
#Plotting Sub_metering_2
lines(data$Date, data$Sub_metering_2, col = "red")
#Plotting Sub_metering_3
lines(data$Date, data$Sub_metering_3, col = "blue")
#Setting up legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = c(1,1), border = NULL, bty = "n")

#Plot 4.4
plot(data$Date, data$Global_reactive_power, type = "l",
     xlab = "datetime", ylab = "Global_reactive_power")
#Closing device
dev.off()