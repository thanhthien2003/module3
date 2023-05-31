package repository;

import model.Customer;

import java.util.List;

public interface IRepoCustomer {
    List<Customer> display();
    List<Customer> add(Customer customer);
    void edit(int id,Customer customer);
    void delete(int id);
}
