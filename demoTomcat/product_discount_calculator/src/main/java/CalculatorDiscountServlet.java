import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculatorDiscountServlet", value = "/display-discount")
public class CalculatorDiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double listPrice = Double.parseDouble(request.getParameter("listPrice"));
        double discountPercent = Double.parseDouble(request.getParameter("discountPercent"));
        double result = (listPrice * discountPercent * 0.01);
        double discountPrice = listPrice - result;
        request.setAttribute("result",result);
        request.setAttribute("discountPrice",discountPrice);
       request.getRequestDispatcher("/index.jsp").forward(request,response);
    }
}
