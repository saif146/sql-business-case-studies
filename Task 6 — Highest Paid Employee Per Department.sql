-- select department,`full name`,`annual salary`,max(`annual salary`) from employee_data.employee_data  where Department is not null AND Department <> '' group by department order by department asc;
-- select department,`full name`,`annual salary`,rank() over(partition by department order by `Annual Salary` desc) as salary_rank from employee_data.employee_data  where Department is not null AND Department <> '';

select department,`full name`,`annual salary` 
from(select department,`full name`,`annual salary`,rank() over(partition by department order by `Annual Salary` desc) as salary_rank 
from employee_data.employee_data  where Department is not null AND Department <> '')t where t.salary_rank=1 order by `annual salary` desc;