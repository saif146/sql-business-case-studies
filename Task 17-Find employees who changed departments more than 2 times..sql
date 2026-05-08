-- SELECT * FROM employee_data.employee_data;

select `full name`,count(distinct department) as time_of_chanegs from employee_data.employee_data  where `full name` is not null and `full name` <> '' group by `full name` having count(distinct department)>2;