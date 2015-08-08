## EDA #031 - Course Project 1 - Household Poer Consumption
## T. Debus                                       Aug. 12th 2015
##
## Part 1 - Loading Data

HPC <- read.csv("household_power_consumption.csv", sep=";", dec=".", na.strings = "?")
plot_dat <- subset(HPC, subset=Date %in% c("1/7/2007", "2/7/2007"))

## Plot 2

combi_dt <- as.POSIXct(paste(plot_dat$Date, plot_dat$Time), format="%d/%m/%Y %H:%M:%S")

png("plot2.png", width=480, height=480)
plot2 <- plot(plot_dat$Global_active_power~combi_dt, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()


