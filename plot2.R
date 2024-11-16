# Question 2  
NEI <- readRDS("C:/Users/HP/Downloads/exdata_data_NEI_data/summarySCC_PM25.rds")  
SCC <- readRDS("C:/Users/HP/Downloads/exdata_data_NEI_data/Source_Classification_Code.rds")   

baltimore_data <- subset(NEI, fips == "24510")  
baltimore_emissions <- aggregate(Emissions ~ year, baltimore_data, sum)  
png("plot2.png")  
barplot(baltimore_emissions$Emissions, names.arg = baltimore_emissions$year, col = "red", main = "PM2.5 Emissions in Baltimore City (1999–2008)", xlab = "Year", ylab = "Total Emissions (Tons)")  
dev.off()
