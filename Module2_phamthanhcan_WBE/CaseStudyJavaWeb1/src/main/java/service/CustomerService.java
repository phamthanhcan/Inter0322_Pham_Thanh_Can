package service;

import model.Customer;

import java.util.List;

public interface CustomerService {
    public List<Customer> getCustomers();

    public void deleteCustomer(String id);

    public void createCustomer(Customer customer);

    public Customer findById(String id);

    public void updateCustomer(Customer customer);
}
