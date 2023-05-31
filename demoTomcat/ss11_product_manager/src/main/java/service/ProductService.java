package service;

import model.Product;
import repository.IProductRepo;
import repository.ProductRepo;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class ProductService implements IProductService {
    IProductRepo productRepo = new ProductRepo();

    @Override
    public List<Product> display() {
        return productRepo.display();
    }

    @Override
    public void add(Product product) {
        productRepo.add(product);
    }

    @Override
    public void delete(int idDelete) {
        productRepo.delete(idDelete);
    }

    @Override
    public void edit(Product product) {
        productRepo.edit(product.getId(), product);
    }

    @Override
    public Product findOneProduct(int id) {
        Product product = productRepo.findOneProduct(id);
        return product;
    }

    @Override
    public Product findProductName(String name) {
        return null;
    }
}
