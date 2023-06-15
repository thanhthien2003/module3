CREATE DATABASE users;
USE users;

create table users (
 id  int NOT NULL AUTO_INCREMENT,
 name_users varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 country varchar(120),
 PRIMARY KEY (id)
);
insert into users(name_users, email, country) value
('Minh','minh@codegym.vn','Viet Nam'),
('Kante','kante@che.uk','Kenia');
select * from users where country =  "Viet Nam" 
delimiter //
create procedure show_users() 
begin 
select * from users;
end //
delimiter ;
Call show_users;
delimiter //
create procedure edit_users(
in idCheck int,
in name_user varchar(120),
in emails varchar(220),
in countrys varchar(120)
)
begin
update users set name_users = name_user,email= emails, country = countrys where id = idCheck;
end//
delimiter .
call edit_users(2,"thien","thien@codegym.vn","Viet Nam");

delimiter //
create procedure delete_users(
in id_check int
) 
begin
delete from users where id = id_check;
end//
delimiter //
call delete_users(1);