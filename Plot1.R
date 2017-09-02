raw_data<-"./household_power_consumption.txt"
project<-read.table(raw_data,header=TRUE, sep=";", stringsAsFactors=FALSE)
subset<-project[project$Date %in% c("1/2/2007","2/2/2007"), ]
png("plot1.png", width=480, height=480)
hist(as.numeric(subset$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
