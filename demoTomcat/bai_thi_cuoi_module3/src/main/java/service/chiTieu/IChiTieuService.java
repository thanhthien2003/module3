package service.chiTieu;

import model.ChiTieu;

import java.util.List;

public interface IChiTieuService {
    List<ChiTieu> display();
    boolean create(ChiTieu chiTieu);
    boolean delete(String tenChiTieu);
}
