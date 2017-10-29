/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import com.mysql.jdbc.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import Model.Location;

/**
 *
 * @author Kivlan Aziz Al-Falaah
 */
public class LocationDAO extends DAO{
//    public static Connection getConnection(){
//        Connection con = null;
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/travlendar", "root", "");
//        } catch (ClassNotFoundException | SQLException ex){
//            System.out.println(ex);
//        }
//        return con;
//    }
    
    public static List<Location> getAll(){
        List<Location> locations = new ArrayList<>();
        try {
        Connection con = getConnection();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM location");
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()){
            Location locObj = new Location();
            locObj.setId_Location(rs.getInt("ID_Location"));
            locObj.setNamePoint(rs.getString("Location_Name"));
            locObj.setAddressPoint(rs.getString("Location_Address"));
            locations.add(locObj);
        }
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return locations;
    }
    
    public static String getByID(int ID){
        String name = null;
        try{
        Connection con = getConnection();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM location WHERE ID_Location ="+ID);
        ResultSet rs = ps.executeQuery();  
        
        while(rs.next()){
            name = rs.getString("Location_Name");
        }
        } catch (SQLException ex){
            System.out.println(ex);
        }
        return name;
    }
    
    public static int save(Location _location){
        int stats = 0;
        try{
            Connection con = getConnection();
            Statement st = con.createStatement();
            
            String locName = _location.getNamePoint();
            String locAddr = _location.getAddressPoint();
            
            String sql = "INSERT INTO location (Location_Name,Location_Address) VALUES(\"" + locName + "\",\"" + locAddr +"\");";
            stats = st.executeUpdate(sql);
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return stats;
    }
}
