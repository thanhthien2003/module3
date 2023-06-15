create database bakery_management;
create database bakery_management;
use bakery_management;
create table chuc_vu(
ma_chuc_vu int auto_increment primary key,
ten_chuc_vu varchar(50)
);
create table nhan_vien(
ma_nhan_vien int auto_increment primary key,
ten_nhan_vien varchar(50) not null,
cccd varchar(15) not null,
sdt varchar(15) not null unique,
dia_chi varchar(50),
ma_chuc_vu int,
foreign key (ma_chuc_vu) references chuc_vu(ma_chuc_vu) on delete set null
);
create table `user`(
sdt varchar(15) primary key,
foreign key (sdt) references nhan_vien(sdt) on delete cascade,
mat_khau varchar(20)
);
create table khach_hang(
ma_khach_hang int auto_increment primary key,
ten_khach_hang varchar(50),
sdt varchar(15)
);
create table loai_banh(
ma_loai_banh int auto_increment primary key,
ten_loai_banh varchar(50)
);
create table hoa_don(
ma_hoa_don int auto_increment primary key,
ma_khach_hang int,
foreign key (ma_khach_hang) references khach_hang(ma_khach_hang) on delete set null,
ma_nhan_vien int,
foreign key (ma_nhan_vien) references nhan_vien(ma_nhan_vien) on delete set null,
ngay_dat_hang datetime,
dia_chi_giao_hang varchar(250),
trang_thai bit,
mo_ta varchar(100)
);
create table banh(
ma_banh int auto_increment primary key,
ten_banh varchar(50),
ma_loai_banh int,
foreign key (ma_loai_banh) references loai_banh(ma_loai_banh) on delete set null,
gia double,
so_luong_hien_co int,
anh_banh varchar(1000)
);
create table hoa_don_chi_tiet(
ma_banh int,
foreign key (ma_banh) references banh(ma_banh) on delete cascade,
ma_hoa_don int,
foreign key (ma_hoa_don) references hoa_don(ma_hoa_don) on delete cascade,
primary key (ma_banh, ma_hoa_don),
so_luong int
);
insert into chuc_vu(ten_chuc_vu)
values ('quan li'), ('thu ngan'), ('phuc vu'), ('bao ve');
 insert into nhan_vien (ten_nhan_vien, cccd, sdt, dia_chi, ma_chuc_vu)
 values('vu', '123456789', '0123456789', 'DN', 1),
 ('vu1', '123456789', '1123456789', 'DN', 2),
 ('vu2', '123456789', '2123456789', 'DN', 2),
 ('vu3', '123456789', '3123456789', 'DN', 3),
 ('vu4', '123456789', '4123456789', 'DN', 3),
 ('vu5', '123456789', '5123456789', 'DN', 3),
 ('vu6', '123456789', '6123456789', 'DN', 4),
 ('vu7', '123456789', '7123456789', 'DN', 4);
 insert into `user` (sdt, mat_khau)
 values('0123456789','123456'),
 ('1123456789','123456'),
 ('2123456789','123456');
 insert into khach_hang(ten_khach_hang, sdt)
 values('vu1', '111111111'),
 ('vu2', '222222222'),
 ('vu3', '33333333'),
 ('vu4', '44444444'),
 ('vu5', '555555555'),
 ('vu6', '6666666666');
 insert into loai_banh(ten_loai_banh)
 value('banh ngot'),
 ('banh lanh'),
 ('banh mi'),
 ('pizza'),
 ('banh kem'),
 ('banh kem nho'),
 ('banh khac');
 insert into banh(ten_banh, ma_loai_banh, gia, so_luong_hien_co,anh_banh)
 values ('banh mi thit', 3 , 15,20,'https://www.takyfood.com.vn/vnt_upload/news/Tinxahoi/Kinhdoanhbanhmy/banh_my_thit.png'),
 ('banh mi trung', 3 , 10,20,'https://www.bahungbakery.com.vn/upload/sanpham/2-opla-thit-cha-copy1483_750x750.png'),
 ('banh mi pate', 3 , 15,20,'https://xebanhmithonhiky.com.vn/wp-content/uploads/2020/04/banh-mi-nhan-ba-te-ngon.jpg'),
 ('mousse chanh day', 2 ,30,20,'https://www.bahungbakery.com.vn/upload/sanpham/z2488195799290_bfebbe7a2b538623be3361c15ba2b2b55023_750x750.jpg'),
 ('mousse dau', 2 , 32,20,'https://beptruong.edu.vn/wp-content/uploads/2013/06/banh-mousse-dau-tay.jpg'),
 ('cheese chanh day', 2 , 35,20,'https://farm2.staticflickr.com/1542/25356607253_4e7713dfa5_z.jpg'),
 ('banh bong lan', 1 , 6,20,'https://daylambanh.edu.vn/wp-content/uploads/2019/08/banh-bong-lan-cuon-dep-mat.jpg'),
 ('banh quy', 1 , 7,20,'https://daynghebanh.vn/wp-content/uploads/Chocolate-chip-Cookie-640x589.jpg'),
 ('pizza thit', 4 ,45,20,'https://image.cooky.vn/recipe/g1/7403/s640/recipe7403-635938188256947072.jpg'),
 ('pizza tom', 4 , 50,20,'https://znews-photo.zingcdn.me/w660/Uploaded/wyhktpu/2018_04_24/image001_12.jpg'),
 ('banh sinh nhat', 5 , 60,20,'https://toplist.vn/images/800px/hinh-anh-banh-sinh-nhat-cho-chong-yeu-vo-yeu-1073754.jpg'),
 ('su kem ', 6 , 20,20,'https://ameovat.com/wp-content/uploads/2016/04/cach-lam-banh-su-kem.jpg'),
 ('banh trung thu nhan thap cam', 7 , 70,20,'https://banhtrungthubrodard.net/wp-content/uploads/2020/09/anh-che-cac-loai-nhan-banh-trung-thu-1.jpg'),
 ('banh trung thu nhan dau xanh', 7 , 80,20,'https://img.websosanh.vn/v10/users/review/images/65wn8l8h78yb4/banh-deo-nhan-dau-xanh.jpg?compress=85');
 select * from banh where ten_banh like '%banh mi%';
drop database bakery_management;