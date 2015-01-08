

# 2075259*9*8/10^6 #MB 8 bytes/numeric


# data <- read.table("./household_power_consumption.txt", head=TRUE, sep=";",na.strings = "?",colClasses = c(rep("character",2),rep("numeric",7)) )
# data <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",] # index 66637-69516


data <- subset(read.table("./household_power_consumption.txt", head=TRUE, sep=";",na.strings = "?",colClasses = c(rep("character",2),rep("numeric",7)) ), Date=="1/2/2007" | Date=="2/2/2007")

data$Date <- as.Date(data$Date,format="%d/%m/%Y")
data$DateTime <- strptime(paste(data$Date,data$Time),format="%Y-%m-%d %H:%M:%S")