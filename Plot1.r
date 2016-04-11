data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
data$Date <- as.Date(data$Date , format = "%d/%m/%Y")
subdata <- data[data$Date >= "2007-02-01" & data$Date <= "2007-02-02",]

library(datasets)
png(file="plot1.png")
hist(subdata$Global_active_power,col="red",main="Global Active Power", xlab ="Global Active Power (kilowatts)")
dev.off()