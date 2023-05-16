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
insert into customer(c_ID,c_name,c_age)
value(1,"Minh Quan",10),
(2,"Ngoc Oanh",20),
(3,"Hong Ha",50);
insert into product(p_ID,p_name,p_price)
value(1,"May Giat",3),
(2,"Tu Lanh",5),
(3,"Dieu Hoa",7),
(4,"Quat",1),
(5,"Bep Dien",2);
insert into `order`(o_ID,c_ID,o_date,o_total_price)
value(1,1,20060321,null),
(2,2,20060323,null),
(3,1,20060316,null);
insert into order_detail(o_ID,p_ID,od_QTY)
value(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);
select * from `order`;
select customer.c_name,product.p_name
from customer 
join `order` on customer.c_ID  = `order`.c_ID
join order_detail on order_detail.o_ID=`order`.o_ID
join product on product.p_ID=order_detail.p_ID; 
 select customer.c_name
 from customer left join `order` on customer.c_ID=`order`.c_ID  where `order`.c_id is null;
 select `order`.o_ID,`order`.o_date,sum(order_detail.od_QTY*product.p_price) as o_total_price
 from   `order` join order_detail on `order`.o_ID=order_detail.o_ID
 join product on order_detail.p_ID=product.p_ID
 group by `order`.o_ID;
 
	