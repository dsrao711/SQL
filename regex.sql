-- https://www.hackerrank.com/challenges/weather-observation-station-6/problem

/*
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
Enter your query here.
*/

SELECT DISTINCT CITY 
FROM STATION
WHERE CITY REGEXP '^[aeiou]' ;