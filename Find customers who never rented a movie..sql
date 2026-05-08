-- select *  from sakila.customer c left join sakila.rental r 
-- on c.customer_id=r.customer_id where rental_id is null;
#my result show every customer rent at least one movie thats why i check it is true or not 
select count(*) from sakila.customer;
select count(distinct customer_id) from sakila.rental;
