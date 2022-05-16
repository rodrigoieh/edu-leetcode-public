-- 595. Big Countries
-- https://leetcode.com/problems/big-countries/

/*
Create table If Not Exists World (name varchar(255), continent varchar(255), area int, population int, gdp int)
Truncate table World
insert into World (name, continent, area, population, gdp) values ('Afghanistan', 'Asia', '652230', '25500100', '20343000000')
insert into World (name, continent, area, population, gdp) values ('Albania', 'Europe', '28748', '2831741', '12960000000')
insert into World (name, continent, area, population, gdp) values ('Algeria', 'Africa', '2381741', '37100000', '188681000000')
insert into World (name, continent, area, population, gdp) values ('Andorra', 'Europe', '468', '78115', '3712000000')
insert into World (name, continent, area, population, gdp) values ('Angola', 'Africa', '1246700', '20609294', '100990000000')
*/

-- MS SQL Server
select name, population, area from World where area >= 3000000 or population >= 25000000;

-- Oracle
select name, population, area from World where area >= 3000000 or population >= 25000000;

-- MySQL
select name, population, area from World where area >= 3000000 or population >= 25000000;