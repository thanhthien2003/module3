package service;

import model.Heo;
import repository.HeoRepository;
import repository.IHeoRepository;

import java.util.List;

public class HeoService implements IHeoService{
    IHeoRepository heoRepository = new HeoRepository();
    @Override
    public List<Heo> display() {
        return heoRepository.display();
    }

    @Override
    public boolean create(Heo heo,int idXuatXu) {
        if (heoRepository.create(heo,idXuatXu)) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean edit(int maSoHeo) {
        return false;
    }

    @Override
    public boolean delete(int maSoHeo) {
        return false;
    }

    @Override
    public List<Heo> findById(String maSoHeo,String xuatXu) {
        return heoRepository.findById(maSoHeo,xuatXu);
    }

}
