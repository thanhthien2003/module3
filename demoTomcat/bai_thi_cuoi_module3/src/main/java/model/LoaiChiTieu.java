package model;

public class LoaiChiTieu {
    private int idLoaiChiTieu;
    private String tenLoaiChiTieu;

    public LoaiChiTieu() {
    }

    public LoaiChiTieu(int idLoaiChiTieu, String tenLoaiChiTieu) {
        this.idLoaiChiTieu = idLoaiChiTieu;
        this.tenLoaiChiTieu = tenLoaiChiTieu;
    }

    public int getIdLoaiChiTieu() {
        return idLoaiChiTieu;
    }

    public void setIdLoaiChiTieu(int idLoaiChiTieu) {
        this.idLoaiChiTieu = idLoaiChiTieu;
    }

    public String getTenLoaiChiTieu() {
        return tenLoaiChiTieu;
    }

    public void setTenLoaiChiTieu(String tenLoaiChiTieu) {
        this.tenLoaiChiTieu = tenLoaiChiTieu;
    }
}
