-- SELECT * FROM sakila.inventory;

select cate.name,sum(p.amount) as total_amount,round(sum(p.amount)*100/sum(sum(p.amount))over(),2 ) as percentage from sakila.payment p inner join sakila.rental r
on  p.customer_id=r.customer_id inner join sakila.inventory iv
on r.inventory_id =iv.inventory_id inner join sakila.film_category ct
on iv.film_id=ct.film_id inner join sakila.category cate
on ct.category_id=cate.category_id
group by ct.category_id