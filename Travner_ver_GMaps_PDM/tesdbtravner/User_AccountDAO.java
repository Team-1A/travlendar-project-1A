/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tesdbtravner;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import static tesdbtravner.TesDBTravner.disconnect;
import static tesdbtravner.TesDBTravner.getConnection;
/**
 *
 * @author A455LF-WIN10
 */
public class User_AccountDAO extends TesDBTravner {
    public static List<User_Account> getAll(){
        List<User_Account> User_Account = new ArrayList<>();
        try {
        com.mysql.jdbc.Connection con = (com.mysql.jdbc.Connection) getConnection();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM location");
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()){
            User_Account User = new User_Account();
            User.setUser_ID(rs.getInt("User_ID"));
            User.setUsername(rs.getString("Username"));
            User.setPassword(rs.getString("Password"));
            
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
            
            Double Location_Long = _user_account.getNamePoint();
            Double Location_Lat = _user_account.getAddressPoint();
            
            String sql = "INSERT INTO location (Location_Long,Location_Lat) VALUES(\"" + Location_Long + "\",\"" + Location_Lat +"\");";
            stats = st.executeUpdate(sql);
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return stats;
    }
}
   
    


    
    

