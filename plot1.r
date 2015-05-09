#reading the data from the file
#data for 2007-02-01 and 2007-02-02 was previously subsetted into the file
d<-read.table("data_power_consumption.txt",header=TRUE,sep=",")
active_power<-as.numeric(d$Global_active_power)
#creating png file
png("Plot1.png",width=480,height=480)
#plotting histogramm
hist(active_power,col="red",main="Global Active Power",xlab="Global active power (kilowatts)")
dev.off()
