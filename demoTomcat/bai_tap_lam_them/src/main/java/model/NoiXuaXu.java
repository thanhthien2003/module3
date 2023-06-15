package model;

public class NoiXuaXu {
    private int idXuatXu;
    private String xuatXu;

    public NoiXuaXu() {
    }

    public NoiXuaXu(int idXuatXu, String xuatXu) {
        this.idXuatXu = idXuatXu;
        this.xuatXu = xuatXu;
    }

    public NoiXuaXu(int idXuatXu) {
        this.idXuatXu = idXuatXu;
    }

    public int getIdXuatXu() {
        return idXuatXu;
    }

    public void setIdXuatXu(int idXuatXu) {
        this.idXuatXu = idXuatXu;
    }

    public String getXuatXu() {
        return xuatXu;
    }

    public void setXuatXu(String xuatXu) {
        this.xuatXu = xuatXu;
    }
}
