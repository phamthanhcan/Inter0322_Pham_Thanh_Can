package services.impl;

import controller.FuramaController;
import models.Employee;
import services.EmployeeService;
import utils.ReadAndWrite;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Scanner;

public class EmployeeServiceImpl implements EmployeeService {
    private static List<Employee> listE = new ArrayList<>();
    static Scanner sc = new Scanner(System.in);

    @Override
    public void display() {
        listE = (List<Employee>) ReadAndWrite.read("C:\\CAN\\Inter0322_Pham_Thanh_Can\\ss02_java\\src\\data\\employee.csv");
        System.out.println("--------DANH SÁCH NHÂN VIÊN-------");
        for (Employee e : listE) {
            System.out.println(e.toString());
        }
    }

    @Override
    public void addNew() {
        System.out.println("-------------THÊM MỚI KHÁCH HÀNG--------------");
        System.out.print("Nhập id: ");
        int id = FuramaController.tryCatchNumber();
        System.out.print("Nhập tên: ");
        String name = sc.nextLine();
        System.out.print("Nhập ngày sinh: ");
        Date birthDate = FuramaController.tryCatchBirth();
        System.out.print("Nhập giới tính: ");
        String sex = sc.nextLine();
        System.out.print("Nhập số cmnd: ");
        String identityCardNumber = sc.nextLine();
        System.out.print("Nhập số điện thoại: ");
        String phoneNumber = sc.nextLine();
        System.out.print("Nhập Email: ");
        String email = sc.nextLine();
        System.out.print("Nhập địa chỉ: ");
        String address = sc.nextLine();
        System.out.print("Nhập trình độ: ");
        String level = sc.nextLine();
        System.out.print("Nhập vị trí: ");
        String position = sc.nextLine();
        System.out.print("Nhập lương: ");
        long salary = FuramaController.tryCatchLong();

        Employee e = new Employee(id, name, birthDate, sex, identityCardNumber, phoneNumber, email, address, level, position, salary);
        listE.add(e);
        System.out.println("Đã thêm mới nhân viên thành công!");
        ReadAndWrite.write(listE, "C:\\CAN\\Inter0322_Pham_Thanh_Can\\ss02_java\\src\\data\\employee.csv");
    }
    @Override
    public void edit() {
        System.out.println("Nhập id nhân viên cần chỉnh sửa: ");
        int id = FuramaController.tryCatchNumber();
        int sizeListE = listE.size();
        boolean check = false;

        for(int i = 0; i<sizeListE; i++) {
            if(listE.get(i).getId() == id) {
                check = true;
                System.out.println("Tìm thấy nhân viên cần chỉnh sửa:");
                System.out.println(listE.get(i));
                int choiceNumber;
                int newId;
                String newName, newSex, newIdentityCardNumber, newPhoneNumber, newEmail, newAddress, newLevel, newPosition;
                Date newBirthDate;
                long newSalary;
                while(true) {
                    System.out.println("------------------------------");
                    System.out.println("1. Sửa id");
                    System.out.println("2. Sửa tên");
                    System.out.println("3. Sửa ngày sinh");
                    System.out.println("4. Sửa giới tính");
                    System.out.println("5. Sửa số cmnd");
                    System.out.println("6. Sửa số điện thoại");
                    System.out.println("7. Sửa email");
                    System.out.println("8. Sửa địa chỉ");
                    System.out.println("9. Sửa trình độ");
                    System.out.println("10. Sửa vị trí");
                    System.out.println("11. Sửa lương");
                    System.out.println("12. Nhập lại tất cả thông tin");
                    System.out.println("13. Trở lại");

                    switch (FuramaController.tryCatchCheckNumberMenu()){
                        case 1:
                            System.out.print("Nhập id mới: ");
                            newId = FuramaController.tryCatchNumber();
                            listE.get(i).setId(newId);
                            System.out.println("Đã cập nhật thành công!");
                            break;
                        case 2:
                            System.out.print("Nhập tên mới: ");
                            newName = sc.nextLine();
                            listE.get(i).setName(newName);
                            System.out.println("Đã cập nhật thành công!");
                            break;
                        case 3:
                            System.out.print("Nhập ngày sinh mới: ");
                            newBirthDate = FuramaController.tryCatchBirth();
                            listE.get(i).setBirthDay(newBirthDate);
                            System.out.println("Đã cập nhật thành công!");
                            break;
                        case 4:
                            System.out.print("Nhập giới tính mới: ");
                            newSex = sc.nextLine();
                            listE.get(i).setSex(newSex);
                            System.out.println("Đã cập nhật thành công!");
                            break;
                        case 5:
                            System.out.print("Nhập số cmnd mới: ");
                            newIdentityCardNumber = sc.nextLine();
                            listE.get(i).setIdentityCardNumber(newIdentityCardNumber);
                            System.out.println("Đã cập nhật thành công!");
                            break;
                        case 6:
                            System.out.print("Nhập số điện thoại mới: ");
                            newPhoneNumber = sc.nextLine();
                            listE.get(i).setPhoneNumber(newPhoneNumber);
                            System.out.println("Đã cập nhật thành công!");
                            break;
                        case 7:
                            System.out.print("Nhập email mới: ");
                            newEmail = sc.nextLine();
                            listE.get(i).setEmail(newEmail);
                            System.out.println("Đã cập nhật thành công!");
                            break;
                        case 8:
                            System.out.print("Nhập địa chỉ mới: ");
                            newAddress = sc.nextLine();
                            listE.get(i).setAddress(newAddress);
                            System.out.println("Đã cập nhật thành công!");
                            break;
                        case 9:
                            System.out.print("Nhập trình độ mới: ");
                            newLevel = sc.nextLine();
                            listE.get(i).setLevel(newLevel);
                            System.out.println("Đã cập nhật thành công!");
                            break;
                        case 10:
                            System.out.print("Nhập vị trí mới: ");
                            newPosition = sc.nextLine();
                            listE.get(i).setPosition(newPosition);
                            System.out.println("Đã cập nhật thành công!");
                            break;
                        case 11:
                            System.out.print("Nhập lương mới: ");
                            newSalary = FuramaController.tryCatchLong();
                            listE.get(i).setSalary(newSalary);
                            System.out.println("Đã cập nhật thành công!");
                            break;
                        case 12:
                            System.out.print("Nhập id: ");
                            newId = FuramaController.tryCatchNumber();
                            System.out.print("Nhập tên: ");
                            newName = sc.nextLine();
                            System.out.print("Nhập ngày sinh: ");
                            newBirthDate = FuramaController.tryCatchBirth();
                            System.out.print("Nhập giới tính: ");
                            newSex = sc.nextLine();
                            System.out.print("Nhập số cmnd: ");
                            newIdentityCardNumber = sc.nextLine();
                            System.out.print("Nhập số điện thoại: ");
                            newPhoneNumber = sc.nextLine();
                            System.out.print("Nhập Email: ");
                            newEmail = sc.nextLine();
                            System.out.print("Nhập địa chỉ: ");
                            newAddress = sc.nextLine();
                            System.out.print("Nhập trình độ: ");
                            newLevel = sc.nextLine();
                            System.out.print("Nhập vị trí: ");
                            newPosition = sc.nextLine();
                            System.out.println("Nhập lương: ");
                            newSalary = FuramaController.tryCatchLong();
                            listE.get(i).setId(newId); listE.get(i).setName(newName); listE.get(i).setBirthDay(newBirthDate);
                            listE.get(i).setSex(newSex); listE.get(i).setIdentityCardNumber(newIdentityCardNumber);
                            listE.get(i).setPhoneNumber(newPhoneNumber); listE.get(i).setEmail(newEmail); listE.get(i).setAddress(newAddress);
                            listE.get(i).setLevel(newLevel); listE.get(i).setPosition(newPosition); listE.get(i).setSalary(newSalary);
                            System.out.println("Đã cập nhật thành công!");
                            break;
                        case 13:
                            System.out.println("Quay trở lại MENU chính");
                            return;
                    }
                }

            } break;
        }

        if(check == false) {
            System.out.println("Không tìm thấy nhân viên với mã id: "+id);
        }
    }

    @Override
    public void delete() {
        display();
        System.out.println("Nhập id nhân viên cần xóa: ");
        int id = FuramaController.tryCatchNumber();
        int size = listE.size();
        boolean check = false;

        for(int i = 0; i<size; i++) {
            if(listE.get(i).getId() == id) {
                listE.remove(listE.get(i));
                System.out.println("Đã xóa nhân viên thành công!");
                check = true;
            }
        }

        if(check == false) {
            System.out.println("Không tìm thấy nhân viên với mã id là: "+id);
        }
    }
}
