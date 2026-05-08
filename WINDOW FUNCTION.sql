-- #__________________________Do ranking on creditlimit 
-- SELECT customerName,creditLimit,rank() over(order by creditLimit desc) as rank_no FROM classicmodels.customers order by creditLimit desc;
-- #Do ranking and get the 2nd value 
-- select * from(SELECT customerName,creditLimit,rank() over(order by creditLimit desc) as rank_no FROM classicmodels.customers order by creditLimit desc)t where rank_no=2;

#apply partition on group by
-- select country,city,count(customerNumber) as total_customer, max(count(customerNumber)) 
-- over(partition by country) as averge_customer_by_country from classicmodels.customers 
-- group by country,city order by count(customerNumber) desc;
#_________DO RANKING ON GROUP BY EACH SECTOR(IMPORTANT)
select country,city,count(customerNumber) as total_customer, rank()
over(partition by country order by count(customerNumber) desc) as averge_customer_by_country from classicmodels.customers 
group by country,city order by country asc;
