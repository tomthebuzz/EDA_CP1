## EDA #031 - Course Project 1 - Household Poer Consumption
## T. Debus                                       Aug. 12th 2015
##
## Part 1 - Loading Data

HPC <- read.csv("household_power_consumption.csv", sep=";", dec=".", na.strings = "?")

plot_dat <- subset(HPC, subset=Date %in% c("1/7/2007", "2/7/2007"))

png("plot1.png", width=480, height=480)
plot1 <- hist(plot_dat$Global_active_power, freq=TRUE, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()


