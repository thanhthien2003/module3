package service.author;

import model.Author;
import repository.author.AuthorRepo;
import repository.author.IAuthorRepo;

import java.util.List;

public class AuthorService implements IAuthorService{
    IAuthorRepo authorRepo = new AuthorRepo();
    @Override
    public List<Author> display() {
        return authorRepo.display();
    }

    @Override
    public void add(Author author) {

    }
}
