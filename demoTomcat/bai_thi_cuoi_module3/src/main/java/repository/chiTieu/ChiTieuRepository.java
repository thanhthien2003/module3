package repository.chiTieu;

import model.ChiTieu;
import model.LoaiChiTieu;
import repository.BaseRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ChiTieuRepository implements IChiTieuRepository {
    private static String SELECT_CHI_TIEU = "select ct.*,lct.ten_loai_chi_tieu from chi_tieu ct join loai_chi_tieu lct on ct.id_loai_chi_tieu = lct.id_loai_chi_tieu;";
    private static String INSERT_CHI_TIEU = "insert into chi_tieu(ten_chi_tieu,ngay_chi,so_tien_chi,id_loai_chi_tieu,mo_ta_them) value (?,?,?,?,?);";

    @Override
    public List<ChiTieu> display() {
        List<ChiTieu> chiTieuList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT_CHI_TIEU);
            while (resultSet.next()) {
                String tenChiTieu = resultSet.getString("ten_chi_tieu");
                String ngayChi = resultSet.getString("ngay_chi");
                long soTienChi = resultSet.getLong("so_tien_chi");
                int idLoaiChiTieu = resultSet.getInt("id_loai_chi_tieu");
                String moTaThem = resultSet.getString("mo_ta_them");
                String tenLoaiChiTieu = resultSet.getString("ten_loai_chi_tieu");
                LoaiChiTieu loaiChiTieu = new LoaiChiTieu(idLoaiChiTieu, tenLoaiChiTieu);
                chiTieuList.add(new ChiTieu(tenChiTieu, ngayChi, soTienChi, loaiChiTieu, moTaThem));
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
        return chiTieuList;
    }

    @Override
    public boolean create(ChiTieu chiTieu) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CHI_TIEU);
            preparedStatement.setString(1, chiTieu.getTenChiTieu());
            preparedStatement.setString(2, chiTieu.getNgayChi());
            preparedStatement.setLong(3, chiTieu.getSoTienChi());
            preparedStatement.setInt(4, chiTieu.getLoaiChiTieu().getIdLoaiChiTieu());
            preparedStatement.setString(5, chiTieu.getMoTaThem());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return true;
    }

    @Override
    public boolean delete(String tenChiTieu) {
        Connection connection = BaseRepository.getConnection();
        String deleteChiTieu = "delete from chi_tieu where chi_tieu.ten_chi_tieu = '" + tenChiTieu + "';";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(deleteChiTieu);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return false;
    }
}
