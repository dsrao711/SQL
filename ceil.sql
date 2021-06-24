-- BLUNDER
-- Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

-- Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.

-- https://www.hackerrank.com/challenges/the-blunder/problem


SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary , 0 , '')))
FROM EMPLOYEES

-- op = 2253

SELECT FLOOR(AVG(Salary) - AVG(REPLACE(Salary , 0 , '')))
FROM EMPLOYEES

-- op = 2252
-- Difference bw round, ceil , floor
-- https://sqlstudies.com/2016/10/05/floor-round-and-ceiling/

-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?h_r=next-challenge&h_v=zen
-- Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns

SELECT COUNTRY.CONTINENT , FLOOR(AVG(CITY.POPULATION))
FROM COUNTRY
JOIN CITY
ON COUNTRY.CODE = CITY.COUNTRYCODE
GROUP BY COUNTRY.CONTINENT
