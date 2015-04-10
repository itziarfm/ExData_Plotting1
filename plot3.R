############################################################
################## Plot 3 ##################################
############################################################
### Load data
source("LoadData.R")

# labels on X-axis in English
Sys.setlocale("LC_TIME", "English") 

# open png device and make plot: scatterplot
png(filename="plot3.png", width=480, height=480)
plot(data.df$Time, data.df$Sub_metering_1, type="l",
     xlab="", ylab="Energy sub metering")
# add lines for sub_metering_2 and 3
lines(data.df$Time, data.df$Sub_metering_2, col="red")
lines(data.df$Time, data.df$Sub_metering_3, col="blue")
# add legend
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), 
       lty=1,lwd=1)

dev.off()  # turn off device
