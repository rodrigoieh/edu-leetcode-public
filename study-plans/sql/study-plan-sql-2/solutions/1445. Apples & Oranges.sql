-- 1445. Apples & Oranges
-- https://leetcode.com/problems/apples-oranges/

/*
Create table If Not Exists Sales (sale_date date, fruit ENUM('apples', 'oranges'), sold_num int)
Truncate table Sales
insert into Sales (sale_date, fruit, sold_num) values ('2020-05-01', 'apples', '10')
insert into Sales (sale_date, fruit, sold_num) values ('2020-05-01', 'oranges', '8')
insert into Sales (sale_date, fruit, sold_num) values ('2020-05-02', 'apples', '15')
insert into Sales (sale_date, fruit, sold_num) values ('2020-05-02', 'oranges', '15')
insert into Sales (sale_date, fruit, sold_num) values ('2020-05-03', 'apples', '20')
insert into Sales (sale_date, fruit, sold_num) values ('2020-05-03', 'oranges', '0')
insert into Sales (sale_date, fruit, sold_num) values ('2020-05-04', 'apples', '15')
insert into Sales (sale_date, fruit, sold_num) values ('2020-05-04', 'oranges', '16')
*/

-- MS SQL Server 
select sale_date, sum(sold_num) diff
from (
    select 'apples' product, sale_date, sum(sold_num) sold_num from Sales where fruit = 'apples' group by sale_date
    union 
    select 'oranges' product, sale_date, sum(sold_num*-1) sold_num from Sales where fruit = 'oranges' group by sale_date
) tmp
group by sale_date;

-- Oracle
select to_char(sale_date, 'yyyy-mm-dd') sale_date, sum(sold_num) diff
from (
    select 'apples' product, sale_date, sum(sold_num) sold_num from Sales where fruit = 'apples' group by sale_date
    union 
    select 'oranges' product, sale_date, sum(sold_num*-1) sold_num from Sales where fruit = 'oranges' group by sale_date
) tmp
group by sale_date 
order by sale_date;

-- MySQL
select sale_date, sum(sold_num) diff
from (
    select 'apples' product, sale_date, sum(sold_num) sold_num from Sales where fruit = 'apples' group by sale_date
    union 
    select 'oranges' product, sale_date, sum(sold_num*-1) sold_num from Sales where fruit = 'oranges' group by sale_date
) tmp
group by sale_date;