-- 196. Delete Duplicate Emails
-- https://leetcode.com/problems/delete-duplicate-emails/

/*
Create table If Not Exists Person (Id int, Email varchar(255))
Truncate table Person
insert into Person (id, email) values ('1', 'john@example.com')
insert into Person (id, email) values ('2', 'bob@example.com')
insert into Person (id, email) values ('3', 'john@example.com')
*/

-- MS SQL Server
delete a from Person a, Person b where a.email = b.email and a.id > b.id 

-- Oracle
delete from Person a where exists (select 1 from Person b where a.email = b.email and a.id > b.id);

-- MySQL
delete a from Person a, Person b where a.email = b.email and a.id > b.id 