package controller;

import model.Employee;
import service.EmployeeService;
import service.impl.EmployeeServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "EmployeeServlet", urlPatterns = "/employee")
public class EmployeeServlet extends HttpServlet {
    EmployeeService employeeService = new EmployeeServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) {
            action = "";
        }
        switch (action) {
            case "delete":
                deleteEmployee(request, response);
                break;
            case "add":
                createEmployee(request, response);
                break;
            default: getEmployeeList(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) {
            action = "";
        }
        switch (action){
            case "create":
                request.getRequestDispatcher("/employee/create_employee.jsp").forward(request,response);
                break;
            case "detail":
                getInfoEmployee(request, response);
                break;
            default: getEmployeeList(request, response);
        }
    }

    private void getEmployeeList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        List<Employee> employeeList = employeeService.getEmployeeList();
        request.setAttribute("employeeList", employeeList);
        request.getRequestDispatcher("/employee/employee.jsp").forward(request, response);
    }

    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        employeeService.deleteEmployee(new Employee(id));
        getEmployeeList(request, response);
    }

    private void createEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("employee_id");
        String name = request.getParameter("employee_name");
        int gender = Integer.parseInt(request.getParameter("employee_gender"));
        String birthday = request.getParameter("employee_birthday");
        String idCard = request.getParameter("employee_id_card");
        String phone = request.getParameter("employee_phone");
        String email = request.getParameter("employee_email");
        String address = request.getParameter("employee_address");
        double salary = Double.parseDouble(request.getParameter("employee_salary"));
        int position = Integer.parseInt(request.getParameter("employee_position"));
        int education = Integer.parseInt(request.getParameter("employee_education"));
        int division = Integer.parseInt(request.getParameter("employee_division"));
        employeeService.createEmployee(new Employee(id, name, gender, birthday, idCard, phone, email, address, position, education, division, salary));
        getEmployeeList(request, response);
    }

    private void getInfoEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String id = request.getParameter("id");
        Employee employee = employeeService.getInfoEmployee(id);
        request.setAttribute("employee", employee);
        request.getRequestDispatcher("/employee/edit_employee.jsp").forward(request, response);
    }
}
