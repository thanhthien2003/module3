package service;

import model.Heo;

import java.util.List;

public interface IHeoService {
    List<Heo> display();
    boolean create(Heo heo,int idXuatXu);
    boolean edit(int maSoHeo);
    boolean delete(int maSoHeo);
    List<Heo> findById(String maSoHeo,String xuatXu);
}
