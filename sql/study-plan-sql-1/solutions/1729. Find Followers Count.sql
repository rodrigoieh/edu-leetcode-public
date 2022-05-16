-- 1729. Find Followers Count
-- https://leetcode.com/problems/find-followers-count/

/*
Create table If Not Exists Followers(user_id int, follower_id int)
Truncate table Followers
insert into Followers (user_id, follower_id) values ('0', '1')
insert into Followers (user_id, follower_id) values ('1', '0')
insert into Followers (user_id, follower_id) values ('2', '0')
insert into Followers (user_id, follower_id) values ('2', '1')
*/

-- MS SQL Server 
select user_id, count(distinct follower_id) followers_count from Followers group by user_id;

-- Oracle
select user_id, count(distinct follower_id) followers_count from Followers group by user_id order by user_id;

-- MySQL
select user_id, count(distinct follower_id) followers_count from Followers group by user_id;