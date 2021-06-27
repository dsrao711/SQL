-- Query the Manhattan Distance between points  and  and round it to a scale of  decimal places.

SELECT ROUND( ( ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS( MIN(LONG_W) - MAX(LONG_W)) ), 4)
FROM STATION