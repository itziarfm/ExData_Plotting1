############################################################
############# Loading the data #############################
############################################################
### Download, filter and load data

# If the data doesn't exit in the working directory, dowload, process and save it.
if(!file.exists("data.txt")) {
  ## download and unzip
  fileUrl<-"https://d396qusza40orc.cloudfront.net/exdata_data_household_power_consumption.zip"
  download.file(url=fileUrl, destfile="rawData.zip",method="curl")
  unzip("rawData.zip")
    
  # Read data into a data.frame
  rawData.df <- read.table("household_power_consumption.txt", header=TRUE,sep=";", na.strings="?")
  # Format date and time
  rawData.df$Date <- as.Date(rawData.df$Date, format="%d/%m/%Y")
  rawData.df$Time <-as.POSIXct(paste(rawData.df$Date, data.df$Time, sep=" "), 
                               format="%Y-%m-%d %H:%M:%S")
  
  # Select data from 2007-02-01 to 2007-02-02
  data.df <- subset(rawData.df, factor(format(Date,'%Y'))=="2007" & 
                                factor(format(Date,'%m'))=="02" &
                                (factor(format(Date,'%d'))=="01" | factor(format(Date,'%d'))=="02"))
  # Save file
  write.table(data.df,file="data.txt",sep=";",row.names=TRUE,col.names=TRUE)     
  
# else read data.txt
} else {
  data.df <- read.table("data.txt", header=TRUE,sep=";")
  data.df$Date <- as.Date(data.df$Date)
  data.df$Time <- strptime(data.df$Time, format="%Y-%m-%d %H:%M:%S")
}

