-- https://www.hackerrank.com/challenges/occupations/problem

-- Solution learned from comments
SET @r1 = 0, @r2 = 0, @r3 = 0, @r4 = 0;
SELECT MAX(Doctor), MAX(Professor), MAX(Singer), MAX(Actor)
FROM (
    SELECT CASE WHEN occupation = 'Doctor' THEN @r1 := @r1 + 1
                WHEN occupation = 'Professor' THEN @r2 := @r2 + 1
                WHEN occupation = 'Singer' THEN @r3 := @r3 + 1
                WHEN occupation = 'Actor' THEN @r4 := @r4 + 1 END AS id,
           CASE WHEN occupation = 'Doctor' THEN name END AS Doctor,
           CASE WHEN occupation = 'Professor' THEN name END AS Professor,
           CASE WHEN occupation = 'Singer' THEN name END AS Singer,
           CASE WHEN occupation = 'Actor' THEN name END AS Actor
    FROM occupations
    ORDER BY name
) a
GROUP BY id;

-- Alternative solution also learned from comments
SET @dRow = 0, @pRow = 0, @sRow = 0, @aRow = 0;

SELECT MIN(Doctor), MIN(Professor), MIN(Singer), MIN(Actor)
FROM (
    SELECT CASE Occupation
                WHEN 'Doctor' THEN @dRow := @dRow + 1
                WHEN 'Professor' THEN @pRow := @pRow + 1
                WHEN 'Singer' THEN @sRow := @sRow + 1
                WHEN 'Actor' THEN @aRow := @aRow + 1
            END AS row,
            IF (Occupation = 'Doctor', Name, NULL) AS Doctor,
            IF (Occupation = 'Professor', Name, NULL) AS Professor,
            IF (Occupation = 'Singer', Name, NULL) AS Singer,
            IF (Occupation = 'Actor', Name, NULL) AS Actor
    FROM OCCUPATIONS
    ORDER BY Name
) a
GROUP BY row;
