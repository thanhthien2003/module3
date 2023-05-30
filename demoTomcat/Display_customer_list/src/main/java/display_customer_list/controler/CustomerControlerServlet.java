package display_customer_list.controler;

import display_customer_list.model.Customer;
import display_customer_list.service.CustomerService;
import display_customer_list.service.ICustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerControlerServlet", value = "/CustomerControlerServlet")
public class CustomerControlerServlet extends HttpServlet {
        ICustomerService customerService = new CustomerService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customerList = customerService.display();
        request.setAttribute("customerList",customerList);
        request.getRequestDispatcher("/display-customer-list.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
