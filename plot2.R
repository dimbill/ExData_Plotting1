png(file= "plot2.png")

plot(household$Global_active_power~household$Date_Time,
     ylab = "Global active power (kilowatts)",type= 'l')
dev.off()

