package model;

public class ChiTieu {
    private String tenChiTieu;
    private String ngayChi;
    private long soTienChi;
    private LoaiChiTieu loaiChiTieu;
    private String moTaThem;

    public ChiTieu() {
    }

    public ChiTieu(String tenChiTieu, String ngayChi, long soTienChi, LoaiChiTieu loaiChiTieu, String moTaThem) {
        this.tenChiTieu = tenChiTieu;
        this.ngayChi = ngayChi;
        this.soTienChi = soTienChi;
        this.loaiChiTieu = loaiChiTieu;
        this.moTaThem = moTaThem;
    }

    public String getTenChiTieu() {
        return tenChiTieu;
    }

    public void setTenChiTieu(String tenChiTieu) {
        this.tenChiTieu = tenChiTieu;
    }

    public String getNgayChi() {
        return ngayChi;
    }

    public void setNgayChi(String ngayChi) {
        this.ngayChi = ngayChi;
    }

    public long getSoTienChi() {
        return soTienChi;
    }

    public void setSoTienChi(long soTienChi) {
        this.soTienChi = soTienChi;
    }

    public LoaiChiTieu getLoaiChiTieu() {
        return loaiChiTieu;
    }

    public void setLoaiChiTieu(LoaiChiTieu loaiChiTieu) {
        this.loaiChiTieu = loaiChiTieu;
    }

    public String getMoTaThem() {
        return moTaThem;
    }

    public void setMoTaThem(String moTaThem) {
        this.moTaThem = moTaThem;
    }
}
