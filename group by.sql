-- SELECT * FROM classicmodels.orders;

-- select customers.customerNumber,customers.country from customers inner join orders on customers.customerNumber=orders.customerNumber;
#apply group by on join function and rank it 
-- select country,count(customerNumber) as customer_number,rank() over(order by count(customerNumber) desc) as country_rank 
-- from (select customers.customerNumber,customers.country from customers 
-- inner join orders 
-- on customers.customerNumber=orders.customerNumber)t group by country order by count(customerNumber) desc;

SELECT 
    c.country,
    COUNT(c.customerNumber) AS customer_number,
    RANK() OVER (ORDER BY COUNT(c.customerNumber) DESC) AS country_rank
FROM customers c
INNER JOIN orders o 
    ON c.customerNumber = o.customerNumber
GROUP BY c.country;