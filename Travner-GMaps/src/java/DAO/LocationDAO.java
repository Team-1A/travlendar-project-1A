package DAO;

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
 * @author A455LF-WIN10
 */

public class LocationDAO extends DAO {
    
    public static List<Location> getAll(){
        List<Location> location = new ArrayList<>();
        try {
            Connection con = (Connection) getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM location");
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                Location locObj = new Location();
                locObj.setLocation_Long(rs.getDouble("LOCATION_LONG"));
                locObj.setLocation_Lat(rs.getDouble("LOCATION_LAT"));
                location.add(locObj);
            }
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return location;
    }
    
    public static int save(Location _location){
        Integer stats = 0;
        try{
            Connection con = (Connection) getConnection();
            Statement st = con.createStatement();
            
            Double Long = _location.getLocation_Long();
            Double Lat = _location.getLocation_Lat();
            
            String sql = "INSERT INTO location (LOCATION_LONG,LOCATION_LAT) VALUES(\"" + Long + "\",\"" + Lat +"\");";
            stats = st.executeUpdate(sql);
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return stats;
    }
}