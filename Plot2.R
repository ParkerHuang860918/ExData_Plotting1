raw_data<-"./household_power_consumption.txt"
project<-read.table(raw_data,header=TRUE, sep=";", stringsAsFactors=FALSE)
subset<-project[project$Date %in% c("1/2/2007","2/2/2007"), ]
date_time<-paste(subset$Date, subset$Time, sep=" ")
datetime <- strptime(date_time, "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(datetime, as.numeric(subset$Global_active_power),  xlab="", ylab="Global Active Power (kilowatts)", type="l")
dev.off()

