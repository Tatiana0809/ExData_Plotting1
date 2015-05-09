#reading the data from the file
#data for 2007-02-01 and 2007-02-02 was previously subsetted into the file
d<-read.table("data_power_consumption.txt",header=TRUE,sep=",")

d$dt<-strptime(paste(d$Date,d$Time),format="%d/%m/%Y %H:%M:%S",tz="GMT")
png("Plot4.png",width=480,height=480)
#creating a matrix with 4 elements (2*2)
par(mfrow =c(2,2))
#plot 1
plot(d$dt,d$Global_active_power,type="l",xlab = "", ylab = "Global Active Power (kilowatts)")
#plot 2
plot(d$dt,d$Sub_metering_1,type="l",xlab = "", ylab = "Energy sub metering")
lines(d$dt,d$Sub_metering_2,col="red")
lines(d$dt,d$Sub_metering_3,col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), lty = 1, col = c("black","red","blue"))
#plot 3
plot(d$dt,d$Voltage,type="l",xlab="datetime",ylab="Voltage")
#plot 4
plot(d$dt,d$Global_reactive_power,type="l",xlab="datetime",ylab="Global reactive power")
dev.off()
