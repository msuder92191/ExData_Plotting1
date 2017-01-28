## Coursera week 1 project

## Plot 1

## read in all of the data from the Text file

hwdata <- read.csv("household_power_consumption.txt", header = T, sep = ";", 
         na.strings = "?", stringsAsFactors = F)

## subset the data to only show values from Jan. 2nd 2007 to Feb. 2nd 2007

subhwdata <- hwdata[hwdata$Date %in% c("1/2/2007", "2/2/2007"), ]

## create the png file and create the size and pixel measurements of your plot
png(filename = "plot1.png", height = 480, width = 480)

## create a histogram of the data

hist(subhwdata$Global_active_power)

## add to historgram with red bars

hist(subhwdata$Global_active_power, col = "red")

## relabel the x axis
hist(subhwdata$Global_active_power, col = "red",
     xlab = "Global Active Power (Kilowatts)")
     
## relabel the title of the histogram

hist(subhwdata$Global_active_power, col = "red",
     xlab = "Global Active Power (Kilowatts)", main = "Global Active Power")

dev.off()
