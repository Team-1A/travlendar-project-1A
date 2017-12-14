package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author A455LF-WIN10
 */

public class DAO {
    public static Connection connection;
    
    public static Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3307/travner", "root", "");//khusus fadhil
//            connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/travner", "root", "");//untuk kelompok
        } catch (ClassNotFoundException | SQLException ex){
            System.out.println(ex);
        }
        return connection;
    }
    
    protected static void disconnect(){
        try{
        if (connection != null && !connection.isClosed()) {
            connection.close();
        }
        } catch (SQLException ex){
            System.out.println(ex);
        }
    }
}