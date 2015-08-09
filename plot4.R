## EDA #031 - Course Project 1 - Household Poer Consumption
## T. Debus                                       Aug. 12th 2015
##
## Part 1 - Loading Data

HPC <- read.csv("household_power_consumption.csv", sep=";", dec=".", na.strings = "?")
plot_dat <- subset(HPC, subset=Date %in% c("1/7/2007", "2/7/2007"))

## Plot 4 - Multi Panel Plot

combi_dt <- as.POSIXct(paste(plot_dat$Date, plot_dat$Time), format="%d/%m/%Y %H:%M:%S")
plot4_data <- data.frame(combi_dt, plot_dat)

png("plot4.png", width=480, height=480)

par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))

with(plot4_data, {

    plot(Global_active_power~combi_dt, type="l", 
       ylab="Global Active Power", xlab="")

    plot(Voltage~combi_dt, type="l", 
       ylab="Voltage", xlab="")

    plot(Sub_metering_1~combi_dt, type="l", 
       ylab="Energy sub metering", xlab="")
      lines(Sub_metering_2~combi_dt,col='Red')
      lines(Sub_metering_3~combi_dt,col='Blue')
      legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

    plot(Global_reactive_power~combi_dt, type="l", 
       ylab="Global Rective Power",xlab="")
})

dev.off()


