data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
data1<-subset(data,as.Date(data$Date,format = "%m/%d/%Y")>="2007-02-01")
subdata<-subset(data1,as.Date(data1$Date,format = "%m/%d/%Y")<="2007-02-02")

library(datasets)
subdata$fulltime<-paste(subdata$Date,subdata$Time)
subdata$fulltime<-as.POSIXct(subdata$fulltime,format="%m/%d/%Y %H:%M:%S")
png(file="plot2.png")
with(subdata,plot(fulltime,Global_active_power,type="l",ylab ="Global Active Power (kilowatts)",xlab=""))
dev.off()