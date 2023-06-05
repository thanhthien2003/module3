package repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BaseRepository {
    private static final String USERS = "jdbc:mysql://localhost:3306/library";
    private  static final String USERNAME = "root";
    private static final String PASSWORD = "codegym";
    public static Connection getConnection(){
        Connection connection =null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(USERS,USERNAME,PASSWORD);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return connection;
    }
}
