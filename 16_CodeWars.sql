

-- QUESTION 1 ;
-- You have access to a table of monsters as follows:
-- monsters schema

-- id
-- name
-- legs
-- arms
-- characteristics
-- In each row, the characteristic column has a single comma. Your job is to find it using position(). You must return a table with the format as follows:

-- output schema

-- id
-- name
-- comma


-- SOLUTION

SELECT id, name, characteristics AS comma FROM monsters
ORDER BY comma;




-- QUESTION 2 ;
-- Given the table below:
-- names table schema

-- id
-- prefix
-- first
-- last
-- suffix
-- Your task is to use a select statement to return a single column table containing the full title of the person (concatenate all columns together except id), as follows:

-- output table schema

--title

-- Don't forget to add spaces.


-- SOLUTION

SELECT prefix || ' ' || first || ' ' || last || ' ' || suffix AS title
FROM names;


Comment:

-- This query selects the columns prefix, first, last, and suffix from the names table and concatenates them using the || operator, with a space between each column. The AS title clause renames the result column to title





