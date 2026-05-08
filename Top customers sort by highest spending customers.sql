-- select concat(first_name," ",last_name) as customer_name,rental_id from sakila.customer inner join sakila.rental on sakila.customer.customer_id=sakila.rental.customer_id;
-- Task 1 — Top Customers

-- Find:

-- customer name
-- total rentals
-- total amount spent

-- Sort by highest spending customer.

-- Expected concepts:

-- JOIN
-- GROUP BY
-- SUM()
-- COUNT()
#__________________________Problem solving 1
-- select customer_name,count(t.rental_id) as total_rentals,sum(amount) as total_amount from 
-- (select concat(first_name," ",last_name) as customer_name,rental_id from sakila.customer inner join sakila.rental on sakila.customer.customer_id=sakila.rental.customer_id)t
-- inner join sakila.payment on t.rental_id=sakila.payment.rental_id
-- group by customer_name order by total_amount desc limit 5;