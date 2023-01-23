-- 1873. Calculate Special Bonus
-- https://leetcode.com/problems/calculate-special-bonus/

/*
Create table If Not Exists Employees (employee_id int, name varchar(30), salary int)
Truncate table Employees
insert into Employees (employee_id, name, salary) values ('2', 'Meir', '3000')
insert into Employees (employee_id, name, salary) values ('3', 'Michael', '3800')
insert into Employees (employee_id, name, salary) values ('7', 'Addilyn', '7400')
insert into Employees (employee_id, name, salary) values ('8', 'Juan', '6100')
insert into Employees (employee_id, name, salary) values ('9', 'Kannon', '7700')
*/

-- MS SQL Server
select 
    employee_id, 
    case when left(name, 1) != 'M' and employee_id % 2 = 1 then salary else 0 end as bonus  
from Employees;

-- Oracle
select 
    employee_id, 
    case when substr(name,1,1) != 'M' and mod(employee_id,2) = 1 then salary else 0 end as bonus  
from Employees;

-- MySQL
select 
    employee_id, 
    case when left(name, 1) != 'M' and employee_id % 2 = 1 then salary else 0 end as bonus  
from Employees;