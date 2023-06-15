package model;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class Heo {
    private String maSoHeo;
    private String thoiGianNhapChuong;
    private int trongLuong;
    private String thoiGianXuatChuong;
    private int trongLuongXuatChuong;
    private NoiXuaXu xuatXu;
    private boolean tinhTrang;

    public Heo() {
    }

    public Heo(String maSoHeo, String thoiGianNhapChuong, int trongLuong, String thoiGianXuatChuong, int trongLuongXuatChuong, String xuatXu) {
    }

    public Heo(String maSoHeo, String thoiGianNhapChuong, int trongLuong, String thoiGianXuatChuong, int trongLuongXuatChuong, NoiXuaXu xuatXu, boolean tinhTrang) {
        this.maSoHeo = maSoHeo;
        this.thoiGianNhapChuong = thoiGianNhapChuong;
        this.trongLuong = trongLuong;
        this.thoiGianXuatChuong = thoiGianXuatChuong;
        this.trongLuongXuatChuong = trongLuongXuatChuong;
        this.xuatXu = xuatXu;
        this.tinhTrang = tinhTrang;
    }

    public boolean isTinhTrang() {
        return tinhTrang;
    }

    public void setTinhTrang(boolean tinhTrang) {
        this.tinhTrang = tinhTrang;
    }

    public String getMaSoHeo() {
        return maSoHeo;
    }

    public void setMaSoHeo(String maSoHeo) {
        this.maSoHeo = maSoHeo;
    }

    public String getThoiGianNhapChuong() {
        return thoiGianNhapChuong;
    }

    public void setThoiGianNhapChuong(String thoiGianNhapChuong) {
        this.thoiGianNhapChuong = thoiGianNhapChuong;
    }

    public int getTrongLuong() {
        return trongLuong;
    }

    public void setTrongLuong(int trongLuong) {
        this.trongLuong = trongLuong;
    }

    public String getThoiGianXuatChuong() {
        return thoiGianXuatChuong;
    }

    public void setThoiGianXuatChuong(String thoiGianXuatChuong) {
        this.thoiGianXuatChuong = thoiGianXuatChuong;
    }

    public int getTrongLuongXuatChuong() {
        return trongLuongXuatChuong;
    }

    public void setTrongLuongXuatChuong(int trongLuongXuatChuong) {
        this.trongLuongXuatChuong = trongLuongXuatChuong;
    }

    public Heo(String maSoHeo, String thoiGianNhapChuong, int trongLuong, String thoiGianXuatChuong, int trongLuongXuatChuong, NoiXuaXu xuatXu) {
        this.maSoHeo = maSoHeo;
        this.thoiGianNhapChuong = thoiGianNhapChuong;
        this.trongLuong = trongLuong;
        this.thoiGianXuatChuong = thoiGianXuatChuong;
        this.trongLuongXuatChuong = trongLuongXuatChuong;
        this.xuatXu = xuatXu;
    }

    public NoiXuaXu getXuatXu() {
        return xuatXu;
    }

    public void setXuatXu(NoiXuaXu xuatXu) {
        this.xuatXu = xuatXu;
    }
}
