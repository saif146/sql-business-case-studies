-- SELECT * FROM classicmodels.customers;
-- create view customer_of_each_country as
-- select country,count(customernumber) from classicmodels.customers group by country order by count(customernumber) desc;
-- delimiter &&
-- create procedure get_data()
-- begin
--     select * from classicmodels.customers where country='usa';
-- end &&
-- delimiter ;

-- call classicmodels.get_data()
#create procedure with limit 
-- delimiter &&
-- create procedure get_data_with_limit(in var int)
-- begin
--     select * from classicmodels.customers where country='usa' limit var;
-- end &&
-- delimiter ;
-- call classicmodels.get_data_with_limit(5)

#____________________________________________using out 
-- delimiter &&
-- create procedure get_credit_info(out var int)
-- begin
--     select max(creditLimit) into var from classicmodels.customers;
-- end &&
-- delimiter ;

-- call classicmodels.get_credit_info(@credit_limit2);
-- select @credit_limit2

#___________________________________________use inout
-- delimiter &&
-- create procedure get_credit_info(out var int)
-- begin
--     select max(creditLimit) into var from classicmodels.customers;
-- end &&
-- delimiter ;

#___________________________________________use inout

-- delimiter &&
-- create procedure get_info_all(inout var int)
-- begin
--      select customername from customers where customernumber=var;
-- end &&
-- delimiter ;

set @m=125;
call classicmodels.get_info_all(@m)



