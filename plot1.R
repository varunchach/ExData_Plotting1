### Loading Datasets
library(readr)
household_power_consumption <- read_delim("exdata_data_household_power_consumption/household_power_consumption.txt", +";", escape_double = FALSE, col_types = cols(Date = col_date(format = "%d/%m/%Y"),+Time = col_time(format = "%H:%M:%S")), +trim_ws = TRUE)
### Plot_1
d=household_power_consumption[which(household_power_consumption$Date=='2007-02-01'|household_power_consumption$Date=='2007-02-02'),]
View(d)
hist(d$Global_active_power,col='Red',xlab='Global Active Powers(Kilowats)',ylab='Frequency',main='Global Active Power')
