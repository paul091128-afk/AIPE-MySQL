-- table
use my_database;

-- avoid stop word
-- create table
create table members(
member_id int,
member_name varchar(50),
member_gender varchar(20),
member_age int
);

-- check settingg of "members"
#1
show columns from members;
#2
describe members;
#3
desc members;

-- delet table
drop table members;

-- practice
create table players(
player_id int,
player_name varchar(50),
player_age int,
player_salary int,
player_team varchar(50)
);
show columns in players;
#drop table players;

-- select
select * from members;
-- practice end

-- insert data
insert into members(member_id,member_name,member_gender,member_age)
value(1,"Abigial","female",15);

-- check values 
select member_id from members;

-- insert without correct columns/values count
insert into members(member_name,member_gender,member_age)
value(1,"Abigial","female",15);

-- show warnings
show warnings; 


-- multi insertion
insert into members(member_id, member_name, member_gender, member_age)
values
(2,"Maria","female",21),
(3,"George","male",35),
(4,"Scott","male",39);

select * from members;

-- practice
create table employee(
employee_id int, 
employee_name varchar(100), 
employee_age int, 
employee_salary int, 
employee_department varchar(100)
);

insert into employee(employee_id, employee_name, employee_age, employee_salary, employee_department)
values
(1, "Tim", 39, 100000, "Sales"),
(2, "Danny", 27, 33000, "Accounting"),
(3, "Wilson", 33 ,42000, "Administration"),
(4, "Elizabeth", 22, 29000, "Accounting");

select * from employee
-- practice end

/* 假設情境:
Q:主管問名稱可不可以用中文
A:可以，但極度不建議，如果有需要可以使用"別名"功能，不用直接修改名稱
*/