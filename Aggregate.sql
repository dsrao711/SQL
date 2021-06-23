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

-- The Employee table containing employee data for a company is described as follows:
-- 
SELECT salary * months AS earnings, COUNT(*)
FROM Employee
GROUP BY earnings
ORDER BY earnings DESC
LIMIT 1;


-- Query the following two values from the STATION table:

-- The sum of all values in LAT_N rounded to a scale of 2 decimal places.
-- The sum of all values in LONG_W rounded to a scale of 2 decimal places.

SELECT ROUND(SUM(LAT_N) , 2) AS lat , ROUND(SUM(LONG_W) , 2) AS lon FROM STATION;


-- Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than ___ and less than ___ . Truncate your answer to  decimal places.

SELECT ROUND(SUM(LAT_N) , 4)
FROM STATION
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345

-- Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than . Truncate your answer to  4 decimal places

SELECT MAX(ROUND(LAT_N , 4))
FROM STATION
WHERE LAT_N < 137.2345


-- Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than . Round your answer to  decimal places.

SELECT ROUND(LONG_W , 4) 
FROM STATION
WHERE LAT_N < 137.235
ORDER BY LAT_N DESC
LIMIT 1;

-- Query the smallest Northern Latitude (LAT_N) from STATION that is greater than . Round your answer to  decimal places.

SELECT MIN(ROUND(LAT_N , 4))
FROM STATION
WHERE LAT_N > 38.7780