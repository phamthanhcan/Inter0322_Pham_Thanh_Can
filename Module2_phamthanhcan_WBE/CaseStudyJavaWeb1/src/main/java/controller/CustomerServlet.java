package controller;

import model.Customer;
import service.CustomerService;
import service.impl.CustomerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {
    //Triển khai Dependence Injection
    private CustomerService customerService = new CustomerServiceImpl();
//  =============================================================================================================================

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        if(action == null) {
            action = "";
        }

        switch (action) {
            case "add":
                createCustomer(request, response);
                break;
            case "delete":
                deleteCustomer(request,response);
                break;
            case "update":
                updateCustomer(request, response);
                break;
            default:
                getCustomerList(request,response);

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        if(action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                request.getRequestDispatcher("/customer/create_customer.jsp").forward(request,response);
                break;
            case "detail":
                getInfoCustomer(request, response);
                break;
            default: getCustomerList(request, response);
        }
    }

//  =============================================================================================================================

    public void getCustomerList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        List<Customer> customerList = customerService.getCustomers();
        request.setAttribute("customerList", customerList);
        request.getRequestDispatcher("/customer/customer.jsp").forward(request, response);
    }

    public void deleteCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String id = request.getParameter("id");
        customerService.deleteCustomer(id);
        getCustomerList(request, response);
    }

    public void createCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("customer_id");
        int typeCustomer = Integer.parseInt(request.getParameter("customer_type"));
        String name = request.getParameter("customer_name");
        String birthday = request.getParameter("customer_birthday");
        int gender = Integer.parseInt(request.getParameter("customer_gender"));
        String idCard = request.getParameter("customer_id_card");
        String phoneNumber = request.getParameter("customer_phone");
        String email = request.getParameter("customer_email");
        String address = request.getParameter("customer_address");

        Customer customer = new Customer(id, name, gender,  birthday, idCard, phoneNumber, email, address, typeCustomer);

        customerService.createCustomer(customer);
        response.sendRedirect("/customer");
    }

    public void getInfoCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        Customer customer = customerService.findById(id);
        request.setAttribute("customer", customer);
        request.getRequestDispatcher("/customer/edit_customer.jsp").forward(request, response);
    };

    public void updateCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("customer_id");
        int typeCustomer = Integer.parseInt(request.getParameter("customer_type"));
        String name = request.getParameter("customer_name");
        String birthday = request.getParameter("customer_birthday");
        int gender = Integer.parseInt(request.getParameter("customer_gender"));
        String idCard = request.getParameter("customer_id_card");
        String phoneNumber = request.getParameter("customer_phone");
        String email = request.getParameter("customer_email");
        String address = request.getParameter("customer_address");

        Customer customer = new Customer(id, name, gender,  birthday, idCard, phoneNumber, email, address, typeCustomer);
        customerService.updateCustomer(customer);
        getCustomerList(request,response);
    };
}
