package repository;

import model.Product;

import java.util.List;

public interface IProductRepo {
    List<Product> display();

    List<Product> add(Product product);

    void delete(int id);

    void edit(int id, Product product);

    Product findOneProduct(int id);

    Product findProductName(String name);
}
