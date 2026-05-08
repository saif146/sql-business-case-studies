-- SELECT * FROM sakila.payment;

select concat(c.first_name," ",c.last_name) as Name,sum(p.amount) as total_amount ,
case
when sum(p.amount)>=200 then 'platinum'
when sum(p.amount)>=100 then 'gold'
else 'silver'
end as customer_category,rank() over(order by sum(p.amount) desc) as rank_no
from sakila.payment p inner join sakila.customer c 
on p.customer_id=c.customer_id
group by c.customer_id;