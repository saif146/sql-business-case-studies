SELECT * FROM employee_data.employee_data;

select `Full name`,department,`annual salary`,avg(`annual salary`) over(partition by department) as avg_salalry from employee_data.employee_data where department is not null and department <> '';