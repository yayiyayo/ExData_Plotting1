data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
data$Date <- as.Date(data$Date , format = "%d/%m/%Y")
subdata <- data[data$Date >= "2007-02-01" & data$Date <= "2007-02-02",]

library(datasets)
png(file="plot1.png")
hist(subdata$Global_active_power,col="red",main="Global Active Power", xlab ="Global Active Power (kilowatts)")
dev.off()

#another way to read in subdata
#hpc <- file("household_power_consumption.txt")
#data_hpc <- read.table(text = grep("^[1,2]/2/2007", readLines(hpc), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)
