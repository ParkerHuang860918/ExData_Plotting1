raw_data<-"./household_power_consumption.txt"
project<-read.table(raw_data,header=TRUE, sep=";", stringsAsFactors=FALSE)
subset<-project[project$Date %in% c("1/2/2007","2/2/2007"), ]
date_time<-paste(subset$Date, subset$Time, sep=" ")
datetime <- strptime(date_time, "%d/%m/%Y %H:%M:%S") 
subMetering1 <- as.numeric(subset$Sub_metering_1)
subMetering2 <- as.numeric(subset$Sub_metering_2)
png("plot3.png", width=480, height=480)
plot(datetime, subMetering1, type="l", ylab="Energy Sub metering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subset$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),  col=c("black", "red", "blue"), lty=1, lwd=1.5)
dev.off()
