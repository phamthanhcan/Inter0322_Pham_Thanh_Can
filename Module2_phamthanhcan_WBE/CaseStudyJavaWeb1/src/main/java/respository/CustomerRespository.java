package respository;

import model.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerRespository {
    BaseRespository baseRespository = new BaseRespository();


    public List<Customer> getCustomerList() {
        String sqlSelectCustomer = "select * from customer";
        List<Customer> customers = new ArrayList<>();



        try {
            PreparedStatement preparedStatement = this.baseRespository.getConnection().prepareStatement(sqlSelectCustomer);
            Customer customer;
            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()) {

                String id = resultSet.getString("customer_id");
                int type = resultSet.getInt("customer_type_id");
                String name = resultSet.getString("customer_name");
                String birthday = resultSet.getString("customer_birthday");
                int gender = resultSet.getInt("customer_gender");
                String idCard = resultSet.getString("customer_id_card");
                String phone = resultSet.getString("customer_phone");
                String email = resultSet.getString("customer_email");
                String address = resultSet.getString("customer_address");

                customer = new Customer(id, name, gender, birthday, idCard, phone, email, address, type);
                customers.add(customer);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customers;
    }

    public void deleteCustomer(String id) {
        String sqlDeleteCustomer = "call deleteCustomerByID('"+id+"')";

        try {
            PreparedStatement preparedStatement = this.baseRespository.getConnection().prepareStatement(sqlDeleteCustomer);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public void createCustomer(Customer customer) {
        String sqlInsertCustomer = "insert into customer values(?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement preparedStatement = this.baseRespository.getConnection().prepareStatement(sqlInsertCustomer);

            preparedStatement.setString(1, customer.getId());
            preparedStatement.setInt(2, customer.getTypeCustomer());
            preparedStatement.setString(3, customer.getName());
            preparedStatement.setString(4, customer.getBirthday());
            preparedStatement.setInt(5, customer.getGender());
            preparedStatement.setString(6, customer.getIdCard());
            preparedStatement.setString(7, customer.getPhoneNumber());
            preparedStatement.setString(8, customer.getEmail());
            preparedStatement.setString(9, customer.getAddress());

            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    public Customer findByid(String customerId){
        String sqlFindCustomer = "call findCustomerByID('"+customerId+"')";
        Customer customer = null;
        try {
            PreparedStatement preparedStatement = this.baseRespository.getConnection().prepareStatement(sqlFindCustomer);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()) {
                String id = resultSet.getString("customer_id");
                int type = resultSet.getInt("customer_type_id");
                String name = resultSet.getString("customer_name");
                String birthday = resultSet.getString("customer_birthday");
                int gender = resultSet.getInt("customer_gender");
                String idCard = resultSet.getString("customer_id_card");
                String phone = resultSet.getString("customer_phone");
                String email = resultSet.getString("customer_email");
                String address = resultSet.getString("customer_address");
                customer = new Customer(id, name, gender, birthday,  idCard, phone, email, address, type);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customer;
    }

    public void updateCustomer(Customer customer) {
        String sqlUpdateCustomer = "update customer " +
                "set customer_type_id =?, customer_name = ?, customer_birthday = ?, customer_gender = ?," +
                "customer_id_card = ?, customer_phone = ?, customer_email = ?, customer_address = ? where customer_id = ?";
        try {
            PreparedStatement preparedStatement = this.baseRespository.getConnection().prepareStatement(sqlUpdateCustomer);

            preparedStatement.setInt(1, customer.getTypeCustomer());
            preparedStatement.setString(2, customer.getName());
            preparedStatement.setString(3, customer.getBirthday());
            preparedStatement.setInt(4, customer.getGender());
            preparedStatement.setString(5, customer.getIdCard());
            preparedStatement.setString(6, customer.getPhoneNumber());
            preparedStatement.setString(7, customer.getEmail());
            preparedStatement.setString(8, customer.getAddress());
            preparedStatement.setString(9, customer.getId());

            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    };

}
