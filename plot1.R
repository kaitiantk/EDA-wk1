

#data <- read.delim("household_power_consumption.txt", sep=";")
start.date <- "1/2/2007"
end.date <- "2/2/2007"
data1 <- subset(data,data$Date==start.date | data$Date==end.date, na.rm=TRUE)
hist(as.numeric(data1$Global_active_power),main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency",
     col="red")
dev.copy(png,filename="plot1.png")
dev.off()