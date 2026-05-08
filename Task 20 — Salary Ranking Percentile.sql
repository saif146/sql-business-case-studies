with ranked_salary as (
  select `full name`,`annual salary`,percent_rank() over(order by `annual salary`) as pr from employee_data.employee_data
)

select * from ranked_salary where pr>=0.9;
