package repository;

import model.Customer;

import java.util.ArrayList;
import java.util.List;

public class RepoCustomer implements IRepoCustomer{

    private static List<Customer> customers;

    static {
        customers = new ArrayList<>();
        customers.add(new Customer(1, "John", "john@codegym.vn", "Hanoi"));
        customers.add(new Customer(2, "Bill", "bill@codegym.vn", "Danang"));
        customers.add(new Customer(3, "Alex", "alex@codegym.vn", "Saigon"));
        customers.add(new Customer(4, "Adam", "adam@codegym.vn", "Beijin"));
        customers.add(new Customer(5, "Sophia", "sophia@codegym.vn", "Miami"));
        customers.add(new Customer(6, "Rose", "rose@codegym.vn", "Newyork"));
    }
    @Override
    public List<Customer> display() {
        return customers;
    }

    @Override
    public List<Customer> add(Customer customer) {
        customers.add(customer);
        return customers;
    }

    @Override
    public void edit(int id,Customer customer) {
        for (Customer c:customers) {
            if (c.getId()==id){
                customers.set(id,customer);
            }
        }
    }

    @Override
    public void delete(int id) {
        for (Customer c:customers) {
            if (c.getId()==id){
                customers.remove(c);
            }
        }
    }
}
