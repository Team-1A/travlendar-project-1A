/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Hydrolyze
 */
public class DAO {
    static Connection connection = null;//default
    
    public static Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3307/testgmapsapi", "root", "");
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
