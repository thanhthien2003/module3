package repository.chiTieu;

import model.ChiTieu;

import java.util.List;

public interface IChiTieuRepository {
    List<ChiTieu> display();
    boolean create(ChiTieu chiTieu);
    boolean delete(String tenChiTieu);
}
