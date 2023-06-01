package repository;

import model.Student;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StudentRepo implements IStudentRepo {
    private static final String SELECT_ALL = "select * from students";

    @Override
    public List<Student> display() {
        Connection connection = BaseRepository.getConnection();
        List<Student> studentList = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT_ALL);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name_student");
                boolean gender = resultSet.getBoolean("gender");
                double point = resultSet.getDouble("point_student");
                int classId = resultSet.getInt("classId");
                studentList.add(new Student(id,name,gender,point,classId));
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

        return studentList;
    }

    @Override
    public void add(Student student) {

    }

    @Override
    public void delete(int id) {

    }
}
