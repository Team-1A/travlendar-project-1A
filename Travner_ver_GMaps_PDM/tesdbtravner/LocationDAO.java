/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tesdbtravner;

/**
 *
 * @author A455LF-WIN10
 */
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
public class LocationDAO extends TesDBTravner {
    
    public static List<Location> getAll(){
        List<Location> locations = new ArrayList<>();
        try {
        Connection con = (Connection) getConnection();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM location");
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()){
            Location locObj = new Location();
            locObj.setLocation_Long(rs.getInt("ID_Location"));
            locObj.setLocation_Lat(rs.getString("Location_Name"));
            
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
    
