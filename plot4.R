## Coursera week 1 project

## Plot 2

## read in all of the data from the Text file

hwdata <- read.csv("household_power_consumption.txt", header = T, sep = ";", 
                   na.strings = "?", stringsAsFactors = F)

## subset the data to only show values from Jan. 2nd 2007 to Feb. 2nd 2007

subhwdata <- hwdata[hwdata$Date %in% c("1/2/2007", "2/2/2007"), ]

## creating values for date and times

p3 <- strptime(paste(subhwdata$Date, subhwdata$Time, sep = " "),
               "%d/%m/%Y %H:%M:%S")

## create the png file and create the size and pixel measurements of your plot

png(filename = "plot4.png", height = 480, width = 480)

## creating multiple plots

par(mfrow = c(2,2))

## plot #1 (should mirror code and plot from plot2.R)

plot(strptime(paste(subhwdata$Date, subhwdata$Time, sep = " "),
              "%d/%m/%Y %H:%M:%S"), subhwdata$Global_active_power,
     xlab = "", ylab = "Global Active Power (Kilowatts)", type = "l")

## plot #2 

with(subhwdata, plot(p3, Voltage, xlab = "datetime", ylab = "Voltage", 
                    type = "l"))
## plot 3 (Should mirror code and plot from plot3.R)

with(subhwdata, plot(p3, subhwdata$Sub_metering_1, xlab = "", ylab = "Energy Sub Metering",
                     type = "l"))

## plotting second sub metet as red

with(subhwdata,lines(p3, subhwdata$Sub_metering_2, col = "red"))

## plotting second sub metet as blue

with(subhwdata,lines(p3, subhwdata$Sub_metering_3, col = "blue"))

## Creating a Legend

legend("topright", lty = 1, lwd = 2,
       legend = c("Sub_meetering_1", "Sub_meetering_2", "Sub_meetering_3"), 
       col = c("black", "red", "blue"))

## Plot 4 

with(subhwdata, plot(p3, Global_reactive_power,xlab = "datetime",
                     type = "l"))

dev.off()
