package DAO;

import Model.User_Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author A455LF-WIN10
 */

public class User_AccountDAO extends DAO {
    public static List<User_Account> getAll(){
        List<User_Account> User_Account = new ArrayList<>();
        try {
        com.mysql.jdbc.Connection con = (com.mysql.jdbc.Connection) getConnection();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM user_account");
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()){
            User_Account User = new User_Account();
            User.setUser_ID(rs.getInt("USER_ID"));
            User.setUsername(rs.getString("USERNAME"));
            User.setPassword(rs.getString("PASSWORD"));
            
            User_Account.add(User);
        }
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return User_Account;
    }
    
    public static List<User_Account> getUser(String username,String password){
        List<User_Account> User_Account = new ArrayList<>();
        try {
        com.mysql.jdbc.Connection con = (com.mysql.jdbc.Connection) getConnection();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM user_account where USERNAME = " + username + " AND PASSWORD = " + password + " ;");
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()){
            User_Account User = new User_Account();
            User.setUser_ID(rs.getInt("USER_ID"));
            User.setUsername(rs.getString("USERNAME"));
            User.setPassword(rs.getString("PASSWORD"));
            
            User_Account.add(User);
        }
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return User_Account;
    }
    
    public static int save(User_Account _user_account){
        Integer stats = 0;
        try{
            com.mysql.jdbc.Connection con = (com.mysql.jdbc.Connection) getConnection();
            Statement st = con.createStatement();
            
            Integer User_ID = _user_account.getUser_ID();
            String Username = _user_account.getUsername();
            String Password = _user_account.getPassword();
            
            String sql = "INSERT INTO user_account (USER_ID,USERNAME,PASSWORD) VALUES(\"" + User_ID + "\",\"" + Username + "\",\"" + Password + "\");";
            stats = st.executeUpdate(sql);
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return stats;
    }
}