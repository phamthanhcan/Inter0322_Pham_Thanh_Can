package service.impl;

import model.Customer;
import respository.CustomerRespository;
import service.CustomerService;

import java.util.List;

public class CustomerServiceImpl implements CustomerService {

    CustomerRespository customerResposity = new CustomerRespository();
    @Override
    public List<Customer> getCustomers() {
        return customerResposity.getCustomerList();
    }

    @Override
    public void deleteCustomer(String id) {
        customerResposity.deleteCustomer(id);
    }

    @Override
    public void createCustomer(Customer customer) {
        customerResposity.createCustomer(customer);
    }

    @Override
    public Customer findById(String id) {
        return customerResposity.findByid(id);
    }

    @Override
    public void updateCustomer(Customer customer) {
        customerResposity.updateCustomer(customer);
    }
}
