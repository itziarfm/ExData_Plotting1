############################################################
################## Plot 4 ##################################
############################################################
### Load data
source("LoadData.R")

# labels on X-axis in English
Sys.setlocale("LC_TIME", "English") 

# open png device and make plots
png(filename="plot4.png", width=480, height=480)

# multi-paneled plot: 2x2
par(mfrow=c(2,2))

# plot on top-left position: plot2, ylabel without "(kilowatts)"
plot(data.df$Time, data.df$Global_active_power,
     ylab="Global Active Power", xlab="", type="l")

# plot on top-right position: scatterplot
plot(data.df$Time, data.df$Voltage,
     xlab="datetime", ylab="Voltage", type="l")

# plot on bottom-left position: plot3, legend without border
plot(data.df$Time, data.df$Sub_metering_1, type="l",
     xlab="", ylab="Energy sub metering")
# add lines for sub_metering_2 and 3
lines(data.df$Time, data.df$Sub_metering_2, col="red")
lines(data.df$Time, data.df$Sub_metering_3, col="blue")
# add legend (without border)
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), 
       lty=1,lwd=1,bty="n") 

# plot on bottom-right position: scatterplot
plot(data.df$Time, data.df$Global_reactive_power,
     xlab="datetime", ylab="Global_reactive_power", type="l")

dev.off()  # turn off device
