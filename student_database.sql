create database demo_users;
use demo_users;
create table students(
id int primary key not null auto_increment,
name_student varchar(150),
gender bit,
point_student double,
classId int
);
insert into students(name_student,gender,point_student,classId)
value
("Thien",1,10,10),
("Tai",0,5,10),
("Quoc",1,6,10),
("Vu",0,8,10);
