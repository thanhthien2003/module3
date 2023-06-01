package service;

import model.User;
import repository.IUserRepo;
import repository.UserRepo;

import java.util.List;

public class UserService implements IUserService{
    IUserRepo iUserRepo = new UserRepo();
    @Override
    public List<User> display() {
        List<User> userList =iUserRepo.display();
        return userList;
    }

    @Override
    public void add(User user) {
        iUserRepo.add(user);
    }

    @Override
    public void delete(int id) {
        iUserRepo.delete(id);
    }

    @Override
    public void edit(int id, User user) {
        iUserRepo.edit(id,user);
    }
}
