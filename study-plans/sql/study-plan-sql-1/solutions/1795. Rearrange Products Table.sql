-- 1795. Rearrange Products Table
-- https://leetcode.com/problems/rearrange-products-table/

/*
Create table If Not Exists Products (product_id int, store1 int, store2 int, store3 int)
Truncate table Products
insert into Products (product_id, store1, store2, store3) values ('0', '95', '100', '105')
insert into Products (product_id, store1, store2, store3) values ('1', '70', 'None', '80')
*/

-- MS SQL Server 
select product_id, 'store1' store, store1 price from Products where store1 is not null
union  
select product_id, 'store2' store, store2 price from Products where store2 is not null
union 
select product_id, 'store3' store, store3 price from Products where store3 is not null

-- Oracle
select product_id, 'store1' store, store1 price from Products where store1 is not null
union  
select product_id, 'store2' store, store2 price from Products where store2 is not null
union 
select product_id, 'store3' store, store3 price from Products where store3 is not null

-- MySQL
select product_id, 'store1' store, store1 price from Products where store1 is not null
union  
select product_id, 'store2' store, store2 price from Products where store2 is not null
union 
select product_id, 'store3' store, store3 price from Products where store3 is not null
