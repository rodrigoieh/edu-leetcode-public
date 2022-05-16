-- 1693. Daily Leads and Partners
-- https://leetcode.com/problems/daily-leads-and-partners/

/*
Create table If Not Exists DailySales(date_id date, make_name varchar(20), lead_id int, partner_id int)
Truncate table DailySales
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-8', 'toyota', '0', '1')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-8', 'toyota', '1', '0')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-8', 'toyota', '1', '2')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-7', 'toyota', '0', '2')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-7', 'toyota', '0', '1')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-8', 'honda', '1', '2')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-8', 'honda', '2', '1')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-7', 'honda', '0', '1')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-7', 'honda', '1', '2')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-7', 'honda', '2', '1')
*/

-- MS SQL Server 
select 
    date_id,
    make_name,
    (select count(distinct lead_id) from DailySales b where a.date_id = b.date_id and a.make_name = b.make_name) unique_leads,
    (select count(distinct partner_id ) from DailySales b where a.date_id = b.date_id and a.make_name = b.make_name) unique_partners
from DailySales a 
group by date_id, make_name
order by date_id;

-- Oracle
select 
    to_char(date_id, 'yyyy-mm-dd') date_id,
    make_name,
    (select count(distinct lead_id) from DailySales b where a.date_id = b.date_id and a.make_name = b.make_name) unique_leads,
    (select count(distinct partner_id ) from DailySales b where a.date_id = b.date_id and a.make_name = b.make_name) unique_partners
from DailySales a 
group by date_id, make_name
order by date_id;

-- MySQL
select 
    date_id,
    make_name,
    (select count(distinct lead_id) from DailySales b where a.date_id = b.date_id and a.make_name = b.make_name) unique_leads,
    (select count(distinct partner_id ) from DailySales b where a.date_id = b.date_id and a.make_name = b.make_name) unique_partners
from DailySales a 
group by date_id, make_name
order by date_id;