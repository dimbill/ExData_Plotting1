source("./data_handling.R")
png(file= "plot1.png")

hist(household$Global_active_power, col="red",xlab = "Global active power (kilowats)", main= "Global Active Power")
dev.off()

