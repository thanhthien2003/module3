package service.category;

import model.Category;
import repository.category.CategoryRepo;
import repository.category.ICategoryRepo;

import java.util.List;

public class CategoryService implements ICategoryService{
    ICategoryRepo categoryRepo = new CategoryRepo();
    @Override
    public List<Category> display() {
        return categoryRepo.display();
    }

    @Override
    public void add(Category category) {

    }
}
