package display_customer_list.service;

import display_customer_list.model.Customer;
import display_customer_list.repository.CustomerRepo;
import display_customer_list.repository.ICustomerRepo;

import java.util.List;

public class CustomerService implements ICustomerService {
    ICustomerRepo customerRepo = new CustomerRepo();

    @Override
    public List<Customer> display() {
        List<Customer> customerList = customerRepo.display();
        return customerList;
    }
}
