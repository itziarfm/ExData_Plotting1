############################################################
################## Plot 1 ##################################
############################################################
### Load data
source("LoadData.R")

### open png device and make plot: histogram
png(filename="plot1.png", width=480, height=480)
hist(data.df$Global_active_power, col="red", 
     xlab="Global Active Power (kilowatts)", 
     main="Global Active Power")
dev.off()  # turn off device

