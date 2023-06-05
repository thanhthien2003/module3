package repository.category;

import model.Category;

import java.util.List;

public interface ICategoryRepo {
    List<Category> display();
    void add(Category category);
    void edit(int id, Category category);
    void delete(int id);
    List<Category> findCategory(String title);
}
