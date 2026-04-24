create database dll;

show databases;

use dll;

create table students(
id int primary key,
name varchar(30) not null,
age int,
stream varchar(30),
role enum("student","trainer","admin")
);

show tables;

select id,name
from students;

select *
from students;

insert into students (id,name,age,stream,role)
value(1,"tom",24,"cse","admin");

insert into students(id,name,age,stream,role) 
values(10,"jerry",22,"ds","student"),
(2,"anu",22,"cse","trainer"),
(3,"sai",25,"ca","admin"),
(4,"sri",22,"cse","admin"),
(5,"teddy",23,"cse","trainer");


