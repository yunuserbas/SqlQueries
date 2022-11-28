
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


--- Popularity of Hack
-- Question : Meta/Facebook has developed a new programing language called Hack.To measure the popularity of Hack they ran a survey with their employees. The survey included data on previous programing familiarity as well as the number of years of experience, age, gender and most importantly satisfaction with Hack. Due to an error location data was not collected, but your supervisor demands a report showing average popularity of Hack by office location. Luckily the user IDs of employees completing the surveys were stored.
-- Based on the above, find the average popularity of the Hack per office location.
-- Output the location along with the average popularity.


select location, avg(popularity) from facebook_hack_survey
join facebook_employees on facebook_hack_survey.employee_id=facebook_employees.id
group by location;



