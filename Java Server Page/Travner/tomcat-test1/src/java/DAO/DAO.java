/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @authorKivlan Aziz Al-Falaah
 */
public class DAO {
    static Connection con = null;
    
    public static Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/travlendar", "root", "");
        } catch (ClassNotFoundException | SQLException ex){
            System.out.println(ex);
        }
        return con;
    }
    
    protected static void disconnect(){
        try{
        if (con != null && !con.isClosed()) {
            con.close();
        }
        } catch (SQLException ex){
            System.out.println(ex);
        }
    }
}
