source("./data_handling.R")
png(file= "plot3.png")

plot(household$Sub_metering_1~household$Date_Time, type= 'l',ylab= "Energy Submetering", xlab="")
lines(household$Sub_metering_2~household$Date_Time, col='red')
lines(household$Sub_metering_3~household$Date_Time, col='blue')
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty = 'solid', col = c("black","red", "blue"))

dev.off()