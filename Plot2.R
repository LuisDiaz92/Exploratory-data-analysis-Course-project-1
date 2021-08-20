#Open the data
data_text <- "C:/Users/Luis/Desktop/R/R course/Exploratory data analysis/Assignment Week 1/household_power_consumption.txt"
database <- read.table(data_text, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#Sub-set for the required dates
subset_dates <- database[database$Date %in% c("1/2/2007","2/2/2007") ,]

#Plot
date_time <- strptime(paste(subset_dates$Date, subset_dates$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
power <- as.numeric(subset_dates$Global_active_power)
png("C:/Users/Luis/Desktop/R/R course/Exploratory data analysis/Assignment Week 1/plot2.png", width=480, height=480)
plot(date_time, power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()