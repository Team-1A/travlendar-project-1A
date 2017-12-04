/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 *
 * @author A455LF-WIN10
 */
import Model.Location;
import com.mysql.jdbc.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author kivla
 */
public class LocationDAO extends DAO {
    
    public static List<Location> getAll(){
        List<Location> locations = new ArrayList<>();
        try {
        Connection con = (Connection) getConnection();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM location");
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()){
            Location locObj = new Location();
            locObj.setLocation_Lat(rs.getDouble("Lat"));
            locObj.setLocation_Long(rs.getDouble("Long"));
            
            locations.add(locObj);
        }
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return locations;
    }
    
    public static int save(Location _location){
        Integer stats = 0;
        try{
            Connection con = (Connection) getConnection();
            Statement st = con.createStatement();
            
            Double Long = _location.getLocation_Long();
            Double Lat = _location.getLocation_Lat();
            
            String sql = "INSERT INTO location (Location_Long,Location_Lat) VALUES(\"" + Long + "\",\"" + Lat +"\");";
            stats = st.executeUpdate(sql);
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return stats;
    }
}
    
