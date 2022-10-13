
# FIRST QUESTION

//

For this challenge you need to create a simple SELECT statement that will return all columns from the products table, and join to the companies table so that 
you can return the company name.

products table schema

id
name
isbn
company_id
price

companies table schema
id
name

You should return all product fields as well as the company name as "company_name".

//

# RESULT

SELECT *, companies.name FROM products
JOIN companies USING (id);


# SECOND QUESTION

//

For this challenge you need to create a simple GROUP BY statement, you want to group all the people by their age and count the people who have the same age.

people table schema
id
name
age
select table schema
age [group by]
people_count (people count)

//

# RESULT

SELECT age, COUNT(*) AS total_people
FROM people
GROUP BY age


# THIRD QUESTION

//

For this challenge you need to create a simple SELECT statement that will return all columns from the people table, and join to the toys table so that you can
return the COUNT of the toys

people table schema

id
name

toys table schema

id
name
people_id

You should return all people fields as well as the toy count as "toy_count".

//

# RESULT

SELECT *, COUNT(toys.name) AS toys_count FROM people
JOIN toys USING (id);










