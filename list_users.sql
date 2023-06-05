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