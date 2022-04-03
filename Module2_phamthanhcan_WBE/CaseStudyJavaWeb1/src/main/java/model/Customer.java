package model;

public class Customer extends Person{
    private int typeCustomer;


    public Customer(String id, String name, int gender, String birthday, String idCard, String phoneNumber, String email, String address, int typeCustomer) {
        super(id, name, gender, birthday, idCard, phoneNumber, email, address);
        this.typeCustomer = typeCustomer;
    }

    public Customer(String id) {
        super(id);
    }

    public int getTypeCustomer() {
        return typeCustomer;
    }

    public void setTypeCustomer(int typeCustomer) {
        this.typeCustomer = typeCustomer;
    }
}
