-- This is the first query:

SELECT DISTINCT year from population_years;

-- Add your additional queries below:
-- What is the largest population size for Gabon in this dataset?
SELECT * from population_years where country = 'Gabon' ORDER BY population DESC limit 1;

-- What were the 10 lowest population countries in 2005?
SELECT * FROM population_years where year = 2005 ORDER BY population asc limit 10;


-- What are all the distinct countries with a population of over 100 million in the year 2010?
SELECT DISTINCT country from population_years where population > 100 and year = 2010;


-- How many countries in this dataset have the word “Islands” in their name?
select DISTINCT country from population_years where country like '%Islands%';

-- What is the difference in population between 2000 and 2010 in Indonesia?
SELECT population from population_years where country = 'Indonesia' and year BETWEEN 2000 and 2010;