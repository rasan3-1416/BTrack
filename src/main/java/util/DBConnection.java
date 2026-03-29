package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    private static final String URL = "jdbc:oracle:thin:@localhost:1521/XEPDB1";
    private static final String USERNAME = "btrack_user";
    private static final String PASSWORD = "pass1234";

    public static Connection getConnection() throws Exception {

        Class.forName("oracle.jdbc.driver.OracleDriver");

        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }
}
