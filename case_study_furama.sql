create database case_study;
use case_study;
create table nhan_vien(
ma_nhan_vien int primary key ,
ho_ten varchar(45) ,
ngay_sinh date ,
so_cmnd varchar(45),
luong double ,
so_dien_thoai varchar(45) ,
email varchar(45),
dia_chi varchar(45),
ma_vi_tri int , foreign key (ma_vi_tri) references vi_tri(ma_vi_tri),
ma_trinh_do int, foreign key (ma_trinh_do) references trinh_do(ma_trinh_do),
ma_bo_phan int , foreign key (ma_bo_phan) references bo_phan(ma_bo_phan)
);
create table vi_tri(
ma_vi_tri int auto_increment primary key,
ten_vi_tri varchar(45) 
);
create table trinh_do(
ma_trinh_do int primary key not null,
ten_trinh_do varchar(45)
);
create table bo_phan(
ma_bo_phan int primary key not null,
ten_bo_phan varchar(45) not null
);
create table loai_khach(
ma_loai_khach int primary key not null,
ten_loai_khach varchar(45)
);
create table khach_hang(
ma_khach_hang int primary key not null,
ma_loai_khach int , foreign key (ma_loai_khach) references loai_khach(ma_loai_khach),
ho_ten varchar(45) not null,
ngay_sinh date not null,
gioi_tinh bit(1),
so_cmnd varchar(45),
so_dien_thoai varchar(45),
email varchar(45),
dia_chi varchar(45)
);
create table hop_dong(
ma_hop_dong int primary key not null,
ngay_lam_hop_dong datetime,
ngay_ket_thuc datetime not null,
tien_dat_coc double not null,
ma_nhan_vien int not null, foreign key(ma_nhan_vien) references nhan_vien(ma_nhan_vien),
ma_khach_hang int not null, foreign key(ma_khach_hang) references khach_hang(ma_khach_hang),
ma_dich_vu int not null, foreign key(ma_dich_vu) references dich_vu(ma_dich_vu)
);
create table hop_dong_chi_tiet(
ma_hop_dong_chi_tiet int primary key not null,
ma_hop_dong int not null,foreign key(ma_hop_dong) references hop_dong(ma_hop_dong),
ma_dich_vu_di_kem int not null, foreign key(ma_dich_vu_di_kem) references dich_vu_di_kem(ma_dich_vu_di_kem),
so_luong int not null
);
create table dich_vu_di_kem(
ma_dich_vu_di_kem int primary key not null,
ten_dich_vu_di_kem varchar(45) not null,
gia double not null,
don_vi varchar(10),
trang_thai varchar(45)
);
create table loai_dich_vu(
ma_loai_dich_vu int primary key not null,
ten_loai_dich_vu varchar(45)
);
create table kieu_thue(
ma_kieu_thue int primary key not null,
ten_kieu_thue varchar(45)
);
create table dich_vu(
ma_dich_vu int primary key auto_increment,
ten_dich_vu varchar(45) not null,
dien_tich int,
chi_phi_thue double,
so_nguoi_toi_da int,
tieu_chuan_phong varchar(45),
mo_ta_tien_nghi_khac varchar(45),
dien_tich_ho_boi double,
so_tang int,
ma_kieu_thue int,
foreign key(ma_kieu_thue) references kieu_thue(ma_kieu_thue),
ma_loai_dich_vu int,
foreign key(ma_loai_dich_vu) references loai_dich_vu(ma_loai_dich_vu)
);
insert into nhan_vien(ma_nhan_vien,ho_ten,ngay_sinh,so_cmnd,luong,so_dien_thoai,email,dia_chi,ma_vi_tri,ma_trinh_do,ma_bo_phan)
value(1,"Nguyễn Văn An",19701107,456231786,10000000,0901234121,"annguyen@gmail.com","295 Nguyễn Tất Thành,Đà Nẵng",1,3,1),
(2,"Lê Văn Bình",19970409,654231234,7000000,0934212314,"binhlv@gmail.com","22 Yên Bái,Đà Nẵng",1,2,2),
(3,"Hồ Thị Yến",19951212,999231723,14000000,0412352315,"thiyen@gmail.com","K234/11 Điện Biên Phủ,Gia Lai",1,3,2),
(4,"Võ Công Toản",19800404,123231365,17000000,0374443232,"toan0404@gmail.com","77 Hoàng Diệu,Quảng Trị",1,4,4),
(5,"Nguyễn Bỉnh Phát",19991209,454363232,6000000,0902341231,"phatphat@gmail.com","43 Yên Bái,Đà Nẵng",2,1,1),
(6,"Khúc Nguyễn An Nghi",20001108,964542311,7000000,0978653213,"annghi20@gmail.com","294 Nguyễn Tất Thành,Đà Nẵng",2,2,3),
(7,"Nguyễn Hữu Hà",19930101,534323231,8000000,0941234553,"nhh0101@gmail.com","4 Nguyễn Chí Thanh,Huế",2,3,2),
(8,"Nguyễn Hà Đông",19890903,234414123,9000000,0642123111,"donghanguyen@gmail.com","111 Hùng Vương,Hà Nội",2,4,4),
(9,"Tòng Hoang",19820903,256781231,6000000,0245144444,"hoangtong@gmail.com","213 Hàm Nghi,Đà Nẵng",2,4,4),
(10,"Nguyễn Công Đạo",19940108,755434343,8000000,0988767111,"nguyencongdao12@gmail.com","6 Hoà Khánh,Đồng Nai",2,3,2);
insert into vi_tri(ma_vi_tri,ten_vi_tri)
value(1,"Quản Lý"),
(2,"Nhân Viên");
insert into trinh_do(ma_trinh_do,ten_trinh_do)
value(1,"Trung Cấp"),
(2,"Cao Đẳng"),
(3,"Đại Học"),
(4,"Sau Đại Học");
insert into bo_phan(ma_bo_phan,ten_bo_phan)
value(1,"Sale-Marketing"),
(2,"Hành chính"),
(3,"Phục vụ"),
(4,"Quản lý");
insert into loai_khach(ma_loai_khach,ten_loai_khach)
value(1,"Diamond"),
(2,"Platinium"),
(3,"Gold"),
(4,"Silver"),
(5,"Member");
insert into khach_hang(ma_khach_hang,ho_ten,ngay_sinh,gioi_tinh,so_cmnd,so_dien_thoai,email,dia_chi,ma_loai_khach)
value(1,"Nguyễn Thị Hào",19701107,0,643431213,0945423362,"thihao07@gmail.com","23 Nguyễn Hoàng, Đà Nẵng",5),
(2,"Phạm Xuân Diệu",19920808,1,865342123,0954333333,"xuandieu92@gmail.com","K77/22 Thái Phiên, Quảng Trị",3),
(3,"Trương Đình Nghệ",19900227,1,488645199,0373213122,"nghenhan2702@gmail.com","K323/12 Ông Ích Khiêm, Vinh",1),
(4,"Dương Văn Quan",19810708,1,543432111,0490039241,"duongquan@gmail.com","K453/12 Lê Lợi, Đà Nẵng",1),
(5,"Hoàng Trần Nhi Nhi",19951209,0,795453345,0312345678,"nhinhi123@gmail.com","224 Lý Thái Tổ, Gia Lai",4),
(6,"Tôn Nữ Mộc Châu",20051206,0,732434215,0988888844,"tonnuchau@gmail.com","37 Yên Thế, Đà Nẵng",4),
(7,"Nguyễn Mỹ Kim",19840408,0,856453123,0912345698,"kimcuong84@gmail.com","K123/45 Lê Lợi,Hồ Chí Minh",1),
(8,"Nguyễn Thị Hào",19990408,0,965656433,0763212345,"haohao99@gmail.com","55 Nguyễn Văn Linh, Kon Tum",3),
(9,"Trần Đại Danh",19940701,1,432341235,0643343433,"danhhai99@gmail.com","24 Lý Thường Kiệt, Quảng Ngãi",1),
(10,"Nguyễn Tâm Đắc",19890701,1,344343432,0987654321,"dactam@gmail.com","22 Ngô Quyền, Đà Nẵng",2);
insert into kieu_thue(ma_kieu_thue,ten_kieu_thue)
value(1,"year"),
(2,"month"),
(3,"day"),
(4,"hour");
insert into loai_dich_vu(ma_loai_dich_vu,ten_loai_dich_vu)
value(1,"Villa"),
(2,"House"),
(3,"Room");
insert into dich_vu(ten_dich_vu, dien_tich, chi_phi_thue, so_nguoi_toi_da, tieu_chuan_phong, mo_ta_tien_nghi_khac, dien_tich_ho_boi, so_tang, ma_kieu_thue, ma_loai_dich_vu)
value ("Villa Beach Front",	25000, 10000000, 10, "vip",	"Có hồ bơi", 500, 4, 3,	1),
("House Princess 01", 14000, 5000000, 7, "vip",	"Có thêm bếp nướng", null, 3, 2, 2),
("Room Twin01",	5000, 1000000, 2, "normal", "Có tivi", null, null, 4, 3),
("Villa No Beach Front", 22000, 9000000, 8, "normal", "Có hồ bơi", 300,	3, 3, 1),
("House Princess 02", 10000, 4000000, 5, "normal", "Có thêm bếp nướng",	null, 2, 3, 2),
("Room Twin 02", 3000, 900000, 2, "normal", "Có tivi", null, null, 4, 3);
insert into dich_vu_di_kem(ma_dich_vu_di_kem,ten_dich_vu_di_kem,gia,don_vi,trang_thai)
value(1,"Karaoke",10000,"giờ","tiện nghi,hiện tại"),
(2,"Thuê xe máy",10000,"chiếc","hỏng 1 xe"),
(3,"Thuê xe đạp",20000,"chiếc","tốt"),
(4,"Buffet buổi sáng",15000,"suất","đầy đủ đồ ăn, tráng miệng"),
(5,"Buffet buổi trưa",90000,"suất","đầy đủ đồ ăn, tráng miệng"),
(6,"Buffet buổi tối",16000,"suất","đầy đủ đồ ăn, tráng miệng");
insert into hop_dong(ma_hop_dong,ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,ma_nhan_vien,ma_khach_hang,ma_dich_vu) 
value(1,20201208,20201208,0,3,1,3),
(2,20200714,20200721,200000,7,3,1),
(3,20210315,20210317,50000,3,4,2),
(4,20210114,20210118,100000,7,5,5),
(5,20210714,20210715,0,7,2,6),
(6,20210601,20210603,0,7,7,6),
(7,20210902,20210905,100000,7,4,4),
(8,20210617,20210618,150000,3,4,1),
(9,20201119,20201119,0,3,4,3),
(10,20210412,20210414,0,10,3,5),
(11,20210425,20210425,0,2,2,1),
(12,20210525,20210527,0,7,10,1);
insert into hop_dong_chi_tiet(ma_hop_dong_chi_tiet,so_luong,ma_hop_dong,ma_dich_vu_di_kem)
value(1,5,2,4),
(2,8,2,5),
(3,15,2,6),
(4,1,3,1),
(5,11,3,2),
(6,1,1,3),
(7,2,1,2),
(8,2,12,2);
select * from nhan_vien nv
where nv.ho_ten like 'H%' or nv.ho_ten like 'T%' or (nv.ho_ten like 'K%') and (char_length(ho_ten))<=15;
-- task 3.
select * from khach_hang kh
where (datediff(now(),kh.ngay_sinh))/365  between 18 and 50 
and kh.dia_chi like "%Đà Nẵng" or  kh.dia_chi like "%Quảng Trị%" ;
-- task 4.
select kh.ma_khach_hang,kh.ho_ten ,count(hd.ma_khach_hang) as so_lan_dat_phong 
from  khach_hang kh join hop_dong hd on kh.ma_khach_hang=hd.ma_khach_hang 
join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
where lk.ten_loai_khach="Diamond"
group by hd.ma_khach_hang
order by so_lan_dat_phong desc;
-- task 5.
select kh.ma_khach_hang,kh.ho_ten,lk.ten_loai_khach,hd.ma_hop_dong,dv.ten_dich_vu,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc,sum(dv.chi_phi_thue+dvdk.gia*hdct.so_luong)
from loai_khach lk join khach_hang kh  on lk.ma_loai_khach=kh.ma_loai_khach 
join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang
left join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
left join dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem=dvdk.ma_dich_vu_di_kem
join dich_vu dv on hd.ma_dich_vu=dv.ma_dich_vu
group by hd.ma_hop_dong;
-- task 6.
select dv.ma_dich_vu,dv.ten_dich_vu,dv.dien_tich,dv.chi_phi_thue,ldv.ten_loai_dich_vu 
from dich_vu dv 
join hop_dong hd 
on dv.ma_dich_vu=hd.ma_dich_vu
join loai_dich_vu ldv 
on dv.ma_loai_dich_vu =  ldv.ma_loai_dich_vu
where hd.ma_dich_vu not in (
select hop_dong.ma_dich_vu 
from hop_dong  
where year(hop_dong.ngay_lam_hop_dong) = 2021 and month(hop_dong.ngay_lam_hop_dong) between 1 and 3)
group by dv.ma_dich_vu;
-- task 7.
select dv.ma_dich_vu,dv.ten_dich_vu,dv.dien_tich,dv.so_nguoi_toi_da,dv.chi_phi_thue,ldv.ten_loai_dich_vu 
from dich_vu dv 
join loai_dich_vu ldv 
on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
join hop_dong hd
on dv.ma_dich_vu = hd.ma_dich_vu
where hd.ma_dich_vu not in(
select hop_dong.ma_dich_vu
from hop_dong
where year(ngay_lam_hop_dong) = 2021)
group by ma_dich_vu;
-- task 8.
-- cach 1.
select kh.ho_ten 
from khach_hang kh 
group by kh.ho_ten;
-- cach 2.
select distinct kh.ho_ten
from khach_hang kh;
-- cach 3.
select kh.ho_ten
from khach_hang kh 
union
select kh.ho_ten
from khach_hang kh;
-- task 9.
select month(hd.ngay_lam_hop_dong),count(hd.ma_khach_hang) as "so lan dat phong"
from hop_dong hd 
where year(hd.ngay_lam_hop_dong) = 2021
group by  month(hd.ngay_lam_hop_dong)
order by month(hd.ngay_lam_hop_dong);
-- task 10.
select hd.ma_hop_dong,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc,ifnull(sum(hdct.so_luong),0) as "so luong dich vu di kem"
from hop_dong hd 
left join hop_dong_chi_tiet hdct 
on hd.ma_hop_dong=hdct.ma_hop_dong
left join dich_vu_di_kem dvdk 
on hdct.ma_dich_vu_di_kem=dvdk.ma_dich_vu_di_kem
group by hd.ma_hop_dong;
-- task 11.
select kh.ho_ten,dvdk.ma_dich_vu_di_kem,dvdk.ten_dich_vu_di_kem
from khach_hang kh 
join loai_khach lk 
on kh.ma_loai_khach = lk.ma_loai_khach 
join hop_dong hd
on kh.ma_khach_hang=hd.ma_khach_hang
join hop_dong_chi_tiet hdct
on hd.ma_hop_dong = hdct.ma_hop_dong
join dich_vu_di_kem dvdk 
on hdct.ma_dich_vu_di_kem=dvdk.ma_dich_vu_di_kem
where lk.ten_loai_khach = "Diamond" and (kh.dia_chi like "%Vinh" or kh.dia_chi like "%Quảng Ngãi");
-- task 12.
select hd.ma_hop_dong,nv.ho_ten,kh.ho_ten,kh.so_dien_thoai,ifnull(sum(hdct.so_luong),0) as "so luong dich vu di kem",hd.tien_dat_coc
from hop_dong hd 
join khach_hang kh
 on hd.ma_khach_hang = kh.ma_khach_hang
 join nhan_vien nv
 on hd.ma_nhan_vien=nv.ma_nhan_vien
 left join hop_dong_chi_tiet hdct
 on hd.ma_hop_dong=hdct.ma_hop_dong 
 where  month(hd.ngay_lam_hop_dong) between 10 and 12 and year(hd.ngay_lam_hop_dong) = 2020 
 and hd.ma_hop_dong 
 not in (
 select hd.ma_hop_dong 
 from hop_dong hd 
where month(hd.ngay_lam_hop_dong) between 1 and 6 and year(hd.ngay_lam_hop_dong) = 2021
 )
 group by hd.ma_hop_dong;
 -- task 13.
 select dvdk.ten_dich_vu_di_kem,sum(hdct.so_luong)
 from hop_dong_chi_tiet hdct
 join dich_vu_di_kem dvdk
 on hdct.ma_dich_vu_di_kem=dvdk.ma_dich_vu_di_kem
 group by dvdk.ma_dich_vu_di_kem
 having sum(hdct.so_luong)= (
 select sum(hdct.so_luong)
 from hop_dong_chi_tiet hdct
 join dich_vu_di_kem dvdk 
 on dvdk.ma_dich_vu_di_kem=hdct.ma_dich_vu_di_kem
 group by dvdk.ma_dich_vu_di_kem
 order by sum(hdct.so_luong) desc limit 1
);
 -- task 14.
 select hd.ma_hop_dong,ldv.ten_loai_dich_vu,dvdk.ten_dich_vu_di_kem, count(hdct.ma_dich_vu_di_kem) as "so lan su dung"
 from hop_dong hd
 join dich_vu dv
 on hd.ma_dich_vu=dv.ma_dich_vu
 join loai_dich_vu ldv
 on dv.ma_loai_dich_vu=ldv.ma_loai_dich_vu
 join hop_dong_chi_tiet hdct
 on hd.ma_hop_dong=hdct.ma_hop_dong
 join dich_vu_di_kem dvdk
 on hdct.ma_dich_vu_di_kem=dvdk.ma_dich_vu_di_kem
 where hdct.ma_dich_vu_di_kem not in (select hdct.ma_dich_vu_di_kem
from hop_dong_chi_tiet hdct
group by hdct.ma_dich_vu_di_kem
having count(hdct.ma_dich_vu_di_kem)!=1
)
group by hdct.ma_hop_dong_chi_tiet;
 -- task 15.
  select nv.ma_nhan_vien,nv.ho_ten,td.ten_trinh_do,bp.ten_bo_phan,nv.so_dien_thoai,nv.dia_chi
 from nhan_vien nv
 join hop_dong hd
 on nv.ma_nhan_vien=hd.ma_nhan_vien
 join bo_phan bp
 on nv.ma_bo_phan=bp.ma_bo_phan
 join trinh_do td
 on td.ma_trinh_do=nv.ma_trinh_do
 where year(hd.ngay_lam_hop_dong) between 2020 and 2021
 group by nv.ma_nhan_vien
 having count(hd.ma_nhan_vien)<=3
 ;
 -- task 16.
 set sql_safe_updates=0;
 delete from nhan_vien nv
 where  nv.ma_nhan_vien not in (
 select * from (
 select nv.ma_nhan_vien 
 from nhan_vien nv 
 join hop_dong hd 
 on nv.ma_nhan_vien=hd.ma_nhan_vien 
 where year(hd.ngay_lam_hop_dong) between 2019 and 2021 
 group by nv.ma_nhan_vien) as ab
 );
 select*from nhan_vien;
 -- task 17.
  set sql_safe_updates=0;
  delete from nhan_vien
 where ma_nhan_vien not in (
 select * from (select nv.ma_nhan_vien
 from nhan_vien nv
  join hop_dong hd
  on nv.ma_nhan_vien=hd.ma_nhan_vien
  where year(ngay_lam_hop_dong) between 2019 and 2021
  group by nv.ma_nhan_vien) as ab
  )
 ;
 select *
