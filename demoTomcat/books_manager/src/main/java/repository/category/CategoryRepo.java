package repository.category;

import model.Category;
import repository.BaseRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryRepo implements ICategoryRepo {
// id INT PRIMARY KEY,
//    name_cate_gory VARCHAR(50) NOT NULL

    @Override
    public List<Category> display() {
        List<Category> categoryList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement("select * from cate_gory;");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("cate_gory_id");
                String nameAuthors = resultSet.getString("name_cate_gory");
                categoryList.add(new Category(id,nameAuthors));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return categoryList;
    }

    @Override
    public void add(Category category) {

    }

    @Override
    public void edit(int id, Category category) {

    }

    @Override
    public void delete(int id) {

    }

    @Override
    public List<Category> findCategory(String title) {
        return null;
    }
}
