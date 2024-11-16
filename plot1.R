# Question 1  
NEI <- readRDS("C:/Users/HP/Downloads/exdata_data_NEI_data/summarySCC_PM25.rds")  
SCC <- readRDS("C:/Users/HP/Downloads/exdata_data_NEI_data/Source_Classification_Code.rds")  

total_emissions <- aggregate(Emissions ~ year, NEI, sum)  
png("plot1.png")  
barplot(total_emissions$Emissions, names.arg = total_emissions$year, col = "blue", main = "Total PM2.5 Emissions in the US (1999–2008)", xlab = "Year", ylab = "Total Emissions (Tons)")  
dev.off()
