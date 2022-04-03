package service;

import model.Employee;

import java.util.List;

public interface EmployeeService {
    public List<Employee> getEmployeeList();

    public void createEmployee(Employee employee);

    public void deleteEmployee(Employee employee);

    public Employee getInfoEmployee(String id);

    public void editEmployee(Employee employee);
}
