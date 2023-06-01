package service;

import model.User;

import java.util.List;

public interface IUserService {
    List<User> display();
    void add(User user);
    void delete(int id);
    void edit(int id,User user);
    List<User> findUserCountry(String country);
    List<User> sortByName();
}
