with customer_category as (
select r.customer_id,fc.category_id,count(*) as total_film,rank() over(partition by r.customer_id order by count(*)desc) as rnk
from sakila.rental r join sakila.inventory inv
on r.inventory_id=inv.inventory_id join sakila.film_category fc
on inv.film_id=fc.film_id
group by r.customer_id,fc.category_id
)

select cc.customer_id,c.name as favourite_category,f.title as recomended_movie from customer_category cc join sakila.category c
on cc.category_id=c.category_id join sakila.film_category fc_cat
on cc.category_id=fc_cat.category_id join sakila.film f
on fc_cat.film_id=f.film_id
where rnk=1 and not exists(
 select 1 from sakila.rental r join sakila.inventory i
 on r.inventory_id=i.inventory_id
 where r.customer_id=cc.customer_id and i.film_id=f.film_id
)
order by cc.customer_id;
-- This is one of the most important SQL interview patterns.

-- Used for:

-- unseen movies
-- unsold products
-- inactive users
-- missing transactions
-- anomaly detection