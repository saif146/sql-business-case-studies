SELECT concat(c.first_name," ",c.last_name) as Name,count(distinct month(r.rental_date)) as times_of_renting FROM sakila.rental r inner join sakila.customer c 
on r.customer_id=c.customer_id
group by c.customer_id having times_of_renting>3;

