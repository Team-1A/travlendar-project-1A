/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendarver2DAO;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import travlendarver2.Distance;

/**
 *
 * @author kivla
 */
public class DistanceDAO {
    public static Connection getConnection(){
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/travlendar", "root", "");
        } catch (ClassNotFoundException | SQLException ex){
            System.out.println(ex);
        }
        return con;
    }
    
    public static List<Distance> getAll(){
        List<Distance> distance = new ArrayList<>();
        try {
        Connection con = getConnection();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM distance");
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()){
            Distance dist = new Distance();
            // TODO : Set ID Start Loc & Destination
            dist.setDistanceKM(rs.getInt("Distance_KM"));
            dist.setDistanceM(rs.getInt("Distance_M"));
            distance.add(dist);
        }
        } catch (SQLException ex){
            System.out.println(ex);
        }
        return distance;
    }
    
    public static int save(Distance _distance){
        int stats = 0;
        try{
            Connection con = getConnection();
            Statement st = con.createStatement();
            
            // TODO : Add ID Start Loc & Destination
            int distKM = _distance.getDistanceKM();
            int distM = _distance.getDistanceM();
            String sql = "INSERT INTO distance (Distance_KM ,Distance_M) VALUES(\"" + distKM + "\",\"" + distM +"\");";
            stats = st.executeUpdate(sql);
        } catch (SQLException ex){
            System.out.println(ex);
        }
        return stats;
    }
}
