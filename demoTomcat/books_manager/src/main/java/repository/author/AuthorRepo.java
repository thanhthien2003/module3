package repository.author;

import model.Author;
import repository.BaseRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AuthorRepo implements IAuthorRepo {
    //    id INT PRIMARY KEY,
//name_authors VARCHAR(50) NOT NULL
    @Override
    public List<Author> display() {
        List<Author> authorList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement("select * from authors;");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("author_id");
                String nameAuthors = resultSet.getString("name_authors");
                authorList.add(new Author(id,nameAuthors));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return authorList;
    }

    @Override
    public void add(Author author) {

    }

    @Override
    public void edit(int id, Author author) {

    }

    @Override
    public void delete(int id) {

    }
}
