package repository.loaiChiTieu;

import model.LoaiChiTieu;
import repository.BaseRepository;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class LoaiChiTieuRepository implements ILoaiChiTieuRepository{
    private static String SELECT_LOAI_CHI_TIEU = "select * from loai_chi_tieu;";

    @Override
    public List<LoaiChiTieu> display() {
        List<LoaiChiTieu> loaiChiTieuList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT_LOAI_CHI_TIEU);
            while (resultSet.next()){
                int idLoaiChiTieu = resultSet.getInt("id_loai_chi_tieu");
                String tenLoaiChiTieu = resultSet.getString("ten_loai_chi_tieu");
                LoaiChiTieu loaiChiTieu = new LoaiChiTieu(idLoaiChiTieu,tenLoaiChiTieu);
                loaiChiTieuList.add(loaiChiTieu);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }

        return loaiChiTieuList;
    }
}
