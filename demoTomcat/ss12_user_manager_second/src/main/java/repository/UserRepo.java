package repository;

import model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserRepo implements IUserRepo {
    private static final String SELECT = "select * from users";
    private static final String INSERT = "insert into users(name_users,email,country)" + "value(?,?,?)";
    private static final String DELETE = "delete from users where id = ?";
    private static final String SELECT_BY_ID = "select * from users where id=?";
    private static final String SELECT_BY_COUNTRY = "select * from users where country = ? ";
    private static final String EDIT = "update users set name_users = ?,email= ?, country =? where id = ?;";

    @Override
    public List<User> display() {
        Connection connection = BaseRepository.getConnection();
        List<User> userList = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name_users");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                userList.add(new User(id, name, email, country));
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
        return userList;
    }

    @Override
    public void add(User user) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getCountry());
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
    }

    @Override
    public void delete(int id) {
        Connection connection = BaseRepository.getConnection();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(DELETE);
            preparedStatement.setInt(1, id);
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

    }

    @Override
    public User findUserById(int id) {
        Connection connection = BaseRepository.getConnection();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(SELECT_BY_ID);
            preparedStatement.setInt(1, id);
            preparedStatement.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return null;
    }

    @Override
    public void edit(int id, User user) {
        Connection connection = BaseRepository.getConnection();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(EDIT);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getCountry());
            preparedStatement.setInt(4, id);
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
    }


    @Override
    public List<User> findUserCountry(String country) {
        Connection connection = BaseRepository.getConnection();
        List<User> userList = new ArrayList<>();
        PreparedStatement preparedStatement = null;
        String selectToCountry = "select * from users where country = '"+country +"'";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(selectToCountry);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name_users");
                String email = resultSet.getString("email");
                String country1 = resultSet.getString("country");
                userList.add(new User(id, name, email, country1));
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

        return userList;
    }

    @Override
    public List<User> sortByName() {
        Connection connection = BaseRepository.getConnection();
        List<User> userList = new ArrayList<>();
        String sort = "select * from users order by name_users ";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sort);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name2 = resultSet.getString("name_users");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                userList.add(new User(id, name2, email, country));
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
        return userList;
    }
}
