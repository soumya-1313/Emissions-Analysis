# Question 5  
NEI <- readRDS("C:/Users/HP/Downloads/exdata_data_NEI_data/summarySCC_PM25.rds")  
SCC <- readRDS("C:/Users/HP/Downloads/exdata_data_NEI_data/Source_Classification_Code.rds")  

vehicle_sources <- SCC[grep("vehicle", SCC$EI.Sector, ignore.case = TRUE), ]  
vehicle_data <- merge(NEI, vehicle_sources, by = "SCC")  
baltimore_vehicles <- subset(vehicle_data, fips == "24510")  
vehicle_emissions <- aggregate(Emissions ~ year, baltimore_vehicles, sum)  
png("plot5.png")  
barplot(vehicle_emissions$Emissions, names.arg = vehicle_emissions$year, col = "purple", main = "Motor Vehicle Emissions in Baltimore City (1999–2008)", xlab = "Year", ylab = "Total Emissions (Tons)")  
dev.off()
