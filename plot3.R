plot3  <- function() {
  data  <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
  data1  <- subset(data, as.Date(data$Date, "%d/%m/%Y")=="2007-02-01"| as.Date(data$Date, "%d/%m/%Y")=="2007-02-02")
  y  <- mapply(function(a, b) paste(a, b), data1[1:2880,1], data1[1:2880,2])
  z <- strptime(y, "%d/%m/%Y %H:%M:%S")
  png("plot3.png")
  plot(z, data1[,7], xlab = "", ylab = "Energy sub metering", type = "n")
  legend("topright", lty = c(1,1,1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  lines(z, data1[,7])
  lines(z, data1[,8], col = "red")
  lines(z, data1[,9], col = "blue")
  dev.off()
}