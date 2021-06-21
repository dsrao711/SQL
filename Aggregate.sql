-- https://www.hackerrank.com/challenges/revising-aggregations-sum/problem
-- Query a count of the number of cities in CITY having a Population larger than 100000

SELECT COUNT(Name) 
FROM CITY
WHERE POPULATION > 100000 ;

-- Query the total population of all cities in CITY where District is California.
-- https://www.hackerrank.com/challenges/revising-aggregations-sum/problem

SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California'

-- Query the average population of all cities in CITY where District is California.
-- https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem

SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'California'

-- Query the average population for all cities in CITY, rounded down to the nearest integer.
-- https://www.hackerrank.com/challenges/average-population/problem

SELECT ROUND(AVG(POPULATION))
FROM CITY

-- Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
-- https://www.hackerrank.com/challenges/japan-population/problem

SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN'

-- Query the difference between the maximum and minimum populations in CITY.
-- https://www.hackerrank.com/challenges/population-density-difference/problem

SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY