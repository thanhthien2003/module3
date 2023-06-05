package repository.book;

import model.Author;
import model.Book;
import model.Category;
import repository.BaseRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookRepo implements IBookRepo {
    private static final String INSERT = "insert into books(title,page_size,author_id,cate_gory_id)" + "value(?,?,?,?)";


    @Override
    public List<Book> display() {
        Connection connection = BaseRepository.getConnection();
        List<Book> bookList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement =
                    connection.prepareStatement("select b.*,c.name_cate_gory,a.name_authors from books b join cate_gory c on b.cate_gory_id = c.cate_gory_id join authors a on b.author_id = a.author_id;");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int idBook = resultSet.getInt("id_books");
                String title = resultSet.getString("title");
                int pageSize = resultSet.getInt("page_size");
                int idAuthor = resultSet.getInt("author_id");
                int idCategory = resultSet.getInt("cate_gory_id");
                String nameCategory = resultSet.getString("name_cate_gory");
                String nameAuthor = resultSet.getString("name_authors");
                Author author = new Author(idAuthor, nameAuthor);
                Category category = new Category(idCategory, nameCategory);
                bookList.add(new Book(idBook, title, pageSize, author, category));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return bookList;
    }

    @Override
    public void add(Book book) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(INSERT);
            preparedStatement.setString(1,book.getTitle());
            preparedStatement.setInt(2,book.getPageSize());
            preparedStatement.setInt(3,book.getAuthorId().getIdAuthor());
            preparedStatement.setInt(4,book.getCateGoryId().getId());
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
    public void edit(int id, Book book) {

    }

    @Override
    public void delete(int id) {

    }

    @Override
    public List<Book> find(String title) {
        return null;
    }
}
