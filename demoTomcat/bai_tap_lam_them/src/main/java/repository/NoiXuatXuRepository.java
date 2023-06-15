package repository;

import model.Heo;
import model.NoiXuaXu;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class NoiXuatXuRepository implements INoiXuatXuRepository{
    private static final String SELECT = "select * from noi_xuat_xu";
    @Override
    public List<NoiXuaXu> display() {
        List<NoiXuaXu> noiXuaXus  = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT);
            while (resultSet.next()){
                int idXuatXu = resultSet.getInt("id_xuat_xu");
                String xuatXu = resultSet.getString("xuat_xu");
                noiXuaXus.add(new NoiXuaXu(idXuatXu,xuatXu));
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
        return noiXuaXus;
    }
}
