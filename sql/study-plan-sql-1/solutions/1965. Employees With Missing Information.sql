-- 1965. Employees With Missing Information
-- https://leetcode.com/problems/employees-with-missing-information/

/*
Create table If Not Exists Employees (employee_id int, name varchar(30))
Create table If Not Exists Salaries (employee_id int, salary int)
Truncate table Employees
insert into Employees (employee_id, name) values ('2', 'Crew')
insert into Employees (employee_id, name) values ('4', 'Haven')
insert into Employees (employee_id, name) values ('5', 'Kristian')
Truncate table Salaries
insert into Salaries (employee_id, salary) values ('5', '76071')
insert into Salaries (employee_id, salary) values ('1', '22517')
insert into Salaries (employee_id, salary) values ('4', '63539')
*/

-- MS SQL Server
select a.employee_id employee_id from Employees a where not exists(select 1 from Salaries b where a.employee_id = b.employee_id)
union all
select a.employee_id employee_id from Salaries a where not exists(select 1 from Employees b where a.employee_id = b.employee_id)
order by employee_id

-- Oracle
select a.employee_id employee_id from Employees a where not exists(select 1 from Salaries b where a.employee_id = b.employee_id)
union all
select a.employee_id employee_id from Salaries a where not exists(select 1 from Employees b where a.employee_id = b.employee_id)
order by employee_id

-- MySQL
select a.employee_id employee_id from Employees a where not exists(select 1 from Salaries b where a.employee_id = b.employee_id)
union all
select a.employee_id employee_id from Salaries a where not exists(select 1 from Employees b where a.employee_id = b.employee_id)
order by employee_id