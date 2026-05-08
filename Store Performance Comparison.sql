select st.store_id,sum(p.amount)as total_revenue,count(distinct p.customer_id) as total_customer,count(distinct p.rental_id) as total_rentals,
round(sum(p.amount)/count(distinct p.rental_id),2) as avg_revenue_per_rental
from sakila.payment p inner join sakila.staff s
on p.staff_id =s.staff_id
inner join sakila.store st
on s.store_id=st.store_id
group by st.store_id;