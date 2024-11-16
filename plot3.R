# Question 3  
NEI <- readRDS("C:/Users/HP/Downloads/exdata_data_NEI_data/summarySCC_PM25.rds")  
SCC <- readRDS("C:/Users/HP/Downloads/exdata_data_NEI_data/Source_Classification_Code.rds")  

library(ggplot2)  
baltimore_data <- subset(NEI, fips == "24510")  
type_emissions <- aggregate(Emissions ~ year + type, baltimore_data, sum)  
png("plot3.png")  
ggplot(type_emissions, aes(x = year, y = Emissions, color = type)) +  
  geom_line(size = 1.2) +  
  geom_point(size = 3) +  
  labs(title = "PM2.5 Emissions by Source Type in Baltimore City (1999–2008)", x = "Year", y = "Total Emissions (Tons)") +  
  theme_minimal()  
dev.off()
