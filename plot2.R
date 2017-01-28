## Coursera week 1 project

## Plot 2

## read in all of the data from the Text file

hwdata <- read.csv("household_power_consumption.txt", header = T, sep = ";", 
                   na.strings = "?", stringsAsFactors = F)

## subset the data to only show values from Jan. 2nd 2007 to Feb. 2nd 2007

subhwdata <- hwdata[hwdata$Date %in% c("1/2/2007", "2/2/2007"), ]

## create the png file and create the size and pixel measurements of your plot
png(filename = "plot2.png", height = 480, width = 480)

## creating a meter time plot

plot(strptime(paste(subhwdata$Date, subhwdata$Time, sep = " "),
              "%d/%m/%Y %H:%M:%S"), subhwdata$Global_active_power)

## Modifying the data labels
plot(strptime(paste(subhwdata$Date, subhwdata$Time, sep = " "),
              "%d/%m/%Y %H:%M:%S"), subhwdata$Global_active_power,
     xlab = "", ylab = "Global Active Power (Kilowatts)")

## Changing from a circular plot to a line plot 


plot(strptime(paste(subhwdata$Date, subhwdata$Time, sep = " "),
              "%d/%m/%Y %H:%M:%S"), subhwdata$Global_active_power,
     xlab = "", ylab = "Global Active Power (Kilowatts)", type = "l")


dev.off()
