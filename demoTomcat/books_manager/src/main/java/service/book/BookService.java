package service.book;

import model.Book;
import repository.book.BookRepo;
import repository.book.IBookRepo;

import java.util.List;

public class BookService implements IBookService {
    IBookRepo bookRepo = new BookRepo();
    @Override
    public List<Book> display() {
        return bookRepo.display();
    }

    @Override
    public void add(Book book) {
            bookRepo.add(book);
    }

    @Override
    public void edit(int id, Book book) {

    }

    @Override
    public void delete(int id) {

    }

    @Override
    public List<Book> find(String title) {
        return null;
    }
}
