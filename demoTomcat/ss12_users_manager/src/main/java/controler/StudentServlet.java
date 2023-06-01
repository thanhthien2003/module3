package controler;

import model.Student;
import service.IStudentService;
import service.StudentService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "StudentServlet", value = "/student")
public class StudentServlet extends HttpServlet {
    IStudentService  studentService  = new StudentService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action==null){
            action="";
        }
        switch (action) {
            case "add":
                break;
            case "delete":
                break;
            case "edit":
                break;
            default:
                List<Student> studentList = studentService.display();
                request.setAttribute("studentList",studentList);
                request.getRequestDispatcher("/display.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action==null){
            action="";
        }
        switch (action) {
            case "add":
                break;
            case "delete":
                break;
            case "edit":
                break;
            default:
        }
    }
}
