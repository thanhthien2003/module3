create database demo;
use demo;
create table products(
id int primary key not null,
product_code varchar(50),
product_name varchar(50),
product_price bigint not null,
product_amount int,
product_description varchar(50),
product_status varchar(50)
);
insert into products (id,product_Code,product_Name,product_Price,product_Amount,product_Description,product_Status)
value (1,1,"Red",1000,1,"oke",1),
(2,2,"Blue",2000,2,"Not",2),
(3,3,"Black",3000,3,"No",3);
create unique index show_id_products on products(id);
create index product_index on products(product_name,product_price);
explain select * from products;
create view show_products as 
select product_code,product_name,product_price,product_status 
from products;
select * from show_products;
update show_products
set product_name="White"
where product_code=3;
select*from show_products;
delete from show_products 
where product_name="White";
select*from show_products;
delimiter //
create procedure show_list_products ()
begin 
select * from products;
end //
delimiter ; 
call show_list_products
delimiter //
create procedure add_new_products(id int,
product_code varchar(50),
product_name varchar(50),
product_price bigint,
product_amount int,
product_description varchar(50),
product_status varchar(50))
begin 
insert into products (id,
product_code,
product_name,
product_price,
product_amount,
product_description,
product_status) 
value(id,
product_code,
product_name,
product_price,
product_amount,
product_description,
product_status);
end // 
delimiter ;
call add_new_products(3,3,"White",3000,3,"No",3);
call show_list_products;

Delimiter //
create procedure edit_products(id int ,
product_code varchar(50),
product_name varchar(50),
product_price bigint,
product_amount int,
product_description varchar(50),
product_status varchar(50))
begin
update products set 
product_name=product_name,
product_code = product_code,
product_name =product_name ,
product_price=product_price ,
product_amount=product_amount,
product_description = product_description,
product_status = product_status
where products.id=id;
end //
delimiter ;
call edit_products(3,4,"Black",4000,4,"Noo",4);
call show_list_products;

Delimiter //
create procedure delete_products(id int) 
begin
delete from products 
where products.id=id;
end //
Delimiter ;
call delete_products(3); 
call show_list_products;
