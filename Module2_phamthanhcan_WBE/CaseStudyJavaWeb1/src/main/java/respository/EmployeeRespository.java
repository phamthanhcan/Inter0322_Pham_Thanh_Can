package respository;

import com.mysql.cj.protocol.Resultset;
import model.Customer;
import model.Employee;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRespository {
    BaseRespository baseRespository = new BaseRespository();

    public List<Employee> getEmployeeList() {
        List<Employee> employeeList = new ArrayList<>();
        String sqlSelectEmployee = "select * from employee";
        try {
            PreparedStatement preparedStatement = this.baseRespository.getConnection().prepareStatement(sqlSelectEmployee);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String id = resultSet.getString("employee_id");
                String name = resultSet.getString("employee_name");
                int gender = resultSet.getInt("employee_gender");
                String birthday = resultSet.getString("employee_birthday");
                String idCard = resultSet.getString("employee_id_card");
                double salary = resultSet.getDouble("employee_salary");
                String phone = resultSet.getString("employee_phone");
                String email = resultSet.getString("employee_email");
                String address = resultSet.getString("employee_address");
                int position = resultSet.getInt("position_id");
                int educationDegree = resultSet.getInt("education_degree_id");
                int division = resultSet.getInt("division_id");
                String username = resultSet.getString("username");
                employeeList.add(new Employee(id, name, gender, birthday, idCard, phone, email, address, educationDegree, division, position, salary, username));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return employeeList;
    }

    public void deleteEmployee(Employee employee) {
        String sqlDeleteEmployee = "delete from employee where employee_id = ?";
        try {
            PreparedStatement preparedStatement = this.baseRespository.getConnection().prepareStatement(sqlDeleteEmployee);
            preparedStatement.setString(1, employee.getId());

            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public void createEmployee(Employee employee) {
        String sqlInsertEmployee = "insert into employee values(?,?,?,?,?,?,?,?,?,?,?,?,null)";
        try {
            PreparedStatement preparedStatement = this.baseRespository.getConnection().prepareStatement(sqlInsertEmployee);
            preparedStatement.setString(1, employee.getId());
            preparedStatement.setString(2, employee.getName());
            preparedStatement.setInt(3, employee.getGender());
            preparedStatement.setString(4, employee.getBirthday());
            preparedStatement.setString(5, employee.getIdCard());
            preparedStatement.setDouble(6, employee.getSalary());
            preparedStatement.setString(7, employee.getPhoneNumber());
            preparedStatement.setString(8, employee.getEmail());
            preparedStatement.setString(9, employee.getAddress());
            preparedStatement.setInt(10, employee.getPositionId());
            preparedStatement.setInt(11, employee.getEducationDegreeId());
            preparedStatement.setInt(12, employee.getDivisionId());

            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public Employee getInfoEmployee(String idEmployee) {
        String sql = "select * from employee where employee_id = '"+idEmployee+"'";
        Employee e = null;
        try {
            PreparedStatement preparedStatement = this.baseRespository.getConnection().prepareStatement(sql);

            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String id = resultSet.getString("employee_id");
                String name = resultSet.getString("employee_name");
                int gender = resultSet.getInt("employee_gender");
                String birthday = resultSet.getString("employee_birthday");
                String idCard = resultSet.getString("employee_id_card");
                String phone = resultSet.getString("employee_phone");
                String email = resultSet.getString("employee_email");
                String address = resultSet.getString("employee_address");
                double salary = resultSet.getDouble("employee_salary");
                int position = resultSet.getInt("position_id");
                int education = resultSet.getInt("education_degree_id");
                int division = resultSet.getInt("division_id");

                e = new Employee(id, name, gender, birthday, idCard, phone, email, address, education, division, position, salary);
            }



        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return e;
    }
}