from nhan_vien;
-- task 20.
select nv.ma_nhan_vien,nv.ho_ten,nv.email,nv.so_dien_thoai,nv.ngay_sinh,nv.dia_chi
from nhan_vien nv
union
select  kh.ma_khach_hang,kh.ho_ten,kh.email,kh.so_dien_thoai,kh.ngay_sinh,kh.dia_chi
from khach_hang kh;
-- task 17.
update khach_hang
 set khach_hang.ma_loai_khach=1
 where khach_hang.ma_khach_hang in(
 select * from(
 select kh.ma_khach_hang
 from khach_hang kh
 join loai_khach lk
 on kh.ma_loai_khach=lk.ma_loai_khach
 join hop_dong hd
 on kh.ma_khach_hang=hd.ma_khach_hang
 join dich_vu dv
 on hd.ma_dich_vu=dv.ma_dich_vu
 join hop_dong_chi_tiet hdct
 on hdct.ma_hop_dong=hd.ma_hop_dong
 join dich_vu_di_kem dvdk 
 on hdct.ma_dich_vu_di_kem=dvdk.ma_dich_vu_di_kem
 where year(hd.ngay_lam_hop_dong)=2021 and lk.ten_loai_khach="Platinium"
 group by kh.ma_khach_hang
 having  sum(dv.chi_phi_thue+(hdct.so_luong*dvdk.gia))>=10000000
 )as ab);
 select * from khach_hang;
 -- task 19.
 set sql_safe_updates=0;
 update dich_vu_di_kem
 set dich_vu_di_kem.gia=dich_vu_di_kem.gia*2
 where dich_vu_di_kem.ma_dich_vu_di_kem in (
 select * from (
 select dvdk.ma_dich_vu_di_kem
 from hop_dong_chi_tiet hdct 
 join dich_vu_di_kem dvdk 
 on hdct.ma_dich_vu_di_kem=dvdk.ma_dich_vu_di_kem
 join hop_dong hd
 on hd.ma_hop_dong = hdct.ma_hop_dong
 where year(hd.ngay_lam_hop_dong)=2020
 group by ma_hop_dong_chi_tiet
 having sum(hdct.so_luong)>10
 ) as ab);
 select * from dich_vu_di_kem;