create database hang_hoa;
use hang_hoa;
create table so_dien_thoai(
so_dien_thoai varchar(10) primary key
);
create table NHA_CC(
ma_NCC int primary key auto_increment not null,
ten_NCC varchar(50),
dia_chi varchar(50),
 so_dien_thoai varchar(10) not null, foreign key (so_dien_thoai) references so_dien_thoai(so_dien_thoai)
);
create table don_dh(
so_DH int primary key not null,
ngay_DH date,
ma_NCC int not null, foreign key (ma_NCC) references NHA_CC(ma_NCC)
);
create table phieu_xuat(
so_PX int primary key not null,
ngay_xuat date
);
create table phieu_nhap(
so_PN int primary key not null,
ngay_nhap date
);
create table vat_tu(
ma_VTU int primary key not null,
ten_VTH varchar(50)
);
create table chi_tiet_phieu_xuat(
DG_xuat int,
SL_xuat int,
so_PX int,
ma_VTU int,
primary key(so_PX,ma_VTU),
 foreign key (so_PX) references phieu_xuat(so_PX),
 foreign key(ma_VTU) references vat_tu(ma_VTU)
);
create table chi_tiet_phieu_nhap(
DG_nhap int,
SL_nhap int,
so_PN int,
ma_VTU int,
primary key (so_PN,ma_VTU) ,
foreign key(so_PN) references phieu_nhap(so_PN),
foreign key(ma_VTU) references vat_tu(ma_VTU)
);