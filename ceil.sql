-- BLUNDER
-- Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

-- Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.

-- https://www.hackerrank.com/challenges/the-blunder/problem


SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary , 0 , '')))
FROM EMPLOYEES

-- op = 2253

SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary , 0 , '')))
FROM EMPLOYEES

-- op = 2252
-- Difference bw round, ceil , floor
-- https://sqlstudies.com/2016/10/05/floor-round-and-ceiling/

