-- 586. Customer Placing the Largest Number of Orders
-- https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/

/*
Create table If Not Exists orders (order_number int, customer_number int)
Truncate table orders
insert into orders (order_number, customer_number) values ('1', '1')
insert into orders (order_number, customer_number) values ('2', '2')
insert into orders (order_number, customer_number) values ('3', '3')
insert into orders (order_number, customer_number) values ('4', '3')
*/

-- MS SQL Server 
select top 1 customer_number
from Orders 
group by customer_number
order by count(1) desc;

-- Oracle
select customer_number from (select customer_number from Orders group by customer_number order by count(1) desc)
where rownum = 1;

-- MySQL
select customer_number
from Orders 
group by customer_number
order by count(1) desc
limit 1;