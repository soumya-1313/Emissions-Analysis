# Question 6  
NEI <- readRDS("C:/Users/HP/Downloads/exdata_data_NEI_data/summarySCC_PM25.rds")  
SCC <- readRDS("C:/Users/HP/Downloads/exdata_data_NEI_data/Source_Classification_Code.rds")  

vehicle_sources <- SCC[grep("vehicle", SCC$EI.Sector, ignore.case = TRUE), ]  
vehicle_data <- merge(NEI, vehicle_sources, by = "SCC")  
cities_data <- subset(vehicle_data, fips %in% c("24510", "06037"))  
city_emissions <- aggregate(Emissions ~ year + fips, cities_data, sum)  
png("plot6.png")  
ggplot(city_emissions, aes(x = year, y = Emissions, color = fips)) +  
  geom_line(size = 1.2) +  
  geom_point(size = 3) +  
  scale_color_manual(values = c("24510" = "blue", "06037" = "orange"), labels = c("Baltimore", "Los Angeles")) +  
  labs(title = "Motor Vehicle Emissions: Baltimore vs. Los Angeles (1999–2008)", x = "Year", y = "Total Emissions (Tons)", color = "City") +  
  theme_minimal()  
dev.off()
