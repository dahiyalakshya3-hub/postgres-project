create table ecommerce_sales_data (
order_date date,
product_name varchar(50),
category varchar(20),
region varchar(20),
quantity int,
sales numeric(10,2),
profit decimal(10,2)


);

select * from ecommerce_sales_data;

select avg(sales) as avg_sales
from ecommerce_sales_data;

select round(avg(sales)) as avg_sales
from ecommerce_sales_data;

select sum(sales) as total_sales
from ecommerce_sales_data;

select product_name, category, sum(sales) as total_sales
from ecommerce_sales_data
group by product_name, category
order by total_sales desc;

select order_date, sum(sales) as total_sales
from ecommerce_sales_data
group by order_date
order by total_sales desc;


select order_date, sum(sales) as total_sales
from ecommerce_sales_data
group by order_date
order by total_sales desc
limit 1 ;

select order_date, sum(sales) as total_sales
from ecommerce_sales_data
group by order_date
order by total_sales desc
limit 1 offset 2;

select region, sum(sales) as total_sales
from ecommerce_sales_data
group by region
order by total_sales desc;

select category, sum(profit) as total_profit
from ecommerce_sales_data
group by category
order by total_profit desc;

select product_name, sum(sales) as total_sales
from ecommerce_sales_data
group by product_name
order by total_sales desc
limit 3;

select category, avg(sales) as avg_sales
from ecommerce_sales_data
group by category
order by avg_sales desc;

select region, sum(profit) as total_profit
from ecommerce_sales_data
group by region 
order by total_profit asc
limit 1;

select  product_name,sum(quantity) as total_quantity 
from ecommerce_sales_data
group by product_name
having sum(quantity) > 10;

SELECT product_name, sales, SUM(sales) OVER () AS total_sales
FROM ecommerce_sales_data;

SELECT product_name, SUM(sales) AS total_sales,
RANK() OVER (ORDER BY SUM(sales) DESC) AS sales_rank
FROM ecommerce_sales_data
GROUP BY product_name;

SELECT region, product_name, SUM(sales) AS total_sales,
RANK() OVER ( PARTITION BY region 
ORDER BY SUM(sales) DESC) AS region_sales_rank
FROM ecommerce_sales_data
GROUP BY region, product_name;

SELECT order_date, product_name, sales,
SUM(sales) OVER ( ORDER BY order_date) AS running_total_sales
FROM ecommerce_sales_data;

select * from ecommerce_sales_data;


