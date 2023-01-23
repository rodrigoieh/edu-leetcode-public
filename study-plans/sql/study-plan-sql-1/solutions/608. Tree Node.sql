-- 608. Tree Node
-- https://leetcode.com/problems/tree-node/

/*
Create table If Not Exists Tree (id int, p_id int)
Truncate table Tree
insert into Tree (id, p_id) values ('1', 'None')
insert into Tree (id, p_id) values ('2', '1')
insert into Tree (id, p_id) values ('3', '1')
insert into Tree (id, p_id) values ('4', '2')
insert into Tree (id, p_id) values ('5', '2')
*/

-- MS SQL Server 
select 
    id, 
    case 
        when p_id is null then 'Root'
        when exists (select 1 from Tree b where a.id = b.p_id) then 'Inner'
        else 'Leaf'
        end type 
from Tree a

-- Oracle
select 
    id, 
    case 
        when p_id is null then 'Root'
        when exists (select 1 from Tree b where a.id = b.p_id) then 'Inner'
        else 'Leaf'
        end type 
from Tree a

-- MySQL
select id, if(p_id is null, 'Root', if(exists (select 1 from Tree b where a.id = b.p_id), 'Inner', 'Leaf')) type 
from Tree a