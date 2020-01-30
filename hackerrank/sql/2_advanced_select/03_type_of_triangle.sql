-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem
SELECT
    CASE WHEN ((a + b) <= c) OR ((a + c) <= b) OR ((b + c) <= a) THEN 'Not A Triangle'
         WHEN (a = b AND b = c AND c = a) THEN 'Equilateral'
         WHEN (a = b) OR (a = c) THEN 'Isosceles'
         WHEN (a != b AND b != c AND a != c) THEN 'Scalene'
         ELSE 'Not A Triangle'
    END
FROM triangles
