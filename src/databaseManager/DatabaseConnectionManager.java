package databaseManager;


/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author Marku
 */
public class DatabaseConnectionManager {
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String SERVER = "localhost";
    private static final String PORT = "3306";
    private static final String DATABASE_NAME = "myschool";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    static {
        try {
            Class.forName(DRIVER);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        String URL = "jdbc:mysql://" + SERVER + ":" + PORT + "/" + DATABASE_NAME;
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
