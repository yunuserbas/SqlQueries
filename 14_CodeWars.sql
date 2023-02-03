
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



-- Question: Return a table with a single column named Greeting with the phrase 'hello world!'


-- Solution


CREATE TABLE greetings (Greeting VARCHAR(12));

INSERT INTO greetings (Greeting)
VALUES ('hello world!');


SELECT Greeting FROM greetings
WHERE Greeting = 'hello world!';


-- Question: You work at a book store. It's the end of the month, and you need to find out the 5 bestselling books at your store. 
-- Use a select statement to list names, authors, and number of copies sold of the 5 books which were sold most.

-- books table schema

-- name
-- author
-- copies_sold


-- Solution


SELECT name, author, count(copies_sold) as "count" FROM books
GROUP BY name, author
ORDER BY "count" DESC 
LIMIT 5;








