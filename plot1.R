#Loading and Preprocessing dataset
source("setting_up.R")
#Plot 1
#Opening device
png(filename = "plot1.png")
#Plotting
with(data = data, hist(Global_active_power, col = "red",
                       xlab = "Global Active Power (kilowatts)", ylab = "Frequency",
                       main = "Global Active Power"))
#Closing device
dev.off()