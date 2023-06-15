package service.loaiChiTieu;

import model.LoaiChiTieu;
import repository.loaiChiTieu.ILoaiChiTieuRepository;
import repository.loaiChiTieu.LoaiChiTieuRepository;

import java.util.List;

public class LoaiChiTieuService implements ILoaiChiTieuService{
    ILoaiChiTieuRepository loaiChiTieuRepository = new LoaiChiTieuRepository();
    @Override
    public List<LoaiChiTieu> display() {
        return loaiChiTieuRepository.display();
    }
}
