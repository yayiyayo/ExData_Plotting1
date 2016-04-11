data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
data$Date <- as.Date(data$Date , format = "%d/%m/%Y")
subdata <- data[data$Date >= "2007-02-01" & data$Date <= "2007-02-02",]

library(datasets)
subdata$fulltime<-strptime(paste(subdata$Date,subdata$Time, sep=" "),format="%Y-%m-%d %H:%M:%S")
png(file="plot2.png")
with(subdata,plot(fulltime,Global_active_power,type="l",ylab ="Global Active Power (kilowatts)",xlab=""))
dev.off()