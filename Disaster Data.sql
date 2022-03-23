---- CALCULATE THE NUMBER OF DISASTERS EACH YEAR 

SELECT [Year], COUNT([Disaster Type]) AS 'Number of Disasters'
FROM PortfolioProject..Disaster_Data
GROUP BY [Year]
ORDER BY [Year];

---- TOTAL DEATHS PER COUNTRY 

SELECT [Country], SUM([Total Deaths]) AS 'Total Deaths'
FROM PortfolioProject..Disaster_Data
GROUP BY [Country]
ORDER BY 2 DESC;

---- ROLLING COUNT OF TOTAL DEATHS BY REGION

SELECT [Continent], [Region], [Year], [Total Deaths], 
SUM(CONVERT(int, [Total Deaths])) OVER (PARTITION BY [Region] ORDER BY [Region], [Year]) AS 'Rolling Death Count'
FROM PortfolioProject..Disaster_Data
ORDER BY Continent;

---- DISASTER TYPE BY SUBGROUP

SELECT [Disaster Subgroup], COUNT([Disaster Subgroup]) AS 'Disaster Count'
FROM PortfolioProject..Disaster_Data
GROUP BY [Disaster Subgroup];

---- CALCULATE NUMBER OF DISASTERS PER REGION 

SELECT Country, COUNT([Country]) AS 'Number of Disasters'
FROM PortfolioProject..Disaster_Data
GROUP BY [Country]
ORDER BY 2 DESC;

SELECT *
FROM PortfolioProject.dbo.Disaster_Data
ORDER BY [Year] DESC;