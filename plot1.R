

# load the electric power consumption dataset
source("loaddata.R")

# creat the plot
hist(data$Global_active_power,xlab ="Global Active Power (kilowatts)",col="red",main="Global Active Power")

# Copy it to a png file
dev.copy(png, file = "plot1.png", width = 480, height = 480) 
dev.off()