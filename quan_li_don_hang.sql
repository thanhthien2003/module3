create database quan_li_sinh_vien;
use quan_li_sinh_vien;
create table class(
class_id int primary key auto_increment,
class_name varchar(50),
start_date date,
`status` int
);
create table student(
student_id int primary key auto_increment,
student_name varchar(50),
address varchar(50),
phone long,
`status` int,
class_id int , foreign key (class_id) references class(class_id)
);
create table `subject`(
sub_id int primary key auto_increment,
sub_name varchar(50),
credit int,
`status` int 
);
create table mark(
mark_id int primary key auto_increment,
sub_id int, foreign key(sub_id) references `subject`(sub_id),
student_id int, foreign key(student_id) references student(student_id),
mark int,
exam_times int
);
insert into class(class_name,start_date,`status`)
value('A1', '2008-12-20', 1),
('A2', '2008-12-22', 1),
('B3', current_date, 0);
insert into student(student_name,address,phone,`status`)
value('Hung', 'Ha Noi', 0912113113, 1),
('Manh', 'HCM', 0123123123, 0);
INSERT INTO student (student_name, address, `status`, class_id)
value('Hoa', 'Hai phong', 1, 1);
INSERT INTO `subject`
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
INSERT INTO mark (sub_id, student_id, mark, exam_times)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);
select * from student;
select * from student where student_name like 'h%';
select * from class where month(start_date) = "12";
select * from `subject` where credit between 3 and 5; 
 SET SQL_SAFE_UPDATES = 0;
update student set class_id = "2" where student_name = "Hung";
 SET SQL_SAFE_UPDATES = 1;
 select * from student;
select student.student_name,`subject`.sub_name,mark.mark
from mark
join student on mark.student_id=student.student_id
join `subject` on mark.sub_id=`subject`.sub_id
order by mark.mark desc,student_name asc;

 
