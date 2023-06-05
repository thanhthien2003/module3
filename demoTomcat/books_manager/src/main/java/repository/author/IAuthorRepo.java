package repository.author;

import model.Author;

import java.util.List;

public interface IAuthorRepo {
    List<Author> display();
    void add(Author author);
    void edit(int id,Author author);
    void delete(int id);
}
