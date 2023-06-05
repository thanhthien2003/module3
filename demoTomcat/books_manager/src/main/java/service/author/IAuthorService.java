package service.author;

import model.Author;
import model.Category;

import java.util.List;

public interface IAuthorService {
    List<Author> display();
    void add(Author author);
}
