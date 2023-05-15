create database bai_tap2;
use bai_tap2;
create table customer(
c_ID int primary key not null,
c_name varchar(50),
c_age int
);
create table product(
p_ID int primary key not null,
p_name varchar(50),
p_price long
);
create table `order`(
o_ID int primary key not null,
c_ID int , foreign key (c_ID) references customer(c_ID),
o_date date,
o_total_price long  
);
create table order_detail(
o_ID int,
p_ID int,
primary key (o_ID,p_ID),
foreign key (o_ID) references `order` (o_ID),
foreign key (p_ID) references product (p_ID),
od_QTY int
);
