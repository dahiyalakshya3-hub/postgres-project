create table Data_Science_Jobs_Salaries(
work_year text,
experience_level varchar(30),
employment_type varchar(20),
job_title varchar(100),
salary decimal(15,2),
salary_currency varchar(10),
salary_in_usd decimal(10,2),
employee_residence varchar(20),
remote_ratio int,
company_location varchar(20),
company_size varchar(30)

);

select * from Data_Science_Jobs_Salaries;

update Data_Science_Jobs_Salaries 
set experience_level =
case when experience_level='EN' then 'Entry-level/Junior'
when experience_level='MI' then 'Mid-level/Intermediate'
when experience_level='SE' then 'Senior-level/Expert'
when experience_level='EX' then 'Executive-level/Director'
else experience_level
end;

update data_science_jobs_salaries
set employment_type =
case when employment_type='PT' then 'Part-time'
when employment_type='FT' then 'Full-time'
when employment_type='CT' then 'Contract'
when employment_type='FL' then 'Freelance'
else employment_type
end;

update data_science_jobs_salaries
set company_size =
case when company_size='S' then 'Small Company'
when company_size='M' then 'Medium Company'
when company_size='L' then 'Large Company'
else company_size
end;

update data_science_jobs_salaries
set work_year =
case when work_year='2021e' then '2021'
else work_year
end;

select avg(salary) as avg_salary
from data_science_jobs_salaries;

select round(avg(salary)) as avg_salary
from data_science_jobs_salaries;

select job_title, round(avg(salary)) as avg_salary
from data_science_jobs_salaries
group by job_title;

select job_title, round(avg(salary)) as avg_salary
from data_science_jobs_salaries
group by job_title
order by avg_salary desc;

select job_title, round(max(salary)) as max_salary
from data_science_jobs_salaries
group by job_title
order by max_salary desc;

select job_title, round(min(salary)) as min_salary
from data_science_jobs_salaries
group by job_title
order by min_salary desc;

select experience_level, sum(salary) as total_salary
from data_science_jobs_salaries
group by experience_level
order by total_salary desc;

select experience_level, round(max(salary)) as max_salary
from data_science_jobs_salaries
group by experience_level
order by max_salary desc;

select job_title, experience_level, 
count(*) as total_jobs
from data_science_jobs_salaries
group by job_title,
 experience_level;

select job_title, experience_level,
count(*) as total_jobs
from data_science_jobs_salaries
group by job_title, experience_level
order by total_jobs desc;

select job_title, experience_level, company_size,
count(*) as total_jobs
from data_science_jobs_salaries
group by job_title, experience_level, company_size
order by total_jobs desc;

select job_title, salary
from data_science_jobs_salaries
where salary > 50000;

select experience_level, salary
from data_science_jobs_salaries
where experience_level='Executive-level/Director'
order by salary desc;

select experience_level, salary, remote_ratio 
from data_science_jobs_salaries
group by experience_level, salary, remote_ratio
order by remote_ratio<100;

SELECT 
    experience_level,
    salary,
    remote_ratio
FROM data_science_jobs_salaries
WHERE remote_ratio < 100
ORDER BY remote_ratio DESC;

select job_title, salary, remote_ratio
from data_science_jobs_salaries
where remote_ratio=100;

select * from data_science_jobs_salaries
where salary > 200000;

select job_title, company_size, salary
from data_science_jobs_salaries
where company_size='Large Company';

select * from data_science_jobs_salaries
where job_title='Data Scientist';

 select job_title, salary
 from data_science_jobs_salaries
 where experience_level='Entry-level/Junior' 
 or experience_level='Medium-level/Intermediate';

select job_title, salary
from data_science_jobs_salaries
where salary between 50000 and 100000;

select job_title 
from data_science_jobs_salaries
where job_title like '%Engineer%'; 


select * from Data_Science_Jobs_Salaries;

