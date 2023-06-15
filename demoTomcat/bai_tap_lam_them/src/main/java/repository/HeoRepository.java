package repository;

import model.Heo;
import model.NoiXuaXu;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class HeoRepository implements IHeoRepository{
    private static final String SELECT = "select h.*,nxx.xuat_xu from heo h join noi_xuat_xu nxx on h.id_xuat_xu=nxx.id_xuat_xu";
    private static final String INSERT = "INSERT INTO heo (ma_so_heo,ngay_nhap_chuong,trong_luong,ngay_xuat_chuong,trong_luong_xuat_chuong,id_xuat_xu)" +
            " values (?,?,?,?,?,?,?)";
    @Override
    public List<Heo> display() {
//        String maSoHeo, String thoiGianNhapChuong, int trongLuong, String thoiGianXuatChuong
//        , int trongLuongXuatChuong, String xuatXu, String xuatChuong
        List<Heo> heoList  = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT);
            while (resultSet.next()){
                String maSoHeo = resultSet.getString("ma_so_heo");
                String thoiGianNhapChuong = resultSet.getString("ngay_nhap_chuong");
                int trongLuong = resultSet.getInt("trong_luong");
                String thoiGianXuatChuong = resultSet.getString("ngay_xuat_chuong");
                int trongLuongXuatChuong = resultSet.getInt("trong_luong_xuat_chuong");
                int idXuatXu = resultSet.getInt("id_xuat_xu");
                String  xuatXu = resultSet.getString("xuat_xu");
                Boolean tinhTrang = resultSet.getBoolean("tinh_trang");
                NoiXuaXu noiXuaXu = new NoiXuaXu(idXuatXu,xuatXu);
                heoList.add(new Heo(maSoHeo,thoiGianNhapChuong,trongLuong,thoiGianXuatChuong,trongLuongXuatChuong,noiXuaXu));
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
        return heoList;
    }

    @Override
    public boolean create(Heo heo,int idXuatXu) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT);
            preparedStatement.setString(1,heo.getMaSoHeo());
            preparedStatement.setString(2,heo.getThoiGianNhapChuong());
            preparedStatement.setInt(3,heo.getTrongLuong());
            preparedStatement.setString(4,heo.getThoiGianXuatChuong());
            preparedStatement.setInt(5,heo.getTrongLuongXuatChuong());
            preparedStatement.setBoolean(6,heo.isTinhTrang());
            preparedStatement.setInt(7,idXuatXu);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            return false;
        }finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return true;
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
        List<Heo> heoList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        String selectById = "select h.*,nxx.xuat_xu from heo h join noi_xuat_xu nxx on h.id_xuat_xu=nxx.id_xuat_xu  where ma_so_heo like '%"+maSoHeo+"%' and xuat_xu like  '%"+xuatXu+"%';";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(selectById);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                String maSoHeo1 = resultSet.getString("ma_so_heo");
                String thoiGianNhapChuong = resultSet.getString("ngay_nhap_chuong");
                int trongLuong = resultSet.getInt("trong_luong");
                String thoiGianXuatChuong = resultSet.getString("ngay_xuat_chuong");
                int trongLuongXuatChuong = resultSet.getInt("trong_luong_xuat_chuong");
                int idXuatXu = resultSet.getInt("id_xuat_xu");
                String  xuatXu2 = resultSet.getString("xuat_xu");
                NoiXuaXu noiXuaXu = new NoiXuaXu(idXuatXu,xuatXu2);
                heoList.add(new Heo(maSoHeo1,thoiGianNhapChuong,trongLuong,thoiGianXuatChuong,trongLuongXuatChuong,noiXuaXu));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return heoList;
    }

}
