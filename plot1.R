plot1  <- function() {
  data  <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
  data1  <- subset(data, as.Date(data$Date, "%d/%m/%Y")=="2007-02-01"| as.Date(data$Date, "%d/%m/%Y")=="2007-02-02")
  png("plot1.png")
  hist(data1[,3], col = "red", main = "Global Active Power", xlab ="Global Active Power(kilowatts)")
  dev.off()
}