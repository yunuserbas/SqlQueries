

-- There is an events table used to track different key activities taken on a website. For this task you need to:

-- find the entries whose name equals "trained"
-- group them by the day the activity happened (the date part of the created_at timestamp) and their description's
-- the 2 aforementioned fields should be returned together with the number of grouped entries in a column called count the result should also be sorted by day

-- "events" table schema
-- id (bigint)
-- name (text)
-- created_at (timestamp)
-- description (text)



SELECT CAST(DATE_TRUNC('day', created_at) AS DATE) AS day, description, COUNT(*) AS count
FROM events
WHERE name = 'trained'
GROUP BY day, description
ORDER BY day;



-- In this version of the query, the DATE_TRUNC function is still used to extract the day part of the created_at timestamp. 
-- However, the result is cast to a DATE data type using the CAST function. This should ensure that the day column is recognized as a date by the database.


