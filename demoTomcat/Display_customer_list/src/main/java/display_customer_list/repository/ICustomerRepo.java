package display_customer_list.repository;

import display_customer_list.model.Customer;

import java.util.ArrayList;
import java.util.List;

public interface ICustomerRepo {
    List<Customer> display();
}
