-- 1667. Fix Names in a Table
-- https://leetcode.com/problems/fix-names-in-a-table/

/*
Create table If Not Exists Users (user_id int, name varchar(40))
Truncate table Users
insert into Users (user_id, name) values ('1', 'aLice')
insert into Users (user_id, name) values ('2', 'bOB')
*/

-- Oracle 
select user_id, concat(upper(substr(name,1,1)), lower(substr(name,2,length(name)))) as name from Users order by user_id;

-- MS SQL Server 
select user_id, concat(upper(left(name,1)), lower(right(name,len(name)-1))) as name from Users order by user_id;

-- MySQL 
select user_id, concat(upper(substring(name,1,1)), lower(substring(name,2,length(name)))) as name from Users order by user_id;