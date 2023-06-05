package controler;



import model.Author;
import model.Book;
import model.Category;
import service.author.AuthorService;
import service.author.IAuthorService;
import service.book.BookService;
import service.book.IBookService;
import service.category.CategoryService;
import service.category.ICategoryService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BooksServlet", value = "/controller")
public class BooksServlet extends HttpServlet {
   static IBookService bookService = new BookService();
   static IAuthorService authorService  = new AuthorService();
    static ICategoryService categoryService = new CategoryService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String action = request.getParameter("action");
            if (action==null){
                action="";
            }
            switch (action){
                case "add":
                    showAddForm(request,response);
                    break;
                case "edit":
                    break;
                case "delete":
                    break;
                case "find":
                    break;
                default:
                    showListBook(request, response);
            }
    }

    private void showAddForm(HttpServletRequest request, HttpServletResponse response) {
        List<Author> authorList = authorService.display();
        request.setAttribute("authorList",authorList);
        List<Category> categoryList = categoryService.display();
        request.setAttribute("categoryList",categoryList);
        try {
            request.getRequestDispatcher("view/add.jsp").forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showListBook(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Book> bookList = bookService.display();
        request.setAttribute("bookList",bookList);
        request.getRequestDispatcher("view/list.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action==null){
            action="";
        }
        switch (action){
            case "add":
                addNewBook(request, response);
                break;
            case "edit":
                break;
            case "delete":
                break;
            case "find":
                break;
            default:

        }
    }

    private static void addNewBook(HttpServletRequest request, HttpServletResponse response) {
        String title = request.getParameter("title");
        int pageSize = Integer.parseInt(request.getParameter("pageSize"));
        int authorId = Integer.parseInt(request.getParameter("authorId"));
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        String nameAuthor ="";
        String nameCategory = "";
        for (Author a:authorService.display()) {
            if (a.getIdAuthor()==authorId){
                nameAuthor= a.getNameAuthor();
            }
        }
        for (Category c:categoryService.display()) {
            if (c.getId()==categoryId){
                nameCategory=c.getNameCategory();
            }
        }
        Author author = new Author(authorId,nameAuthor);
        Category category = new Category(categoryId,nameCategory);
        Book book= new Book(title,pageSize,author,category);
        bookService.add(book);
        try {
            response.sendRedirect("/controller");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
