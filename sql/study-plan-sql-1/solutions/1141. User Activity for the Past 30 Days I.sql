-- 1141. User Activity for the Past 30 Days I
-- https://leetcode.com/problems/user-activity-for-the-past-30-days-i/

/*
Create table If Not Exists Activity (user_id int, session_id int, activity_date date, activity_type ENUM('open_session', 'end_session', 'scroll_down', 'send_message'))
Truncate table Activity
insert into Activity (user_id, session_id, activity_date, activity_type) values ('1', '1', '2019-07-20', 'open_session')
insert into Activity (user_id, session_id, activity_date, activity_type) values ('1', '1', '2019-07-20', 'scroll_down')
insert into Activity (user_id, session_id, activity_date, activity_type) values ('1', '1', '2019-07-20', 'end_session')
insert into Activity (user_id, session_id, activity_date, activity_type) values ('2', '4', '2019-07-20', 'open_session')
insert into Activity (user_id, session_id, activity_date, activity_type) values ('2', '4', '2019-07-21', 'send_message')
insert into Activity (user_id, session_id, activity_date, activity_type) values ('2', '4', '2019-07-21', 'end_session')
insert into Activity (user_id, session_id, activity_date, activity_type) values ('3', '2', '2019-07-21', 'open_session')
insert into Activity (user_id, session_id, activity_date, activity_type) values ('3', '2', '2019-07-21', 'send_message')
insert into Activity (user_id, session_id, activity_date, activity_type) values ('3', '2', '2019-07-21', 'end_session')
insert into Activity (user_id, session_id, activity_date, activity_type) values ('4', '3', '2019-06-25', 'open_session')
insert into Activity (user_id, session_id, activity_date, activity_type) values ('4', '3', '2019-06-25', 'end_session')
*/

-- MS SQL Server 
select activity_date day, count(distinct user_id) active_users
from Activity
where activity_date between '2019-06-28' and '2019-07-27'
group by activity_date
having count(1) > 0

-- Oracle
select to_char(activity_date, 'yyyy-mm-dd') day, count(distinct user_id) active_users
from Activity
where activity_date between '2019-06-28' and '2019-07-27'
group by activity_date
having count(1) > 0

-- MySQL
select activity_date day, count(distinct user_id) active_users
from Activity
where activity_date between '2019-06-28' and '2019-07-27'
group by activity_date
having count(1) > 0

