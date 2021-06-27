-- https://www.hackerrank.com/challenges/weather-observation-station-6/problem

/*
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
Enter your query here.
*/

SELECT DISTINCT CITY 
FROM STATION
WHERE CITY REGEXP '^[aeiou]' ;


/*
Enter your query here.
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

https://www.hackerrank.com/challenges/weather-observation-station-7/problem?
*/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[aeiou]$'

/*
Enter your query here.
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
https://www.hackerrank.com/challenges/weather-observation-station-8/problem?
*/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiou]' AND CITY REGEXP '[aeiou]$'


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

/*
Enter your query here.
Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
https://www.hackerrank.com/challenges/weather-observation-station-12/problem

*/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[^aeiou]' AND CITY REGEXP '[^aeiou]$'

