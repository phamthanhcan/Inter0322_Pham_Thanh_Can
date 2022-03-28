package controller;

import services.impl.CustomerServiceImpl;
import services.impl.EmployeeServiceImpl;
import services.impl.FacilityServiceImpl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

public class FuramaController {
    public static Scanner sc = new Scanner(System.in);
    public static void displayMainMenu() {

        boolean check = true;
        System.out.println("USER CHOOSE FUNTIONS");
        while(check) {
            System.out.println(
                    "--------MENU FURAMA-------\n" +
                    "1.\tEmployee Management\n" +
                    "2.\tCustomer Management\n" +
                    "3.\tFacility Management \n" +
                    "4.\tBooking Managerment\n" +
                    "5.\tPromotion Management\n" +
                    "6.\tExit\n");

            switch (tryCatchCheckNumberMenu()) {
                case 1: disPlayMenuEmployeeManagement(); break;

                case 2: disPlayMenuCustomerManagement(); break;

                case 3: disPlayMenuFacilityManagement(); break;

                case 4: disPlayMenuBookingManagerment(); break;

                case 5: disPlayMenuPromotionManagement(); break;

                case 6:
                    System.out.println("The program is finished!");
                    System.exit(0);
                    break;
                default:
                    System.out.println("Bạn phải nhập theo đúng số trên MENU!");
            }

        }
    }

    public static int tryCatchCheckNumberMenu() {
        int choiceNumber = 0;
        boolean check = true;
        do{
            System.out.println("Enter the numbers to select the function:");
            try {
                choiceNumber = Integer.parseInt(sc.nextLine());
                check = false;
            }catch (NumberFormatException numberFormatException) {
                System.out.println("Bạn nhập sai định dạng, vui lòng nhập lại!");
                check = true;
            }
        }while (check);

        return choiceNumber;
    }


    public static void disPlayMenuEmployeeManagement() {
        EmployeeServiceImpl e = new EmployeeServiceImpl();
        boolean check = true;
        while(check) {
            System.out.println(
                    "-----------------------------\n"+
                    "1\tDisplay list employees\n" +
                    "2\tAdd new employee\n" +
                    "3\tEdit employee\n" +
                    "4\tReturn main menu\n");

            switch (tryCatchCheckNumberMenu()) {
                case 1: e.display(); break;
                case 2: e.addNew(); break;
                case 3: e.edit(); break;
                case 4: return;
                default: System.out.println("Bạn phải nhập theo đúng số trên MENU!");
            }
        }
    };

    public static void disPlayMenuCustomerManagement() {
        CustomerServiceImpl c = new CustomerServiceImpl();
        boolean check = true;
        while(check) {
            System.out.println(
                    "------------------------------\n"+
                    "1.\tDisplay list customers\n" +
                    "2.\tAdd new customer\n" +
                    "3.\tEdit customer\n" +
                    "4.\tReturn main menu\n");

            switch (tryCatchCheckNumberMenu()) {
                case 1: c.display(); break;
                case 2: c.addNew(); break;
                case 3: c.edit(); break;
                case 4: return;
                default: System.out.println("Bạn phải nhập theo đúng số trên MENU!");
            }
        }
    };

    public static void disPlayMenuBookingManagerment () {
        boolean check = true;
        while(check) {
            System.out.println(
                    "------------------------------\n" +
                    "1.\tAdd new booking\n" +
                    "2.\tDisplay list booking\n" +
                    "3.\tCreate new constracts\n" +
                    "4.\tDisplay list contracts\n" +
                    "5.\tEdit contracts\n" +
                    "6.\tReturn main menu\n");

            switch (tryCatchCheckNumberMenu()) {
                case 1: ;
                case 2: ;
                case 3: ;
                case 4: return;
                default: System.out.println("Bạn phải nhập theo đúng số trên MENU!");
            }
        }
    };

    public static void disPlayMenuFacilityManagement() {
        FacilityServiceImpl f = new FacilityServiceImpl();
        boolean check = true;
        while(check) {
            System.out.println(
                    "--------------------------------------\n" +
                    "1\tDisplay list facility\n" +
                    "2\tAdd new facility\n" +
                    "3\tDisplay list facility maintenance\n" +
                    "4\tReturn main menu\n");

            switch (tryCatchCheckNumberMenu()) {
                case 1: f.display();
                case 2: addNewFacilityMenu();
                case 3: f.displayMaintain();
                case 4: return;
                default: System.out.println("Bạn phải nhập theo đúng số trên MENU!");

            }
        }
    };

    public static void addNewFacilityMenu() {
        FacilityServiceImpl facilityService = new FacilityServiceImpl();
        boolean check = true;
        while(check) {
            System.out.println("1. Add new Villa");
            System.out.println("2. Add new Room");
            System.out.println("3. Add new House");
            System.out.println("4. Return Main Menu");

            switch (tryCatchCheckNumberMenu()) {
                case 1: facilityService.addNewVilla(); break;
                case 2: facilityService.addNewRoom(); break;
                case 3: facilityService.addNewHouse(); break;
                case 4: return;
                default: System.out.println("Bạn phải nhập theo đúng số trên MENU!");
            }
        }
    }


    public static void disPlayMenuPromotionManagement() {
        boolean check = true;
        while(check) {
            System.out.println(
                    "-------------------------------------------\n" +
                    "1.\tDisplay list customers use service\n" +
                    "2.\tDisplay list customers get voucher\n" +
                    "3.\tReturn main menu\n");

            switch (tryCatchCheckNumberMenu()) {
                case 1: ;
                case 2: ;
                case 3: return;
                default:
                    System.out.println("Bạn phải nhập đúng theo số trên MENU!");

            }
        }
    };

    public static int tryCatchNumber() {
        int number = 0;
        boolean check = true;
        do {
            try {
                number = Integer.parseInt(sc.nextLine());
                check = false;
            }
            catch (NumberFormatException numberFormatException) {
                System.out.println("Bạn phải nhập số! Vui lòng nhập lại");
                check = true;
            }
        }while(check);
        return number;
    };

    public static long tryCatchLong() {
        long number = 0;
        boolean check = true;
        do {
            try {
                number = Long.parseLong(sc.nextLine());
                check = false;
            }
            catch (NumberFormatException numberFormatException) {
                System.out.println("Bạn phải nhập số! Vui lòng nhập lại");
                check = true;
            }
        }while(check);
        return number;
    };

    public static double tryCatchDouble() {
        double number = 0;
        boolean check = true;
        do {
            try {
                number = Double.parseDouble(sc.nextLine());
                check = false;
            }
            catch (NumberFormatException numberFormatException) {
                System.out.println("Bạn phải nhập số! Vui lòng nhập lại");
                check = true;
            }
        }while(check);
        return number;
    };

    public static Date tryCatchBirth() {
        boolean check = true;

        Date birthDate = new Date();
        SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
        df.setLenient(false); //set false để kiểm tra tính hợp lệ của date. Vd: tháng 2 phải có 28,29 ngày, 1 năm phải có 12 tháng,...
        do {
            try{
                String b = sc.nextLine();
                birthDate = df.parse(b); // parse dateString thành kiểu Date
                check = false;
            }
            catch (ParseException e) { //Quăng lỗi nếu date không hợp lệ
                System.out.println("Invalid date");
                check = true;
            }
        }while (check);

        return birthDate;
    }
}
