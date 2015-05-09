#reading the data from the file
#data for 2007-02-01 and 2007-02-02 was previously subsetted into the file
d<-read.table("data_power_consumption.txt",header=TRUE,sep=",")

d$dt<-strptime(paste(d$Date,d$Time),format="%d/%m/%Y %H:%M:%S",tz="GMT")
png("Plot2.png",width=480,height=480)
plot(d$dt,d$Global_active_power,type="l",xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
