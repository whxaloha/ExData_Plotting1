
#load raw data set
data<- read.table("household_power_consumption.txt", sep=";", header=T, quote= "", strip.white=TRUE, stringsAsFactors = F, na.strings= "?")

#only keep the data for two days (2007-02-01 and 2007-02-02)
data<- subset(data, (data$Date == "1/2/2007" | data$Date== "2/2/2007"))
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))



# construct plot2
png("plot2.png", width=480, height= 480)

plot(data$DateTime, data$Global_active_power, type= "l", lwd=1, ylab= "Global Active Power (kilowatts)", xlab="")

dev.off()
