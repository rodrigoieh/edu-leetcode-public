-- 197. Rising Temperature
-- https://leetcode.com/problems/rising-temperature/

/*
Create table If Not Exists Weather (id int, recordDate date, temperature int)
Truncate table Weather
insert into Weather (id, recordDate, temperature) values ('1', '2015-01-01', '10')
insert into Weather (id, recordDate, temperature) values ('2', '2015-01-02', '25')
insert into Weather (id, recordDate, temperature) values ('3', '2015-01-03', '20')
insert into Weather (id, recordDate, temperature) values ('4', '2015-01-04', '30')
*/

-- MS SQL Server 
select b.id id
from Weather a, Weather b
where a.recordDate < b.recordDate and datediff(day,a.recordDate,b.recordDate) = 1 and a.temperature < b.temperature;

-- Oracle
select b.id
from Weather a, Weather b
where a.recordDate < b.recordDate and abs(to_date(a.recordDate,'yyyy-MM-dd')-to_date(b.recordDate,'yyyy-MM-dd')) = 1 and a.temperature < b.temperature;

-- MySQL
select b.id id
from Weather a, Weather b
where a.recordDate < b.recordDate and abs(datediff(a.recordDate,b.recordDate)) = 1 and a.temperature < b.temperature;

/*
{"headers": {"Weather": ["id", "recordDate", "temperature"]}, "rows": {"Weather": [[1, "2015-01-01", 10], [2, "2015-01-02", 25], [3, "2015-01-03", 20], [4, "2015-01-04", 30]]}}

{"headers": {"Weather": ["id", "recordDate", "temperature"]}, "rows": {"Weather": [[1, "2000-12-16", 3], [2, "2000-12-15", -1]]}}
*/
