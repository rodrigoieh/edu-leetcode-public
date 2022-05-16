-- 1393. Capital Gain/Loss
-- https://leetcode.com/problems/capital-gainloss/

/*
Create Table If Not Exists Stocks (stock_name varchar(15), operation ENUM('Sell', 'Buy'), operation_day int, price int)
Truncate table Stocks
insert into Stocks (stock_name, operation, operation_day, price) values ('Leetcode', 'Buy', '1', '1000')
insert into Stocks (stock_name, operation, operation_day, price) values ('Corona Masks', 'Buy', '2', '10')
insert into Stocks (stock_name, operation, operation_day, price) values ('Leetcode', 'Sell', '5', '9000')
insert into Stocks (stock_name, operation, operation_day, price) values ('Handbags', 'Buy', '17', '30000')
insert into Stocks (stock_name, operation, operation_day, price) values ('Corona Masks', 'Sell', '3', '1010')
insert into Stocks (stock_name, operation, operation_day, price) values ('Corona Masks', 'Buy', '4', '1000')
insert into Stocks (stock_name, operation, operation_day, price) values ('Corona Masks', 'Sell', '5', '500')
insert into Stocks (stock_name, operation, operation_day, price) values ('Corona Masks', 'Buy', '6', '1000')
insert into Stocks (stock_name, operation, operation_day, price) values ('Handbags', 'Sell', '29', '7000')
insert into Stocks (stock_name, operation, operation_day, price) values ('Corona Masks', 'Sell', '10', '10000')
*/

-- MS SQL Server 
select 
    stock_name, 
    sum(case when operation = 'Buy' then price * -1 when operation = 'Sell' then price else 0 end) capital_gain_loss
from Stocks
group by stock_name;

-- Oracle
select 
    stock_name, 
    sum(case when operation = 'Buy' then price * -1 when operation = 'Sell' then price else 0 end) capital_gain_loss
from Stocks
group by stock_name;

-- MySQL
select 
    stock_name, 
    sum(case when operation = 'Buy' then price * -1 when operation = 'Sell' then price else 0 end) capital_gain_loss
from Stocks
group by stock_name;