-- SELECT * FROM sakila.rental;
select concat(c.first_name," ",c.last_name) as Name,count(distinct month(rental_date)) as distinct_month from sakila.rental r inner join sakila.customer c on r.customer_id=c.customer_id
group by c.customer_id having count(distinct month(rental_date))=5;
