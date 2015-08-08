## EDA #031 - Course Project 1 - Household Poer Consumption
## T. Debus                                       Aug. 12th 2015
##
## Part 1 - Loading Data

HPC <- read.csv("household_power_consumption.csv", sep=";", dec=".", na.strings = "?")
plot_dat <- subset(HPC, subset=Date %in% c("1/7/2007", "2/7/2007"))

## Plot 3

combi_dt <- as.POSIXct(paste(plot_dat$Date, plot_dat$Time), format="%d/%m/%Y %H:%M:%S")
plot3_data <- data.frame(combi_dt, plot_dat$Sub_metering_1, plot_dat$Sub_metering_2, plot_dat$Sub_metering_3)

png("plot3.png", width=480, height=480)

with(plot3_data, {
  plot(plot_dat.Sub_metering_1~combi_dt, type="l",
       ylab="Energy sub metering", xlab="")
  lines(plot_dat.Sub_metering_2~combi_dt,col='Red')
  lines(plot_dat.Sub_metering_3~combi_dt,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()


