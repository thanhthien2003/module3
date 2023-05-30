package display_customer_list.model;

public class Customer {
    private String name;
    private String birthday;
    private String address;
    private String picture;

    public Customer() {
    }

    public Customer(String name, String birthday, String address, String picture) {
        this.name = name;
        this.birthday = birthday;
        this.address = address;
        this.picture = picture;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "name='" + name + '\'' +
                ", birthday='" + birthday + '\'' +
                ", address='" + address + '\'' +
                ", picture='" + picture + '\'' +
                '}';
    }
}
