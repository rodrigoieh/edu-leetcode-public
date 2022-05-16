-- 176. Second Highest Salary
-- https://leetcode.com/problems/second-highest-salary/

/*
Create table If Not Exists Employee (id int, salary int)
Truncate table Employee
insert into Employee (id, salary) values ('1', '100')
insert into Employee (id, salary) values ('2', '200')
insert into Employee (id, salary) values ('3', '300')
*/

-- MS SQL Server 
select 
case 
when (select count(1) from (select distinct salary from Employee group by salary) tmp) > 1 
then (select top 1 salary from (select distinct top 2 salary from Employee order by salary desc) tmp order by salary asc) 
else null 
end as SecondHighestSalary

-- Oracle
with a as (select distinct salary from Employee order by salary desc),
     b as (select * from a where rownum <= 2 group by salary),
     c as (select count(1) cnt from b)     
select case when coalesce(c.cnt,0) > 1 then (select min(salary) from b) else null end SecondHighestSalary from c 

-- MySQL
select
if(
(select count(1) from (select distinct salary from Employee group by salary) a) > 1,
(select salary from (select distinct salary from Employee order by salary desc limit 2) b order by salary asc limit 1), 
 null
) as SecondHighestSalary


/*
{"headers":{"Employee":["id","salary"]},"rows":{"Employee":[[1,100]]}}
{"headers":{"Employee":["id","salary"]},"rows":{"Employee":[[1,100],[2,100]]}}
{"headers":{"Employee":["id","salary"]},"rows":{"Employee":[[1,100],[2,100],[3,200]]}}
{"headers":{"Employee":["id","salary"]},"rows":{"Employee":[[1,100],[2,100],[3,200],[4,200]]}}
*/