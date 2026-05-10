create table Employee_Salaries (
department int,
department_name varchar(100),
division varchar(100),
gender varchar(10),
base_salary decimal(10,2),
overtime_pay decimal(10,2),
longevity_pay decimal(10,2),
grade varchar(20)

);

select * from employee_salaries;


 select count(*) as total_employees
 from employee_salaries;

 select department_name, base_salary
from employee_salaries;

select department_name,(base_salary+overtime_pay+longevity_pay) as total_salary
from employee_salaries;

select avg(base_salary) as avg_base_salary
from employee_salaries;

select round(avg(base_salary)) as avg_base_salary
from employee_salaries;

select department_name,round(max(base_salary)) as max_base_salary
from employee_salaries
group by department_name;

select department_name, round(min(base_salary)) as min_base_salary
from employee_salaries
group by department_name;

select max(base_salary+overtime_pay+longevity_pay) as max_salary
from employee_salaries;

select min(base_salary+overtime_pay+longevity_pay) as min_salary
from employee_salaries;

select gender, avg(base_salary) as avg_base_salary
from employee_salaries
group by gender;

 select gender, round(avg(base_salary)) as avg_base_salary
from employee_salaries
group by gender;

select division, sum(base_salary+overtime_pay+longevity_pay) as total_salary
from employee_salaries
group by division;

select * from employee_salaries
where base_salary>100000;

select * from employee_salaries
where gender='F';


select *,(base_salary+overtime_pay+longevity_pay) as total_salary
from employee_salaries
order by total_salary desc
limit 5;

select department_name, avg(base_salary+overtime_pay+longevity_pay) as avg_salary
from employee_salaries
group by department_name 
order by avg_salary desc
limit 1;

select grade, avg(base_salary) as avg_salary
from employee_salaries
group by grade
order by avg_salary desc;

select grade, round(avg(base_salary)) as avg_salary
from employee_salaries
group by grade 
order by avg_salary desc;





