# Question 4  
NEI <- readRDS("C:/Users/HP/Downloads/exdata_data_NEI_data/summarySCC_PM25.rds")  
SCC <- readRDS("C:/Users/HP/Downloads/exdata_data_NEI_data/Source_Classification_Code.rds") 

coal_sources <- SCC[grep("coal", SCC$EI.Sector, ignore.case = TRUE), ]  
coal_data <- merge(NEI, coal_sources, by = "SCC")  
coal_emissions <- aggregate(Emissions ~ year, coal_data, sum)  
png("plot4.png")  
barplot(coal_emissions$Emissions, names.arg = coal_emissions$year, col = "green", main = "Emissions from Coal Combustion Sources (1999–2008)", xlab = "Year", ylab = "Total Emissions (Tons)")  
dev.off()
