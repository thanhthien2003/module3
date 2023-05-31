package controler;

import model.Product;
import service.IProductService;
import service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/product")
public class ProductServlet extends HttpServlet {
    private IProductService productService = new ProductService();
    List<Product> productList = productService.display();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                request.getRequestDispatcher("/add.jsp").forward(request, response);
                break;
            case "delete":
                int idDelete = Integer.parseInt(request.getParameter("idDelete"));
                Product product = productService.findOneProduct(idDelete);
                request.setAttribute("productDelete", product);
                request.getRequestDispatcher("/delete.jsp").forward(request, response);
                break;
            case "edit":
                int idEdit = Integer.parseInt(request.getParameter("idEdit"));
                Product product1 = productService.findOneProduct(idEdit);
                request.setAttribute("productEdit", product1);
                request.getRequestDispatcher("/edit.jsp").forward(request, response);
                break;
            default:
                productList = productService.display();
                request.setAttribute("productList", productList);
                request.getRequestDispatcher("/display.jsp").forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                int id = Integer.parseInt(request.getParameter("id"));
                String name = request.getParameter("name");
                String price = request.getParameter("price");
                String status = request.getParameter("status");
                String producer = request.getParameter("producer");
                Product product = new Product(id, name, price, status, producer);
                productService.add(product);
                request.getRequestDispatcher("/successService.jsp").forward(request, response);
                break;
            case "delete":
                int idDelete = Integer.parseInt(request.getParameter("idDelete"));
                productService.delete(idDelete);
                request.getRequestDispatcher("/successService.jsp").forward(request, response);
                break;
            case "edit":
                int idEdit = Integer.parseInt(request.getParameter("idEdit"));
                String nameEdit = request.getParameter("name");
                String priceEdit = request.getParameter("price");
                String statusEdit = request.getParameter("status");
                String producerEdit = request.getParameter("producer");
                Product productEdit = new Product(idEdit, nameEdit, priceEdit, statusEdit, producerEdit);
                productService.edit(productEdit);
                request.getRequestDispatcher("/successService.jsp").forward(request, response);
                break;
        }

    }
}
