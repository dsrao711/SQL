/*
Enter your query here.
Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
https://www.hackerrank.com/challenges/weather-observation-station-9/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
*/


SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[^aeiou]' ;



/*
Enter your query here.
Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

https://www.hackerrank.com/challenges/weather-observation-station-10/problem
*/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[^aeiou]$';


/*
Enter your query here.
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
https://www.hackerrank.com/challenges/weather-observation-station-11/problem
*/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[^aeiou]|[^aeiou]$'