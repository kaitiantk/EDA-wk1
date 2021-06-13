

#data <- read.delim("household_power_consumption.txt", sep=";")
week.day <- weekdays(as.Date(data$Date))
data1 <- as.data.frame(cbind(data,week.day))

# na.omit does not remove the n/a entries. Don't know why.
data1 <- as.data.frame(na.omit(data1$Global_active_power))

data1 <- subset(data1,week.day==c("Thursday","Friday","Saturday"))
data1$Global_active_power <- as.numeric(data1$Global_active_power)
data1.agg <- aggregate(Global_active_power~week.day,data1,sum)

xyplot(Global_active_power~week.day,data1.agg,ylab="Global Active Power (kilowwatts)")

#dev.copy(png,filename="plot2.png")
#dev.off()