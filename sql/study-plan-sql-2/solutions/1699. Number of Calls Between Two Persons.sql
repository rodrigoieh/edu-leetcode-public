-- 1699. Number of Calls Between Two Persons
-- https://leetcode.com/problems/number-of-calls-between-two-persons/

/*
Create table If Not Exists Calls (from_id int, to_id int, duration int)
Truncate table Calls
insert into Calls (from_id, to_id, duration) values ('1', '2', '59')
insert into Calls (from_id, to_id, duration) values ('2', '1', '11')
insert into Calls (from_id, to_id, duration) values ('1', '3', '20')
insert into Calls (from_id, to_id, duration) values ('3', '4', '100')
insert into Calls (from_id, to_id, duration) values ('3', '4', '200')
insert into Calls (from_id, to_id, duration) values ('3', '4', '200')
insert into Calls (from_id, to_id, duration) values ('4', '3', '499')
*/

-- MS SQL Server 
select person1, person2, sum(call_count) call_count, sum(total_duration) total_duration 
from (
    select from_id person1, to_id person2, count(1) call_count, sum(duration) total_duration
    from Calls 
    where from_id < to_id
    group by  from_id, to_id
    union all 
    select to_id person1, from_id person2, count(1) call_count, sum(duration) total_duration
    from Calls 
    where from_id > to_id
    group by  to_id, from_id
) as tmp
group by person1, person2

-- Oracle
select person1, person2, sum(call_count) call_count, sum(total_duration) total_duration 
from (
    select from_id person1, to_id person2, count(1) call_count, sum(duration) total_duration
    from Calls 
    where from_id < to_id
    group by  from_id, to_id
    union 
    select to_id person1, from_id person2, count(1) call_count, sum(duration) total_duration
    from Calls 
    where from_id > to_id
    group by  to_id, from_id
) tmp
group by person1, person2

-- MySQL
select person1, person2, sum(call_count) call_count, sum(total_duration) total_duration 
from (
    select from_id person1, to_id person2, count(1) call_count, sum(duration) total_duration
    from Calls 
    where from_id < to_id
    group by  from_id, to_id
    union all 
    select to_id person1, from_id person2, count(1) call_count, sum(duration) total_duration
    from Calls 
    where from_id > to_id
    group by  to_id, from_id
) as tmp
group by person1, person2