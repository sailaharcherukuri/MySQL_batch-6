-- 5) foreign key: A forigen key creates a relationship between two tables. It ensures that value in child table must already exists in the parent table.alter

use pfs6;
-- create table department(DEPT_ID INT PRIMARY KEY,DEPT_NAME VARCHAR(50));
-- CREATE TABLE employee (EMP_ID INT PRIMARY KEY,EMP_NAME VARCHAR(50),DEPT_ID INT, FOREIGN KEY(DEPT_ID) references department(DEPT_ID));

-- INSERT INTO dept values
-- (1,'HR'),
-- (2,'IT'),
-- (3,'ADMIN');

-- Insert into employee values
-- (111,'sai','3');


-- Referential Actions: 
-- referential actions define what happens to child table data when parent table data is updated or deleted.as

-- create table products(
-- product_id int primary key,
-- product_name varchar(100),
-- price decimal(10,2));

-- create table orders(
-- order_id int primary key,
-- customer_name varchar(50),
-- product_id int,
-- quantity int,
-- foreign key(product_id) references products(product_id) 
-- on delete  set null on  update  set null); -- so instead of on delete set null on update set null , we can also use on delete cascade  on update cascade

-- insert into products values
-- (1,'mobile',50000),
-- (2,'laptop',60000),
-- (3,'tv',110000);

-- insert into orders values
-- (111,'sai',1,2),
-- (222,'ramu',2,1),
-- (333,'balaji',1,3);


 select * from products, orders;
-- delete from products where product_id=2; -- replaces missing values in child table with null.
-- update products set product_id=10 where product_id=1; -- if any value updated in parent will not update that value in child instead updates null. 
-- select * from orders;