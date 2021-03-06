source("./data_handling.R")

png(file= "plot4.png", width = 480,height = 480)

par(mfrow=c(2,2))

hist(household$Global_active_power, col="red",xlab = "Global active power (kilowats)", main= "Global Active Power")

plot(household$Global_active_power~household$Date_Time,
     ylab = "Global active power (kilowatts)",type= 'l')

plot(household$Sub_metering_1~household$Date_Time, type= 'l',ylab= "Energy Submetering", xlab="")
lines(household$Sub_metering_2~household$Date_Time, col='red')
lines(household$Sub_metering_3~household$Date_Time, col='blue')
#legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
#       lty = 'solid', col = c("black","red", "blue"),)
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"), lty = 1, cex = 0.3, lwd=1 )

plot(household$Global_reactive_power~household$Date_Time,
     ylab = "Global reactive power (kilowatts)",type= 'l')

dev.off()