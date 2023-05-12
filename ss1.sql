create database ss1;	
create table ss1(
id int primary key auto_increment,
`name` varchar(45) null,
country varchar(45) null,
age int null
);

alter table ss1 rename to Teacher;
create table Class(
id int primary key auto_increment,
name varchar(45) null
);
select * from Class;
select * from Teacher;
