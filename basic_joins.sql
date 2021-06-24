-- https://www.hackerrank.com/challenges/asian-population/problem
-- Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.


SELECT SUM(CITY.POPULATION) 
FROM CITY
JOIN COUNTRY
ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'ASIA' ;

-- https://www.hackerrank.com/challenges/african-cities/problem?h_r=next-challenge&h_v=zen
-- Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns

SELECT CITY.NAME 
FROM CITY
JOIN COUNTRY
ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Africa'