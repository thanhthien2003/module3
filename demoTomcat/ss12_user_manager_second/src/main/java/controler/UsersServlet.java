package controler;

import com.sun.net.httpserver.Request;
import model.User;
import service.IUserService;
import service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UsersServlet", value = "/users")
public class UsersServlet extends HttpServlet {
    IUserService  iUserService = new UserService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action==null){
            action="";
        }
        switch (action) {
            case "add":
                showFormAdd(request, response);
                break;
            case "delete":
               break;
            case "edit":
                int id = Integer.parseInt((request.getParameter("idEdit")));
                String name  = request.getParameter("name");
                String email = request.getParameter("email");
                String country = request.getParameter("country");
//                request.setAttribute("id",id);
//                request.setAttribute("name",name);
//                request.setAttribute("email",email);
//                request.setAttribute("country",country);
                User user = new User(id,name,email,country);
                request.setAttribute("user",user);
                request.getRequestDispatcher("/edit.jsp").forward(request,response);
                break;
            default:
                displayList(request, response);
        }
    }

    private static void showFormAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/add.jsp").forward(request, response);
    }

    private void displayList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> userList = iUserService.display();
        request.setAttribute("userList",userList);
      RequestDispatcher requestDispatcher = request.getRequestDispatcher("display.jsp");
      requestDispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action==null){
            action="";
        }
        switch (action) {
            case "add":
                addNewUser(request, response);
                break;
            case "delete":
                deleteUser(request, response);
                break;
            case "edit":
                int id = Integer.parseInt(request.getParameter("idEdit"));
                String name  = request.getParameter("name");
                String email = request.getParameter("email");
                String country = request.getParameter("country");
                User user = new User(id,name,email,country);
                iUserService.edit(id,user);
                response.sendRedirect("/users");
                break;
            default:
        }
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int idDelete = Integer.parseInt(request.getParameter("idDelete"));
        iUserService.delete(idDelete);
        response.sendRedirect("/users");
    }

    private void addNewUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name =  request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User user = new User(name,email,country);
        iUserService.add(user);
        response.sendRedirect("/users");
    }
}
