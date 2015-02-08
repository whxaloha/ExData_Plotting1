
#load raw data set
data<- read.table("household_power_consumption.txt", sep=";", header=T, quote= "", strip.white=TRUE, stringsAsFactors = F, na.strings= "?")

#only keep the data for two days (2007-02-01 and 2007-02-02)
data<- subset(data, (data$Date == "1/2/2007" | data$Date== "2/2/2007"))

#construct plot 1--Global Active Power
png("plot1.png", width=480, height= 480)

hist(data$Global_active_power, col= "red", xlab= "Global Active Power (kilowatts)", ylab= "Frequency", main= "Global Active Power")

dev.off()
