
--- Number Of Bathrooms And Bedrooms(Airbnb)

--Question : Find the average number of bathrooms and bedrooms for each city’s property types. Output the result along with the city name and the property type.



SELECT city, property_type, 
       avg(bathrooms) as avg_bathrooms, 
       avg(bedrooms) as avg_bedrooms 
FROM airbnb_search_details 
GROUP BY city, property_type;



--- Order Details
-- Question : Find order details made by Jill and Eva. Consider the Jill and Eva as first names of customers. 
--            Output the order date, details and cost along with the first name. Order records based on the customer id in ascending order.

SELECT c.first_name,
        o.order_date,
        o.order_details,
        o.total_order_cost
FROM customers c
JOIN orders o
ON c.id = o.cust_id
WHERE c.first_name in ('Jill', 'Eva')
ORDER BY c.id ASC




