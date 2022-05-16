-- 1581. Customer Who Visited but Did Not Make Any Transactions
-- https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/

/*
Create table If Not Exists Visits(visit_id int, customer_id int)
Create table If Not Exists Transactions(transaction_id int, visit_id int, amount int)
Truncate table Visits
insert into Visits (visit_id, customer_id) values ('1', '23')
insert into Visits (visit_id, customer_id) values ('2', '9')
insert into Visits (visit_id, customer_id) values ('4', '30')
insert into Visits (visit_id, customer_id) values ('5', '54')
insert into Visits (visit_id, customer_id) values ('6', '96')
insert into Visits (visit_id, customer_id) values ('7', '54')
insert into Visits (visit_id, customer_id) values ('8', '54')
Truncate table Transactions
insert into Transactions (transaction_id, visit_id, amount) values ('2', '5', '310')
insert into Transactions (transaction_id, visit_id, amount) values ('3', '5', '300')
insert into Transactions (transaction_id, visit_id, amount) values ('9', '5', '200')
insert into Transactions (transaction_id, visit_id, amount) values ('12', '1', '910')
insert into Transactions (transaction_id, visit_id, amount) values ('13', '2', '970')
*/

-- MS SQL Server 
select a.customer_id customer_id, count(1) count_no_trans
from Visits a where not exists(select 1 from Transactions b where a.visit_id = b.visit_id) 
group by customer_id;

-- Oracle
select a.customer_id customer_id, count(1) count_no_trans
from Visits a where not exists(select 1 from Transactions b where a.visit_id = b.visit_id) 
group by customer_id;

-- MySQL
select a.customer_id customer_id, count(1) count_no_trans
from Visits a where not exists(select 1 from Transactions b where a.visit_id = b.visit_id) 
group by customer_id;
