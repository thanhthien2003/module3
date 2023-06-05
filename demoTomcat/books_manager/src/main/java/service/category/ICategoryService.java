package service.category;

import model.Book;
import model.Category;

import java.util.List;

public interface ICategoryService {
    List<Category> display();
    void add(Category category);
}
