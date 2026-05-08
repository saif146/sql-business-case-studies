-- select * from sakila.payment;
-- alter table sakila.payment add Month_name INT, add year_name INT;
-- select * from sakila.payment;
-- update sakila.payment 
-- set month_name=month(payment_date),year_name=year(payment_date);
-- alter table sakila.payment Drop column  Month_name,drop column year_name ;
select year_name,month_name,sum(amount) as total_amount from sakila.payment group by year_name,month_name order by total_amount desc;