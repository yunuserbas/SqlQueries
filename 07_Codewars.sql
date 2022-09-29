


-- 1 you need to create a simple SELECT statement that will return all columns from the people table WHERE their age is over 50 --


SELECT * FROM people WHERE age > 50;


-- 2 you need to create a simple DISTINCT statement, you want to find all the unique ages --


SELECT DISTINCT ages FROM people;


-- 3 write a query that returns all rows in the custid, custname, and custstate columns from the customers table --


SELECT * FROM customers WHERE column = 'custid' and 'custname' and 'custstate';


-- 4 you need to create a simple SUM statement that will sum all the ages --


SELECT sum(ages) FROM people;


-- 5 you need to create a simple MIN / MAX statement that will return the Minimum and Maximum ages out of all the people --


SELECT min(ages) as age_min, max(ages) as age_max FROM people;


-- 6 create a simple SELECT query to display student information of all ACTIVE students --


SELECT * FROM students WHERE IsActive = '1';






