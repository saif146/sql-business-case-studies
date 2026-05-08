
-- select category_id,count(t.film_id) as film_count from(select film_id from sakila.rental inner join sakila.inventory on sakila.rental.inventory_id = sakila.inventory.inventory_id)t
-- inner join sakila.film_category on t.film_id=sakila.film_category.film_id group by category_id order by film_count desc limit 5;


select c.name as category_name,count(r.rental_id) as total_rentals from sakila.rental r
inner join sakila.inventory i on r.inventory_id=i.inventory_id
inner join sakila.film_category fc on i.film_id=fc.film_id
inner join sakila.category c on fc.category_id=c.category_id
group by c.name
order by total_rentals desc
limit 5