package service.impl;

import model.Employee;
import respository.BaseRespository;
import respository.EmployeeRespository;
import service.EmployeeService;

import java.util.List;

public class EmployeeServiceImpl implements EmployeeService {
    EmployeeRespository employeeRespository = new EmployeeRespository();
    @Override
    public List<Employee> getEmployeeList() {
        return employeeRespository.getEmployeeList();
    }

    @Override
    public void createEmployee(Employee employee) {
        employeeRespository.createEmployee(employee);
    }

    @Override
    public void deleteEmployee(Employee employee) {
        employeeRespository.deleteEmployee(employee);
    }

    @Override
    public Employee getInfoEmployee(String id) {
        return employeeRespository.getInfoEmployee(id);
    }

    @Override
    public void editEmployee(Employee employee) {

    }
}
