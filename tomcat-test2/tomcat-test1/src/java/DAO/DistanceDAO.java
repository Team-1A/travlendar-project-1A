package DAO;

import Model.Distance;
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
public class DistanceDAO extends DAO {
    
    public static List<Distance> getAll(){
        List<Distance> distance = new ArrayList<>();
        try {
        Connection con = getConnection();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM distance");
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()){
            Distance dist = new Distance();
            dist.setId_StartLocation(rs.getInt("ID_StartLocation"));
            dist.setId_StartLocation(rs.getInt("ID_Destination"));
            dist.setDistanceKM(rs.getInt("Distance_KM"));
            dist.setDistanceM(rs.getInt("Distance_M"));
            distance.add(dist);
        }
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return distance;
    }
    
    public static int save(Distance _distance){
        Integer stats = 0;
        try{
            Connection con = getConnection();
            Statement st = con.createStatement();
            
            Integer id_StartLocation = _distance.getId_StartLocation();
            Integer id_Destination = _distance.getId_Destination();
            Integer distKM = _distance.getDistanceKM();
            Integer distM = _distance.getDistanceM();
            
            String sql = "INSERT INTO distance (ID_StartLocation,ID_Destination,Distance_KM ,Distance_M) VALUES(\"" + id_StartLocation + "\",\"" + id_Destination + "\",\"" + distKM + "\",\"" + distM +"\");";
            stats = st.executeUpdate(sql);
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return stats;
    }
}