/*
{"headers":{"Activity":["user_id","session_id","activity_date","activity_type"]},"rows":{"Activity":[[93,50,"2019-06-17","send_message"],[18,143,"2019-07-26","send_message"],[29,173,"2019-06-13","open_session"],[65,32,"2019-06-20","send_message"],[46,149,"2019-05-30","end_session"],[22,200,"2019-05-26","scroll_down"],[63,128,"2019-06-12","open_session"],[98,97,"2019-06-05","end_session"],[58,153,"2019-07-05","send_message"],[63,45,"2019-06-03","send_message"],[47,61,"2019-05-27","send_message"],[14,183,"2019-06-20","scroll_down"],[16,135,"2019-07-18","scroll_down"],[15,121,"2019-05-12","scroll_down"],[18,99,"2019-06-01","send_message"],[16,138,"2019-05-24","scroll_down"],[86,68,"2019-05-25","end_session"],[18,134,"2019-07-21","send_message"],[51,136,"2019-05-18","open_session"],[66,1,"2019-07-07","open_session"],[78,120,"2019-07-23","send_message"],[54,171,"2019-06-10","send_message"],[38,7,"2019-06-10","send_message"],[47,94,"2019-06-11","open_session"],[57,106,"2019-07-01","send_message"],[93,10,"2019-06-22","scroll_down"],[26,116,"2019-06-07","scroll_down"],[78,62,"2019-07-03","open_session"],[58,137,"2019-05-19","send_message"],[2,87,"2019-05-03","send_message"],[64,81,"2019-07-25","scroll_down"],[62,28,"2019-06-21","send_message"],[51,136,"2019-06-06","end_session"],[2,87,"2019-06-08","scroll_down"],[80,95,"2019-07-22","send_message"],[39,73,"2019-07-05","scroll_down"],[15,118,"2019-06-07","end_session"],[39,53,"2019-07-24","scroll_down"],[62,187,"2019-05-15","open_session"],[55,8,"2019-06-03","send_message"],[80,115,"2019-06-19","open_session"],[4,110,"2019-07-13","open_session"],[69,191,"2019-05-22","send_message"],[35,36,"2019-06-28","send_message"],[48,108,"2019-06-22","open_session"],[80,115,"2019-06-24","end_session"],[58,137,"2019-06-21","scroll_down"],[49,147,"2019-06-20","scroll_down"],[71,90,"2019-07-03","open_session"],[92,145,"2019-05-01","scroll_down"],[66,1,"2019-05-09","scroll_down"],[39,33,"2019-05-18","send_message"],[50,79,"2019-05-01","send_message"],[93,50,"2019-07-19","end_session"],[46,149,"2019-05-19","end_session"],[64,81,"2019-05-02","end_session"],[39,53,"2019-07-24","open_session"],[48,108,"2019-07-26","open_session"],[51,136,"2019-05-18","scroll_down"],[83,103,"2019-06-13","send_message"],[80,95,"2019-06-08","send_message"],[4,110,"2019-05-02","send_message"],[53,83,"2019-05-31","end_session"],[36,22,"2019-06-07","end_session"],[92,145,"2019-05-29","scroll_down"],[39,53,"2019-05-03","scroll_down"],[62,93,"2019-07-21","open_session"],[2,87,"2019-05-23","end_session"],[70,12,"2019-07-13","open_session"],[7,199,"2019-05-26","end_session"],[39,92,"2019-07-17","end_session"],[31,182,"2019-07-01","scroll_down"],[2,38,"2019-05-04","end_session"],[64,3,"2019-05-04","scroll_down"],[44,192,"2019-06-29","end_session"],[98,123,"2019-06-01","send_message"],[48,196,"2019-06-15","open_session"],[7,30,"2019-07-25","send_message"],[17,6,"2019-06-26","end_session"],[65,32,"2019-06-28","send_message"],[93,10,"2019-06-09","scroll_down"],[91,113,"2019-06-21","end_session"],[4,15,"2019-06-04","end_session"],[45,154,"2019-05-01","scroll_down"],[57,106,"2019-07-13","open_session"],[47,61,"2019-07-11","send_message"],[41,107,"2019-05-21","open_session"],[44,78,"2019-06-14","end_session"],[14,122,"2019-05-10","open_session"],[24,165,"2019-06-13","scroll_down"],[47,94,"2019-06-15","send_message"],[7,9,"2019-07-01","send_message"],[80,95,"2019-07-03","send_message"],[22,200,"2019-07-02","send_message"],[95,148,"2019-06-21","send_message"],[15,121,"2019-07-24","scroll_down"],[66,1,"2019-05-02","end_session"],[39,194,"2019-07-04","send_message"],[27,189,"2019-06-17","send_message"],[98,123,"2019-06-22","open_session"],[30,14,"2019-05-18","scroll_down"],[4,60,"2019-06-06","open_session"],[67,190,"2019-06-21","send_message"],[6,51,"2019-07-22","end_session"],[26,5,"2019-05-09","open_session"],[27,189,"2019-06-24","scroll_down"],[24,165,"2019-05-01","send_message"],[44,105,"2019-07-07","open_session"],[57,106,"2019-06-19","end_session"],[39,73,"2019-07-17","end_session"],[86,68,"2019-07-23","send_message"],[4,110,"2019-06-10","open_session"],[29,59,"2019-05-14","open_session"],[35,127,"2019-05-31","send_message"],[4,146,"2019-05-14","scroll_down"],[63,76,"2019-05-23","scroll_down"],[4,41,"2019-07-16","end_session"],[26,77,"2019-06-04","end_session"],[41,107,"2019-05-30","open_session"],[23,140,"2019-07-14","end_session"],[39,194,"2019-05-23","send_message"],[60,180,"2019-07-14","end_session"],[81,155,"2019-07-16","end_session"],[78,120,"2019-06-07","open_session"],[93,10,"2019-06-11","open_session"],[27,152,"2019-05-31","open_session"],[57,58,"2019-07-10","end_session"],[14,183,"2019-07-06","open_session"],[7,80,"2019-07-09","scroll_down"],[7,2,"2019-05-08","scroll_down"],[3,25,"2019-05-13","scroll_down"],[43,170,"2019-06-25","open_session"],[37,48,"2019-07-07","open_session"],[65,130,"2019-05-08","scroll_down"],[78,114,"2019-05-23","send_message"],[33,69,"2019-06-20","end_session"],[18,99,"2019-06-11","end_session"],[62,52,"2019-06-19","open_session"],[43,193,"2019-06-05","end_session"],[27,56,"2019-07-20","open_session"],[94,160,"2019-06-29","end_session"],[78,62,"2019-05-15","end_session"],[18,134,"2019-06-22","scroll_down"],[63,45,"2019-05-16","end_session"],[2,38,"2019-05-10","open_session"],[26,44,"2019-05-07","end_session"],[39,194,"2019-07-13","end_session"],[2,87,"2019-05-18","scroll_down"],[83,103,"2019-07-19","scroll_down"],[33,54,"2019-07-17","open_session"],[42,104,"2019-06-09","open_session"],[14,183,"2019-05-22","open_session"],[83,172,"2019-05-01","send_message"],[78,169,"2019-06-02","open_session"],[43,193,"2019-06-10","end_session"],[61,11,"2019-05-13","end_session"],[59,178,"2019-05-21","send_message"],[23,140,"2019-05-04","end_session"],[78,120,"2019-05-30","scroll_down"],[51,136,"2019-05-05","open_session"],[47,61,"2019-07-20","open_session"],[92,20,"2019-05-02","end_session"],[63,39,"2019-06-09","end_session"],[28,18,"2019-07-20","scroll_down"],[22,42,"2019-06-09","scroll_down"],[19,72,"2019-06-12","end_session"],[60,109,"2019-07-10","send_message"],[75,151,"2019-06-19","open_session"],[41,85,"2019-05-08","end_session"],[94,160,"2019-07-24","scroll_down"],[63,45,"2019-05-28","scroll_down"],[39,33,"2019-06-13","send_message"],[92,20,"2019-05-02","end_session"],[63,150,"2019-06-30","scroll_down"],[54,171,"2019-07-12","scroll_down"],[41,85,"2019-07-05","scroll_down"],[10,179,"2019-05-22","end_session"],[56,168,"2019-05-11","end_session"],[61,11,"2019-07-25","end_session"],[38,7,"2019-05-03","open_session"],[39,53,"2019-06-19","scroll_down"],[98,159,"2019-06-22","end_session"],[37,48,"2019-06-17","open_session"],[5,157,"2019-06-14","open_session"],[22,42,"2019-05-14","send_message"],[50,86,"2019-06-21","scroll_down"],[15,121,"2019-06-03","scroll_down"],[64,81,"2019-07-19","open_session"],[1,71,"2019-07-03","open_session"],[1,40,"2019-06-05","send_message"],[45,175,"2019-05-28","open_session"],[85,158,"2019-06-27","end_session"],[61,11,"2019-06-18","send_message"],[23,140,"2019-07-16","scroll_down"],[63,43,"2019-05-07","end_session"],[49,147,"2019-06-22","open_session"],[98,159,"2019-06-20","end_session"],[37,48,"2019-05-27","end_session"],[63,39,"2019-06-26","open_session"],[60,180,"2019-07-26","end_session"],[1,29,"2019-07-05","end_session"],[19,72,"2019-06-21","end_session"],[15,161,"2019-05-28","send_message"],[27,189,"2019-05-16","scroll_down"],[6,35,"2019-06-14","end_session"],[43,144,"2019-06-14","scroll_down"],[57,98,"2019-06-04","end_session"],[82,55,"2019-06-22","scroll_down"],[81,155,"2019-06-21","end_session"],[40,37,"2019-07-13","open_session"],[25,142,"2019-05-20","open_session"],[46,149,"2019-06-30","scroll_down"],[10,179,"2019-07-26","send_message"],[30,139,"2019-05-17","end_session"],[7,199,"2019-07-17","scroll_down"],[80,115,"2019-05-06","scroll_down"],[18,99,"2019-07-11","open_session"],[62,187,"2019-06-22","open_session"],[7,199,"2019-06-13","scroll_down"],[56,168,"2019-05-06","end_session"],[78,62,"2019-05-28","open_session"],[81,119,"2019-06-09","scroll_down"],[7,23,"2019-07-21","end_session"],[81,155,"2019-06-25","end_session"],[91,113,"2019-05-04","end_session"],[84,163,"2019-05-15","end_session"],[41,85,"2019-07-19","scroll_down"],[96,198,"2019-07-17","send_message"],[75,151,"2019-06-19","end_session"],[6,164,"2019-07-08","scroll_down"],[28,18,"2019-07-09","open_session"],[62,28,"2019-05-27","send_message"],[36,22,"2019-05-25","send_message"],[83,103,"2019-07-15","open_session"],[24,165,"2019-07-19","send_message"],[18,143,"2019-05-10","scroll_down"],[83,103,"2019-07-11","send_message"],[80,95,"2019-07-16","scroll_down"],[48,108,"2019-06-05","scroll_down"],[61,47,"2019-05-25","end_session"],[54,177,"2019-05-17","open_session"],[60,109,"2019-05-26","open_session"],[62,93,"2019-05-28","end_session"],[11,186,"2019-06-07","send_message"],[71,100,"2019-06-02","open_session"],[80,141,"2019-05-24","scroll_down"],[57,106,"2019-05-11","scroll_down"],[44,78,"2019-07-08","end_session"],[2,38,"2019-07-06","scroll_down"],[27,152,"2019-06-17","scroll_down"],[71,90,"2019-07-18","open_session"],[98,159,"2019-07-02","scroll_down"],[4,146,"2019-07-06","open_session"],[84,91,"2019-05-21","end_session"],[7,23,"2019-07-12","send_message"],[1,21,"2019-06-06","end_session"],[41,107,"2019-05-01","end_session"],[81,155,"2019-05-31","open_session"],[59,178,"2019-06-15","open_session"],[1,71,"2019-07-23","end_session"],[70,27,"2019-06-17","send_message"],[7,30,"2019-05-04","send_message"],[25,142,"2019-05-04","scroll_down"],[6,51,"2019-05-12","send_message"],[64,3,"2019-07-11","open_session"],[3,195,"2019-05-02","end_session"],[22,74,"2019-07-19","send_message"],[4,15,"2019-05-26","send_message"],[44,192,"2019-05-28","scroll_down"],[62,133,"2019-06-13","open_session"],[51,66,"2019-06-22","send_message"],[30,139,"2019-07-06","open_session"],[61,47,"2019-06-13","end_session"],[44,78,"2019-07-14","scroll_down"],[78,120,"2019-05-20","scroll_down"],[26,5,"2019-07-09","scroll_down"],[40,37,"2019-06-03","open_session"],[28,18,"2019-07-11","send_message"],[56,188,"2019-06-27","send_message"],[57,98,"2019-06-25","end_session"],[26,44,"2019-05-02","send_message"],[85,158,"2019-05-05","open_session"],[58,153,"2019-07-22","open_session"],[10,67,"2019-06-20","end_session"],[39,73,"2019-05-04","end_session"],[56,168,"2019-05-14","send_message"],[84,163,"2019-06-19","scroll_down"],[62,187,"2019-05-02","scroll_down"],[49,147,"2019-06-07","send_message"],[45,175,"2019-06-18","send_message"],[41,85,"2019-07-22","send_message"],[28,174,"2019-06-23","scroll_down"],[53,184,"2019-06-08","open_session"],[81,119,"2019-07-22","open_session"],[7,9,"2019-05-15","scroll_down"],[10,179,"2019-05-29","send_message"],[18,134,"2019-05-30","end_session"],[25,167,"2019-07-18","scroll_down"],[39,53,"2019-05-15","send_message"],[25,167,"2019-07-22","send_message"],[75,151,"2019-07-13","end_session"],[97,13,"2019-06-03","open_session"],[58,153,"2019-07-26","end_session"],[33,54,"2019-05-26","send_message"],[41,107,"2019-06-01","send_message"],[84,91,"2019-05-19","scroll_down"],[53,83,"2019-05-22","send_message"],[55,8,"2019-07-16","send_message"],[37,57,"2019-07-05","open_session"],[44,192,"2019-05-21","open_session"],[30,139,"2019-06-03","send_message"],[66,124,"2019-07-01","scroll_down"],[6,51,"2019-06-15","scroll_down"],[80,95,"2019-07-16","open_session"],[39,33,"2019-05-19","end_session"],[71,102,"2019-07-18","open_session"],[54,171,"2019-06-27","send_message"],[4,146,"2019-07-16","end_session"],[60,109,"2019-07-25","end_session"],[65,32,"2019-06-03","send_message"],[81,119,"2019-05-20","end_session"],[63,128,"2019-05-13","send_message"],[62,187,"2019-06-02","end_session"],[39,73,"2019-05-25","end_session"],[60,109,"2019-06-14","send_message"],[78,197,"2019-07-18","send_message"],[50,86,"2019-07-22","send_message"],[65,130,"2019-06-26","open_session"],[45,175,"2019-05-24","open_session"],[31,182,"2019-06-13","open_session"],[14,122,"2019-07-07","open_session"],[63,43,"2019-07-03","scroll_down"],[7,80,"2019-05-14","end_session"],[93,49,"2019-06-08","send_message"],[1,21,"2019-07-17","send_message"],[6,51,"2019-07-21","send_message"],[98,159,"2019-06-27","end_session"],[51,136,"2019-05-25","scroll_down"],[80,95,"2019-07-02","open_session"],[47,94,"2019-05-09","scroll_down"],[44,84,"2019-07-20","end_session"],[34,46,"2019-07-03","open_session"],[51,136,"2019-07-03","end_session"],[85,158,"2019-06-17","open_session"],[7,2,"2019-06-28","end_session"],[97,13,"2019-05-31","scroll_down"],[61,47,"2019-06-11","scroll_down"],[25,131,"2019-07-06","end_session"],[39,73,"2019-06-24","end_session"],[98,123,"2019-05-09","scroll_down"],[71,102,"2019-06-19","end_session"],[41,185,"2019-07-04","end_session"],[98,159,"2019-07-14","open_session"],[54,177,"2019-07-14","end_session"],[10,67,"2019-07-08","end_session"],[1,29,"2019-07-16","send_message"],[98,181,"2019-05-25","send_message"],[88,88,"2019-07-16","scroll_down"],[45,154,"2019-07-11","send_message"],[84,163,"2019-06-05","scroll_down"],[7,23,"2019-07-18","scroll_down"],[66,1,"2019-06-27","scroll_down"],[25,131,"2019-05-07","end_session"],[62,187,"2019-05-01","scroll_down"],[62,93,"2019-06-04","open_session"],[71,100,"2019-06-15","end_session"],[63,150,"2019-06-03","send_message"],[66,1,"2019-06-20","scroll_down"],[28,166,"2019-07-19","scroll_down"],[63,76,"2019-05-12","open_session"],[4,110,"2019-05-15","end_session"],[62,133,"2019-05-30","end_session"],[98,97,"2019-07-21","scroll_down"],[60,109,"2019-06-22","open_session"],[69,191,"2019-05-08","open_session"],[65,32,"2019-07-24","open_session"],[27,189,"2019-05-04","send_message"],[7,30,"2019-06-27","send_message"],[75,151,"2019-07-07","open_session"],[96,198,"2019-07-01","send_message"],[92,20,"2019-07-21","scroll_down"],[18,143,"2019-06-09","end_session"],[36,22,"2019-05-23","scroll_down"],[44,84,"2019-05-02","end_session"],[98,123,"2019-05-23","scroll_down"],[7,199,"2019-05-22","open_session"],[62,132,"2019-05-09","send_message"],[26,4,"2019-07-10","send_message"],[23,140,"2019-05-06","open_session"],[40,37,"2019-07-18","open_session"],[78,65,"2019-06-10","open_session"],[28,166,"2019-07-19","open_session"],[63,43,"2019-05-25","end_session"],[10,67,"2019-06-26","end_session"],[51,136,"2019-05-15","scroll_down"],[25,131,"2019-05-11","send_message"],[65,32,"2019-05-13","end_session"],[28,18,"2019-06-20","end_session"],[48,16,"2019-06-16","open_session"],[89,82,"2019-06-25","scroll_down"],[70,12,"2019-05-10","scroll_down"],[44,84,"2019-05-15","open_session"],[83,172,"2019-06-19","end_session"],[39,73,"2019-06-05","send_message"],[59,178,"2019-06-09","send_message"],[51,66,"2019-05-08","end_session"],[66,1,"2019-06-19","open_session"],[4,41,"2019-05-12","end_session"],[96,198,"2019-05-20","end_session"],[66,1,"2019-06-07","send_message"],[38,96,"2019-05-21","scroll_down"],[63,76,"2019-06-29","scroll_down"],[3,25,"2019-05-15","open_session"],[61,11,"2019-06-24","scroll_down"],[30,101,"2019-06-04","send_message"],[81,155,"2019-06-26","open_session"],[62,52,"2019-06-19","end_session"],[30,139,"2019-06-15","end_session"],[84,163,"2019-06-22","end_session"],[44,78,"2019-06-13","open_session"],[35,36,"2019-05-16","scroll_down"],[78,114,"2019-07-02","send_message"],[51,136,"2019-06-19","open_session"],[33,69,"2019-07-22","open_session"],[4,60,"2019-06-23","open_session"],[24,165,"2019-07-18","open_session"],[50,86,"2019-05-03","end_session"],[54,31,"2019-05-20","end_session"],[64,126,"2019-06-23","scroll_down"],[28,174,"2019-07-09","open_session"],[44,192,"2019-05-25","open_session"],[63,76,"2019-05-12","end_session"],[6,35,"2019-07-08","scroll_down"],[88,88,"2019-07-25","open_session"],[62,93,"2019-07-08","end_session"],[44,192,"2019-07-05","end_session"],[1,40,"2019-06-04","end_session"],[15,121,"2019-07-06","send_message"],[78,114,"2019-06-26","end_session"],[93,10,"2019-05-16","open_session"],[7,80,"2019-05-19","send_message"],[66,112,"2019-06-05","open_session"],[96,198,"2019-05-08","send_message"],[38,96,"2019-07-05","open_session"],[69,191,"2019-05-26","send_message"],[43,193,"2019-06-12","end_session"],[64,126,"2019-05-25","scroll_down"],[38,7,"2019-05-27","send_message"],[4,60,"2019-06-20","scroll_down"],[16,138,"2019-06-13","end_session"],[27,189,"2019-05-08","scroll_down"],[84,70,"2019-06-19","scroll_down"],[88,88,"2019-06-22","scroll_down"],[55,8,"2019-05-25","scroll_down"],[27,56,"2019-06-21","scroll_down"],[66,112,"2019-07-07","send_message"],[31,182,"2019-05-05","open_session"],[44,63,"2019-05-20","scroll_down"],[1,40,"2019-05-08","end_session"],[56,168,"2019-07-23","end_session"],[98,97,"2019-07-21","scroll_down"],[81,155,"2019-07-14","open_session"],[95,148,"2019-05-11","end_session"],[66,124,"2019-05-04","scroll_down"],[63,128,"2019-06-11","end_session"],[86,68,"2019-05-12","scroll_down"],[25,131,"2019-05-04","end_session"],[63,45,"2019-06-01","end_session"],[38,96,"2019-06-23","open_session"],[6,51,"2019-07-11","open_session"],[54,171,"2019-05-07","scroll_down"],[7,2,"2019-07-12","open_session"],[50,79,"2019-07-13","scroll_down"],[71,90,"2019-05-18","send_message"],[6,51,"2019-07-23","end_session"],[48,16,"2019-05-29","end_session"],[69,111,"2019-06-08","send_message"],[62,52,"2019-05-11","send_message"],[30,14,"2019-05-29","end_session"],[98,159,"2019-05-20","open_session"],[7,199,"2019-06-13","send_message"],[30,139,"2019-07-05","scroll_down"],[55,117,"2019-07-14","scroll_down"],[29,173,"2019-06-07","scroll_down"],[98,159,"2019-07-08","send_message"],[80,141,"2019-05-05","end_session"],[39,73,"2019-07-11","send_message"],[26,5,"2019-06-07","send_message"],[65,130,"2019-05-12","send_message"],[41,185,"2019-05-16","send_message"],[62,187,"2019-07-04","open_session"],[7,23,"2019-06-28","end_session"],[51,136,"2019-07-23","end_session"],[29,59,"2019-07-07","end_session"],[58,153,"2019-07-06","scroll_down"],[84,91,"2019-06-05","send_message"],[10,67,"2019-05-18","send_message"],[83,172,"2019-07-13","end_session"],[78,65,"2019-05-13","open_session"],[29,59,"2019-05-29","scroll_down"]]}}
*/