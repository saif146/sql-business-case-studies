
-- CASE STUDY 2 — Employee Retention Dashboard Query

-- Using Employees:

-- Create one final query showing:

-- department
-- total employees
-- avg salary
-- avg tenure
-- attrition rate

-- This is very close to real BI dashboards.
select department ,count(*) as total_employee,round(avg(`annual salary`),0) as average_salary_per_dept,round(avg(datediff(curdate(),clean_date))/365,2) as tenure
from employee_data.employee_data where Department is not null and Department <> '' group by Department;