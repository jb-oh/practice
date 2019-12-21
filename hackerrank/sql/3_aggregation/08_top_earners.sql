-- https://www.hackerrank.com/challenges/earnings-of-employees/submissions
SELECT MAX(months * salary), count(employee_id) FROM EMPLOYEE GROUP BY (months * salary) ORDER BY (months * salary) DESC LIMIT 1;
