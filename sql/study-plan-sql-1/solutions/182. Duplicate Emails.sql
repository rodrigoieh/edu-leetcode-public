-- 182. Duplicate Emails
-- https://leetcode.com/problems/duplicate-emails/

/*
Create table If Not Exists Person (id int, email varchar(255))
Truncate table Person
insert into Person (id, email) values ('1', 'a@b.com')
insert into Person (id, email) values ('2', 'c@d.com')
insert into Person (id, email) values ('3', 'a@b.com')
*/

-- MS SQL Server 
select email from (select email Email, count(1) cnt from Person group by email having count(1) > 1) tmp;

-- Oracle
select email from (select email Email, count(1) cnt from Person group by email having count(1) > 1) tmp;

-- MySQL
select email from (select email Email, count(1) cnt from Person group by email having cnt > 1) tmp;