package respository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BaseRespository {
    private static String DB_URL = "jdbc:mysql://localhost:3306/furama";
    private static String USER_NAME = "root";
    private static String PASSWORD = "thanhcan0610";
    Connection connection;

    public BaseRespository() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.connection = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        return connection;
    }
}
