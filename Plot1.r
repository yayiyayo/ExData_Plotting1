data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
data1<-subset(data,as.Date(data$Date,format = "%m/%d/%Y")>="2007-02-01")
subdata<-subset(data1,as.Date(data1$Date,format = "%m/%d/%Y")<="2007-02-02")

library(datasets)
png(file="plot1.png")
hist(subdata$Global_active_power,col="red",main="Global Active Power", xlab ="Global Active Power (kilowatts)")
dev.off()