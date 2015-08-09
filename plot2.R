plot2 <- function(){
  data  <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
  data1  <- subset(data, as.Date(data$Date, "%d/%m/%Y")=="2007-02-01"| as.Date(data$Date, "%d/%m/%Y")=="2007-02-02")
  y  <- mapply(function(a, b) paste(a, b), data1[1:2880,1], data1[1:2880,2])
  z <- strptime(y, "%d/%m/%Y %H:%M:%S")
  png("plot2.png")
  plot(z, data1[,3], xlab = "", ylab = "Global Active Power(kilowatts)", type = "n")
  lines(z, data1[,3])
  dev.off() 
}
