select * from project1_database.dbo.world_population$;

-- Q1.What is the total population of this world? For this we will find the sum of the total population of year 2022--

Select Sum(Population_2022) as Total_populatio 
from project1_database.dbo.world_population$;

--Q2.Which Country had the highest population in 2022?

SELECT TOP 1 Country, Population_2022
FROM project1_database.dbo.world_population$
ORDER BY Population_2022 DESC;

--Q3.What are the top 10 populated countries in the year 2022, 2020, 2015, 2010?

Select top 10 Country, Population_2022, Population_2020, Population_2015, Population_2010
From project1_database.dbo.world_population$
Order By Population_2022 desc;

--Q4 What is the average population of all countries? So for this we will take the average of year 2022--

Select AVG(Population_2022) as avg_population 
from project1_database.dbo.world_population$; 

--Q5. How many countries populations is more than 100 million?--

Select Count(*) as Countries_count, Country
from project1_database.dbo.world_population$
Where Population_2022 > 100000000;

--Q6.What is the population density (population per square kilometer) of each country?--

Select Country, [Population_2022]/[Area (km²)] as pop_density 
from project1_database.dbo.world_population$
Group By Country,[Population_2022]/[Area (km²)];

--Q7. Which Continent Had the highest population in 2022?--

Select Continent, Sum(Population_2022) as cont_population
from project1_database.dbo.world_population$
Group By Continent
Order By cont_population desc;

--Q8. Which Continent Had the highest population in 1980?--

Select Continent, Sum(Population_1980) as cont_population
from project1_database.dbo.world_population$
Group By Continent
Order By cont_population desc;

--Q9. What is the population growth rate of each country?--

Select Country, Growth_Rate 
from project1_database.dbo.world_population$
Order By Growth_Rate desc;


--Q10. Which Country had the highest population growth rate from 2020 to 2022?--

SELECT TOP 1 Country, (Population_2022 - Population_2020) / Population_2010 AS population_growth_rate
FROM project1_database.dbo.world_population$
ORDER BY population_growth_rate desc;

--Q11. How many countries have negative growth rate?--

Select Count(*) as pop_growth_rate
from project1_database.dbo.world_population$
Where Growth_Rate < 0 ;

--Q12. What was the population of each continent in 2000?--

Select Continent, Sum(Population_2000) as Continent_pop
from project1_database.dbo.world_population$
Group by Continent;


--Q13. What is the average population of the countries in Africa 2015?--

Select Continent, Round(Avg(Population_2015), 2) as avg_population
from project1_database.dbo.world_population$
Group by Continent
Having Continent= 'Africa'
Order By avg_population desc;

--Q14. What are the top 10 lowest populates Countries in 2022?--

Select Top 10 Country, Population_2022
from project1_database.dbo.world_population$
Order By Population_2022 asc;












































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































