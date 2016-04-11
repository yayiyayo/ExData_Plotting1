data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
data$Date <- as.Date(data$Date , format = "%d/%m/%Y")
subdata <- data[data$Date >= "2007-02-01" & data$Date <= "2007-02-02",]

library(datasets)
subdata$fulltime<-strptime(paste(subdata$Date,subdata$Time, sep=" "),format="%Y-%m-%d %H:%M:%S")

png(file="plot3.png")
with(subdata,plot(fulltime,Sub_metering_1,type="l",ylab ="Energy sub metering",xlab=""))
with(subdata,points(fulltime,Sub_metering_2,type="l",col="red"))
with(subdata,points(fulltime,Sub_metering_3,type="l",col="blue"))
legend("topright",pch="-",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()