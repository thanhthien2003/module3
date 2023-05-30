package display_customer_list.repository;

import display_customer_list.model.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerRepo implements ICustomerRepo {
    static List<Customer> listCustomer = new ArrayList<>();
    static {
        listCustomer.add(new Customer("Mai Van Hoang","1983-08-20","Ha Noi","https://static-images.vnncdn.net/files/publish/2022/9/3/bien-vo-cuc-thai-binh-346.jpeg"));
        listCustomer.add(new Customer("Nguyen Van Nam","1333-08-20","Sai Gon","https://znews-photo.zingcdn.me/w660/Uploaded/qhj_yvobvhfwbv/2018_07_18/Nguyen_Huy_Binh1.jpg"));
        listCustomer.add(new Customer("Nguyen Thai Hoa","1983-02-10","Da Nang","https://images2.thanhnien.vn/Uploaded/datdt/2022_01_04/a5ee06311886d2d88b97-981.jpg"));
    }

    @Override
    public List<Customer> display() {
        return listCustomer;
    }
}
