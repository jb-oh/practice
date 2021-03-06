-- https://www.hackerrank.com/challenges/the-pads/problem
SELECT CONCAT(NAME, '(', LEFT(OCCUPATION, 1), ')') FROM OCCUPATIONS ORDER BY NAME;
SELECT CONCAT('There are a total of ', COUNT(OCCUPATION), ' ', lower(occupation), 's.') FROM OCCUPATIONS GROUP BY OCCUPATION ORDER BY COUNT(NAME), OCCUPATION;
