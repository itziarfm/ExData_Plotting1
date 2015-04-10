############################################################
################## Plot 2 ##################################
############################################################
### Load data
source("LoadData.R")

# labels on X-axis in English
Sys.setlocale("LC_TIME", "English") 

# open png device and make plot: scatterplot
png(filename="plot2.png", width=480, height=480)
plot(data.df$Time, data.df$Global_active_power,
     ylab="Global Active Power (kilowatts)", xlab="", type="l")
dev.off() # turn off device
