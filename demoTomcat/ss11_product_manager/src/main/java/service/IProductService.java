package service;

import model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface IProductService {
    List<Product> display();

    void add(Product product);

    void delete(int idDelete);

    void edit(Product product);

    Product findOneProduct(int id);

    Product findProductName(String name);
}
