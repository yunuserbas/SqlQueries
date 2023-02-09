
-- QUESTION
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





