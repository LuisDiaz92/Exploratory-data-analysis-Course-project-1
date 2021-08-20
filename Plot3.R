#Open the data
data_text <- "C:/Users/Luis/Desktop/R/R course/Exploratory data analysis/Assignment Week 1/household_power_consumption.txt"
database <- read.table(data_text, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#Sub-set for the required dates
subset_dates <- database[database$Date %in% c("1/2/2007","2/2/2007") ,]

#Plot
date_time <- strptime(paste(subset_dates$Date, subset_dates$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
power <- as.numeric(subset_dates$Global_active_power)
sub_metering1 <- as.numeric(subset_dates$Sub_metering_1)
sub_metering2 <- as.numeric(subset_dates$Sub_metering_2)
sub_metering3 <- as.numeric(subset_dates$Sub_metering_3)
png("C:/Users/Luis/Desktop/R/R course/Exploratory data analysis/Assignment Week 1/plot3.png", width=480, height=480)
plot(date_time, sub_metering1, type="l", ylab="Energy Submetering", xlab="")
lines(date_time, sub_metering2, type="l", col="red")
lines(date_time, sub_metering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()


