
-- Question: Given a demographics table in the following format:

-- ** demographics table schema **

-- id
-- name
-- birthday
-- race
-- you need to return a table that shows a count of each race represented, ordered by the count in descending order as:


-- Solution

SELECT RACE, COUNT(ID) AS COUNT FROM DEMOGRAPHICS
GROUP BY RACE
ORDER BY COUNT DESC;


