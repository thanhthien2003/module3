package repository;

import model.Heo;

import java.util.List;

public interface IHeoRepository {
    List<Heo> display();
    boolean create(Heo heo,int xuatXu);
    boolean edit(int maSoHeo);
    boolean delete(int maSoHeo);
    List<Heo> findById(String maSoHeo,String xuatXu);

}
