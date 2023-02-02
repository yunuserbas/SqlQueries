

--- Question : Number of violations

--- You're given a dataset of health inspections. Count the number of violation in an inspection in 'Roxanne Cafe' for each year.
--- If an inspection resulted in a violation, there will be a value in the 'violation_id' column. Output the number of violations by year in ascending order.


--- Solution


SELECT date_part('year', inspection_date) AS year, COUNT(violation_id) AS n_inspections
FROM sf_restaurant_health_violations
WHERE business_name = 'Roxanne Cafe' AND violation_id IS NOT NULL
GROUP BY year
ORDER BY year ASC;



--- Question : Highest Cost Orders

--- Find the customer with the highest daily total order cost between 2019-02-01 to 2019-05-01. If customer had more than one order on a certain day, sum the order costs on daily basis. 
--- Output customer's first name, total cost of their items, and the date.
--- For simplicity, you can assume that every first name in the dataset is unique.


--- Solution


SELECT c.first_name, SUM(o.total_order_cost) AS total_cost, DATE(o.order_date) AS order_date
FROM customers c
JOIN orders o ON c.id = o.cust_id
WHERE o.order_date BETWEEN '2019-02-01' AND '2019-05-01'
GROUP BY c.first_name, DATE(o.order_date)
ORDER BY total_cost DESC
LIMIT 1;





