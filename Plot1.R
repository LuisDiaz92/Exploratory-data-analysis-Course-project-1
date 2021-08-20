#Open the data
data_text <- "C:/Users/Luis/Desktop/R/R course/Exploratory data analysis/Assignment Week 1/household_power_consumption.txt"
database <- read.table(data_text, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#Sub-set for the required dates
subset_dates <- database[database$Date %in% c("1/2/2007","2/2/2007") ,]

#Plot
power <- as.numeric(subset_dates$Global_active_power)
png("C:/Users/Luis/Desktop/R/R course/Exploratory data analysis/Assignment Week 1/plot1.png", width=480, height=480)
hist(x = power,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
title(main="Global Active Power")
dev.off()
