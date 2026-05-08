SELECT hour(rental_date) as renting_hour,count(*) as total_rent FROM sakila.rental group by hour(rental_date) order by count(*) desc;
