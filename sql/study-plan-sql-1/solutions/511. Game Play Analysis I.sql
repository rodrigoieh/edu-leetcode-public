-- 511. Game Play Analysis I
-- https://leetcode.com/problems/game-play-analysis-i/

/*
Create table If Not Exists Activity (player_id int, device_id int, event_date date, games_played int)
Truncate table Activity
insert into Activity (player_id, device_id, event_date, games_played) values ('1', '2', '2016-03-01', '5')
insert into Activity (player_id, device_id, event_date, games_played) values ('1', '2', '2016-05-02', '6')
insert into Activity (player_id, device_id, event_date, games_played) values ('2', '3', '2017-06-25', '1')
insert into Activity (player_id, device_id, event_date, games_played) values ('3', '1', '2016-03-02', '0')
insert into Activity (player_id, device_id, event_date, games_played) values ('3', '4', '2018-07-03', '5')
*/

-- MS SQL Server 
select player_id, min(event_date) first_login from Activity group by player_id;

-- Oracle
select player_id, to_char(min(event_date),'yyyy-mm-dd') first_login from Activity group by player_id;

-- MySQL
select player_id, min(event_date) first_login from Activity group by player_id;