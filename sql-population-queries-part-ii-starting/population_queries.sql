-- How many entries in the database are from Africa?
SELECT count(*)
from countries
where continent = 'Africa';
-- What was the total population of Oceania in 2005?
select sum(population_years.population)
from population_years
join countries on population_years.country_id = countries.id
where countries.continent = 'Oceania'
and population_years.year = 2005;
-- What is the average population of countries in South America in 2003?
select avg(population_years.population)
from population_years
join countries on population_years.country_id = countries.id 
WHERE countries.continent = 'South America'
and year = '2003';
-- What country had the smallest population in 2007?
select countries.name
from population_years
join countries on countries.id = population_years.country_id
where population_years.year = 2007
and population is not NULL
order by population_years.population ASC
limit 1;
-- What is the average population of Poland during the time period covered by this dataset?
select avg(population_years.population)
from population_years
join countries on countries.id = population_years.country_id
where countries.name = 'Poland'
GROUP BY countries.name;
-- How many countries have the word "The" in their name?
select count(*)
from countries
where name like '%the%'
or name like '% The %';
-- What was the total population of each continent in 2010?
select countries.continent, sum(population_years.population)
from population_years
join countries on countries.id = population_years.country_id
where population_years.year = 2010
group by countries.continent;


