package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 *
 * @author A455LF-WIN10
 */

public class DAO {
    public static Connection con;
    public static Statement stm;
    

    /**
     * @param args the command line arguments
     * @throws java.sql.SQLException
     */
                
      static Connection connection = null;
    
    public static Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/testtravner", "root", "");
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
