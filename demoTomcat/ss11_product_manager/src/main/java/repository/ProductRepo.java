package repository;

import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductRepo implements IProductRepo {
    static List<Product> productList = new ArrayList<>();

    static {
        productList.add(new Product(1, "Yasuo", "1000k", "20GG", "VietNam"));
        productList.add(new Product(2, "Irelia", "2000k", "15GG", "Korean"));
        productList.add(new Product(3, "Zed", "3000k", "30GG", "NA"));
        productList.add(new Product(4, "Master Yi", "4000k", "10GG", "China"));
    }

    @Override
    public List<Product> display() {
        return productList;
    }

    @Override
    public List<Product> add(Product product) {
        productList.add(product);
        return productList;
    }

    @Override
    public void delete(int id) {
        for (Product p : productList) {
            if (p.getId() == id) {
                productList.remove(p);
                break;
            }
        }
    }

    @Override
    public void edit(int id, Product product) {
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getId() == id) {
                productList.set(i, product);
                break;
            }
        }
    }

    @Override
    public Product findOneProduct(int id) {
        Product product = new Product();
        for (Product p : productList) {
            if (p.getId() == id) {
                product = p;
            }
        }
        return product;
    }

    @Override
    public Product findProductName(String name) {
        Product product = new Product();
        for (Product p : productList) {
            if (p.getName().equals(name)) {
                product = p;
            }
        }
        return product;
    }
}
