package controler;

import model.Customer;
import service.CustomerService;
import service.ICustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ControlerCustomerServlet", value = "/ControlerCustomerServlet")
public class ControlerCustomerServlet extends HttpServlet {
    ICustomerService customerService = new CustomerService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action){
            case "display":
                List<Customer> customerList = customerService.display();
                request.setAttribute("customerList",customerList);
                request.getRequestDispatcher("/view.jsp").forward(request,response);
            case "add":
                request.getRequestDispatcher("/create.jsp").forward(request,response);
                break;
            case "edit":
                customerList = customerService.display();
                request.getRequestDispatcher("/edit.jsp").forward(request,response);

            case "delete":
                request.getRequestDispatcher("/delete.jsp").forward(request,response);
            default:
                customerList = customerService.display();
                request.setAttribute("customerList",customerList);
                request.getRequestDispatcher("/view.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action){
            case "add":
                int id = Integer.parseInt(request.getParameter("id"));
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String address = request.getParameter("address");
                Customer customer = new Customer(id,name,email,address);
                customerService.add(customer);
                request.getRequestDispatcher("/createOk.jsp").forward(request,response);
                break;
            case "display":
                List<Customer> customerList = customerService.display();
                request.setAttribute("customerList",customerList);
                request.getRequestDispatcher("/view.jsp").forward(request,response);
                break;
            case "edit":

                break;
            case "delete":
                break;
        }
    }
}
