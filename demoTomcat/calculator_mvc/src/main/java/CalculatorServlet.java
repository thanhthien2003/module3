import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", value = "/calculator")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double firtsNumber = Double.parseDouble(request.getParameter("firtsNumber"));
        double secondNumber = Double.parseDouble(request.getParameter("secondNumber"));
        String operator = request.getParameter("operator");
        String symbol = "";
        double result = 0;
        String message = "";
        switch (operator) {
            case "Sum":
                result = firtsNumber + secondNumber;
                symbol = "+";
                break;
            case "Sub":
                result = firtsNumber - secondNumber;
                symbol = "-";
                break;
            case "Multi":
                result = firtsNumber * secondNumber;
                symbol = "*";
                break;
            case "division":
                if (secondNumber == 0) {
                    message = "Loi chia het cho 0";
                    symbol = "/";
                } else {
                    result = firtsNumber / secondNumber;
                    symbol = "/";
                }
                break;
            default:
                result = 0;
                break;
        }
        request.setAttribute("firtsNumber", firtsNumber);
        request.setAttribute("secondNumber", secondNumber);
        request.setAttribute("result", result);
        request.setAttribute("message", message);
        request.setAttribute("symbol", symbol);
        request.getRequestDispatcher("/result-calculator.jsp").forward(request, response);
    }
}
