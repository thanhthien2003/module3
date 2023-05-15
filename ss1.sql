create database bai_tap1;	
use bai_tap1;
create table teacher(
id int primary key auto_increment,
`name` varchar(45) null,
country varchar(45) null,
age int null
);
create table Class(
id int primary key auto_increment,
name varchar(45) null
);
select * from Class;
select * from Teacher;

