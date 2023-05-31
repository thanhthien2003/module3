package service;

import model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> display();
    void add(Customer customer);
    void edit();
    void delete();

}
