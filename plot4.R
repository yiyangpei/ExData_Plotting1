
# load the electric power consumption dataset
source("loaddata.R")



# creat the plot
png(file="plot4.png",width = 480, height = 480)
par(mfrow = c(2, 2))

with(data, {
        plot(DateTime, Global_active_power, type="l", xlab="", ylab="Global Active Power")
        
        plot(DateTime, Voltage, type="l",xlab="datetime", ylab="Voltage")
        
        plot(DateTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
        lines(DateTime,Sub_metering_2, type="l",col="red")
        lines(DateTime,Sub_metering_3, type="l",col="blue")
        legend("topright", col=c("black","red","blue"), lty=1,
               legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n")
        
        plot(DateTime, Global_reactive_power, type="l",xlab="datetime")        
})



dev.off()



