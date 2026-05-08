#_____________________________________1.monthly revenue
-- SELECT month_name,sum(amount) as total_revenue_monthly FROM sakila.payment group by month_name;

-- #____________________________________2.top category
-- select cat.name,count(fc.film_id) as total_film_rent from sakila.rental r inner join sakila.inventory inv
-- on r.inventory_id=inv.inventory_id inner join sakila.film_category fc
-- on inv.film_id=fc.film_id inner join sakila.category cat
-- on fc.category_id=cat.category_id
-- group by fc.category_id order by count(fc.film_id) desc limit 1 ;

-- #____________________________________3.top customer
-- select r.customer_id,count(fc.film_id) as total_film_rent from sakila.rental r inner join sakila.inventory inv
-- on r.inventory_id=inv.inventory_id inner join sakila.film_category fc
-- on inv.film_id=fc.film_id inner join sakila.category cat
-- on fc.category_id=cat.category_id
-- group by r.customer_id order by count(fc.film_id) desc limit 1 ;
#____________________________________4.Average rental days
-- select customer_id,avg(datediff(return_date,rental_date)) as avg_rental_days from sakila.rental group by customer_id;

#____________________________________5.Repeat customer rate
-- select count(*) from sakila.customer;# total customer 599
-- select customer_id,count(distinct month_name) as total_puchase_in_month from sakila.payment group by customer_id having count(distinct month_name)=5;
select (count(*)/599)*100 as repeat_customer_rate from (select customer_id,count(distinct month_name) as total_puchase_in_month from sakila.payment group by customer_id having count(distinct month_name)=5)t;







