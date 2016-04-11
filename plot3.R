data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
data1<-subset(data,as.Date(data$Date,format = "%m/%d/%Y")>="2007-02-01")
subdata<-subset(data1,as.Date(data1$Date,format = "%m/%d/%Y")<="2007-02-02")

library(datasets)
subdata$fulltime<-paste(subdata$Date,subdata$Time)
subdata$fulltime<-as.POSIXct(subdata$fulltime,format="%m/%d/%Y %H:%M:%S")


png(file="plot3.png")
with(subdata,plot(fulltime,Sub_metering_1, ylim=c(0,30),type="l",ylab ="Energy sub metering",xlab=""))
with(subdata,points(fulltime,Sub_metering_2, ylim=c(0,20),type="l",col="red"))
with(subdata,points(fulltime,Sub_metering_3, ylim=c(0,20),type="l",col="blue"))
legend("topright",pch="-",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()