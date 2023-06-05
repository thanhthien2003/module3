package service.book;

import model.Book;

import java.util.List;

public interface IBookService {
    List<Book> display();
    void add(Book book);
    void edit(int id,Book book);
    void delete(int id);
    List<Book> find(String title);
}
