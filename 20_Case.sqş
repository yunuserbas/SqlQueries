
-- QUESTION

-- Given a table of random numbers as follows:
-- numbers table schema
-- id
-- number1
-- number2

-- Your job is to return table with similar structure and headings, where if the sum of a column is odd, 
-- the column shows the minimum value for that column, and when the sum is even, it shows the max value. You must use a case statement.

-- output table schema
-- number1
-- number2


-- SOLUTION

SELECT
  CASE
    WHEN (SUM(number1) % 2 = 0) THEN MAX(number1)
    ELSE MIN(number1)
  END AS number1,
  CASE
    WHEN (SUM(number2) % 2 = 0) THEN MAX(number2)
    ELSE MIN(number2)
  END AS number2
FROM numbers;





