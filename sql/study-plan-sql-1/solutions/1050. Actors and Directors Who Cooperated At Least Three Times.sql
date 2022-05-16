-- 1050. Actors and Directors Who Cooperated At Least Three Times
-- https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/

/*
Create table If Not Exists ActorDirector (actor_id int, director_id int, timestamp int)
Truncate table ActorDirector
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '1', '0')
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '1', '1')
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '1', '2')
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '2', '3')
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '2', '4')
insert into ActorDirector (actor_id, director_id, timestamp) values ('2', '1', '5')
insert into ActorDirector (actor_id, director_id, timestamp) values ('2', '1', '6')
*/

-- MS SQL Server 
select actor_id, director_id from (select actor_id, director_id, count(1) cnt from ActorDirector group by actor_id, director_id having count(1) > 2) tmp;

-- Oracle
select actor_id, director_id from (select actor_id, director_id, count(1) cnt from ActorDirector group by actor_id, director_id having count(1) > 2) tmp;

-- MySQL
select actor_id, director_id from (select actor_id, director_id, count(1) cnt from ActorDirector group by actor_id, director_id having cnt > 2) tmp;