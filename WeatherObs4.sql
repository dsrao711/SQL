-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem

SELECT (SELECT COUNT(CITY) FROM STATION) - (SELECT COUNT(DISTINCT CITY) FROM STATION)