##reading the data from the file
##data for 2007-02-01 and 2007-02-02 was previously subsetted into the file
d<-read.table("data_power_consumption.txt",header=TRUE,sep=",")

d$dt<-strptime(paste(d$Date,d$Time),format="%d/%m/%Y %H:%M:%S",tz="GMT")
png("Plot3.png",width=480,height=480)
##plotting the first line
plot(d$dt,d$Sub_metering_1,type="l",xlab = "", ylab = "Energy sub metering")
##adding two more lines
lines(d$dt,d$Sub_metering_2,col="red")
lines(d$dt,d$Sub_metering_3,col="blue")
##adding the legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), lty = 1, col = c("black","red","blue"))
dev.off()
