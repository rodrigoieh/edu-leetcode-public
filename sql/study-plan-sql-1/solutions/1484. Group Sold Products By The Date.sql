-- 1484. Group Sold Products By The Date
-- https://leetcode.com/problems/group-sold-products-by-the-date/

/*
Create table If Not Exists Activities (sell_date date, product varchar(20))
Truncate table Activities
insert into Activities (sell_date, product) values ('2020-05-30', 'Headphone')
insert into Activities (sell_date, product) values ('2020-06-01', 'Pencil')
insert into Activities (sell_date, product) values ('2020-06-02', 'Mask')
insert into Activities (sell_date, product) values ('2020-05-30', 'Basketball')
insert into Activities (sell_date, product) values ('2020-06-01', 'Bible')
insert into Activities (sell_date, product) values ('2020-06-02', 'Mask')
insert into Activities (sell_date, product) values ('2020-05-30', 'T-Shirt')
*/

-- MS SQL Server
select
     a.sell_date,
     count(distinct(product)) num_sold,
     stuff((
          select distinct ',' + b.product
          from Activities b
          where a.sell_date = b.sell_date
          for xml path(''), type).value('.', 'nvarchar(max)'), 1, 1, '') as products
from Activities a 
group by a.sell_date;

-- MySQL 
select sell_date, count(distinct product) num_sold, group_concat(distinct product order by product asc) products from Activities group by sell_date;

-- Oracle 19c
-- select sell_date, count(distinct product) num_sold, listagg(distinct product, ',') within group (order by product) products from Activities group by sell_date;

-- Oracle 18c and earlier
select 
    to_char(sell_date, 'yyyy-mm-dd') sell_date, 
    count(distinct product) num_sold, 
    listagg(product, ',') within group (order by product) products 
from (select distinct sell_date, product from Activities)
group by sell_date;



-- References
-- https://syntaxfix.com/question/15573/how-to-make-a-query-with-group-concat-in-sql-server
-- https://www.codeproject.com/Articles/691102/String-Aggregation-in-the-World-of-SQL-Server
-- https://stackoverflow.com/questions/11510870/listagg-in-oracle-to-return-distinct-values
-- https://stackoverflow.com/questions/11510870/listagg-in-oracle-to-return-distinct-values/52020332#52020332