/*
Enter your query here.
https://www.hackerrank.com/challenges/more-than-75-marks/problem
*/

SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY SUBSTRING(Name , -3) , ID ASC


/*
Enter your query here.
Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
https://www.hackerrank.com/challenges/name-of-employees/problem
*/

SELECT name 
FROM EMPLOYEE
ORDER BY name 


-- By default ORDER BY sorts the data in ascending order.

/*
Enter your query here.
Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id.

https://www.hackerrank.com/challenges/salary-of-employees/problem?h_r=next-challenge&h_v=zen
*/

SELECT name
FROM EMPLOYEE
WHERE salary > 2000 AND months < 10
ORDER BY employee_id 


-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem

SELECT CITY , LENGTH(CITY) 
FROM STATION
ORDER BY LENGTH(CITY) , CITY ASC
LIMIT 1;

SELECT CITY , LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY)  DESC
LIMIT 1;

