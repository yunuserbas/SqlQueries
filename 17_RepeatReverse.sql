

-- QUESTION
-- Using our monsters table with the following schema:
-- monsters table schema

-- id
-- name
-- legs
-- arms
-- characteristics
-- return the following table:

-- output schema

-- name
-- characteristics
-- Where the name is the original string repeated three times (do not add any spaces), 
-- and the characteristics are the original strings in reverse (e.g. 'abc, def, ghi' becomes 'ihg ,fed ,cba').



-- SOLUTION 1

SELECT name || name || name AS name, REVERSE(characteristics) AS characteristics
FROM monsters;

-- SOLUTION 2

SELECT REPEAT(name, 3) AS name, REVERSE(characteristics) AS characteristics FROM monsters


















