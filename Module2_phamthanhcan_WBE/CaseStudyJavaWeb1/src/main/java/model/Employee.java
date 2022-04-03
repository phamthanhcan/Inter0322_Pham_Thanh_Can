package model;

public class Employee extends Person{
    private int educationDegreeId;
    private int divisionId;
    private int positionId;
    private Double salary;
    private String username;

    public Employee(String id, String name, int gender, String birthday, String idCard, String phoneNumber, String email, String address, int educationDegreeId, int divisionId, int positionId, Double salary, String username) {
        super(id, name, gender, birthday, idCard, phoneNumber, email, address);
        this.educationDegreeId = educationDegreeId;
        this.divisionId = divisionId;
        this.positionId = positionId;
        this.salary = salary;
        this.username = username;
    }
    public Employee(String id, String name, int gender, String birthday, String idCard, String phoneNumber, String email, String address, int educationDegreeId, int divisionId, int positionId, Double salary) {
        super(id, name, gender, birthday, idCard, phoneNumber, email, address);
        this.educationDegreeId = educationDegreeId;
        this.divisionId = divisionId;
        this.positionId = positionId;
        this.salary = salary;
    }

    public Employee(String id) {
        super(id);
    }

    public int getEducationDegreeId() {
        return educationDegreeId;
    }

    public void setEducationDegreeId(int educationDegreeId) {
        this.educationDegreeId = educationDegreeId;
    }

    public int getDivisionId() {
        return divisionId;
    }

    public void setDivisionId(int divisionId) {
        this.divisionId = divisionId;
    }

    public int getPositionId() {
        return positionId;
    }

    public void setPositionId(int positionId) {
        this.positionId = positionId;
    }

    public Double getSalary() {
        return salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
