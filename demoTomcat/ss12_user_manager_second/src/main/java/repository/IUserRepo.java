package repository;

import model.User;

import java.util.List;

public interface IUserRepo {
    List<User> display();
    void add(User user);
    void delete(int id);
    void edit(int id,User user);
    User findUserById(int id);
    List<User> findUserCountry(String country);
    List<User> sortByName();
}
