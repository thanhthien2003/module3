package service.chiTieu;

import model.ChiTieu;
import repository.chiTieu.ChiTieuRepository;
import repository.chiTieu.IChiTieuRepository;

import java.util.List;

public class ChiTieuService implements IChiTieuService{
    IChiTieuRepository chiTieuRepository = new ChiTieuRepository();
    @Override
    public List<ChiTieu> display() {
        return chiTieuRepository.display();
    }

    @Override
    public boolean create(ChiTieu chiTieu) {
        chiTieuRepository.create(chiTieu);
        return true;
    }

    @Override
    public boolean delete(String tenChiTieu) {
        chiTieuRepository.delete(tenChiTieu);
        return true;
    }
}
