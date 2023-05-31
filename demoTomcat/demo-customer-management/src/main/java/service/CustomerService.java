package service;

import model.Customer;
import repository.IRepoCustomer;
import repository.RepoCustomer;

import java.util.List;

public class CustomerService implements ICustomerService {
    IRepoCustomer repoCustomer = new RepoCustomer();
    @Override
    public List<Customer> display() {
        return repoCustomer.display();
    }

    @Override
    public void add(Customer customer) {
        repoCustomer.add(customer);
    }

    @Override
    public void edit() {

    }

    @Override
    public void delete() {

    }
}
