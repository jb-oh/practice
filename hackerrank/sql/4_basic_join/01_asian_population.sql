-- https://www.hackerrank.com/challenges/asian-population/problem
SELECT SUM(CITY.POPULATION) FROM CITY LEFT JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE WHERE COUNTRY.CONTINENT = 'Asia';