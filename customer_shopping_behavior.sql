create table customer_shopping_behavior,
customer_id int primary key,
age int,
gender varchar(50),
item_purchased text,
category text,
purchase_amount_(usd),
location varchar(25),
size varchar(10),
color text,
season varchar (20),
review_rating decimal(2,1),
subscription_status varchar(10),
shipping_type varchar(30),
discount_applied boolean,
previous_purchases int,
payment_method var,

select * from customer_shopping_behavior;

select customer_id, age , gender from customer_shopping_behavior;

select * from customer_shopping_behavior where purchase_amount_usd >100;

SELECT customer_id, SUM(purchase_amount_usd) AS total_spent
FROM customer_shopping_behavior
GROUP BY customer_id;

SELECT item_purchased, AVG(purchase_amount_usd) AS avg_spent
FROM customer_shopping_behavior
GROUP BY item_purchased;

SELECT customer_id, SUM(purchase_amount_usd) AS total_spent
FROM customer_shopping_behavior
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;


SELECT location, SUM(purchase_amount_usd) AS total_sales
FROM customer_shopping_behavior
GROUP BY location;

select avg(purchase_amount_usd) as avg_purchase_amount
from customer_shopping_behavior;

select round(avg(purchase_amount_usd)) as avg_purchase_amount
from customer_shopping_behavior;

select count(distinct customer_id) as total_customers
from customer_shopping_behavior;

select gender, avg(purchase_amount_usd) as avg_spending
from customer_shopping_behavior 
group by gender;

select gender, round(avg(purchase_amount_usd)) as avg_spending
from customer_shopping_behavior
group by gender;

select * from customer_shopping_behavior 
where purchase_amount_usd > 
(select avg(purchase_amount_usd) 
from customer_shopping_behavior);

select customer_id, previous_purchases
from customer_shopping_behavior
where previous_purchases>10 
order by previous_purchases desc;

select * from customer_shopping_behavior
where review_rating is null;

select * from customer_shopping_behavior
where payment_method is null 
or shipping_type is null 
or review_rating is null
or discount_applied is null;

SELECT payment_method,
       COUNT(*) AS total_usage
FROM customer_shopping_behavior
GROUP BY payment_method;

select category, sum(purchase_amount_usd) as total_sales
from customer_shopping_behavior
group by category
order by total_sales desc;

SELECT 
    ROUND(
        (COUNT(CASE WHEN previous_purchases > 5 THEN 1 END) * 100.0)
        / COUNT(*),
    2) AS retention_rate
FROM customer_shopping_behavior;





