# PM2.5 Emissions Analysis: Exploratory Data Analysis Project

This repository contains the analysis and visualization of PM2.5 emissions data in the United States, as part of an exploratory data analysis project. The project examines trends and patterns in emissions from various sources between 1999 and 2008.

---

## Data

The dataset used for this project is sourced from the [EPA National Emissions Inventory (NEI)](https://www.epa.gov/air-emissions-inventories). It consists of two RDS files:

- **`summarySCC_PM25.rds`**: Contains PM2.5 emissions data by year, type, and region.
- **`Source_Classification_Code.rds`**: Provides descriptions and classifications of emission sources.

Both files must be placed in the working directory to successfully run the analysis.

---

## Project Objectives

The project addresses the following key questions through plots:

1. **Nationwide Trends**: Have total emissions from PM2.5 decreased in the United States from 1999 to 2008?
2. **Baltimore City Trends**: Have emissions in Baltimore City, Maryland, decreased over the same period?
3. **Source Type Trends**: What trends are observed for different source types in Baltimore City?
4. **Coal Combustion Trends**: How have emissions from coal combustion-related sources changed nationwide?
5. **Motor Vehicle Trends**: How have emissions from motor vehicles evolved in Baltimore City?
6. **City Comparison**: How do motor vehicle emissions in Baltimore City compare to Los Angeles County?

---

## Repository Structure

This repository contains the following files:

| File            | Description                                                                 |
|-----------------|-----------------------------------------------------------------------------|
| `plot1.R`       | R script for analyzing and plotting nationwide PM2.5 trends.               |
| `plot1.png`     | Generated plot showing total PM2.5 emissions in the US by year.            |
| `plot2.R`       | R script for analyzing and plotting emissions trends in Baltimore City.    |
| `plot2.png`     | Generated plot showing Baltimore City's PM2.5 emissions by year.           |
| `plot3.R`       | R script for analyzing emissions trends by source type in Baltimore City.  |
| `plot3.png`     | Generated plot showing emissions trends by type for Baltimore City.        |
| `plot4.R`       | R script for analyzing nationwide emissions from coal combustion sources.  |
| `plot4.png`     | Generated plot showing coal-related emissions trends.                      |
| `plot5.R`       | R script for analyzing emissions from motor vehicles in Baltimore City.    |
| `plot5.png`     | Generated plot showing motor vehicle emissions in Baltimore City.          |
| `plot6.R`       | R script for comparing motor vehicle emissions in Baltimore and Los Angeles. |
| `plot6.png`     | Generated plot comparing motor vehicle emissions in the two cities.        |
| `README.md`     | This file, explaining the project, scripts, and how to use them.           |

---

## Dependencies

This project relies on the following R packages:

- **`ggplot2`**: For creating plots.
- **`dplyr`**: For data manipulation.
- **`readr`**: For reading and handling datasets.
- **`grDevices`**: For saving plots to files.

To install these packages, run:

```r
install.packages(c("ggplot2", "dplyr", "readr"))
