package DAO;

import com.mysql.jdbc.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import Model.TransportationMode;

/**
 *
 * @author Kivlan Aziz Al-Falaah
 */
public class TransportationModeDAO extends DAO {
    
    public static List<TransportationMode> getAll(){
        List<TransportationMode> transports = new ArrayList<>();
        try {
        Connection con = getConnection();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM transportation");
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()){
            TransportationMode transport = new TransportationMode();
            transport.setTransportation_Code(rs.getString("Transportation_Code"));
            transport.setTransportation(rs.getString("Transportation_Name"));
            transport.setVelocity(rs.getInt("Transportation_Velocity"));
            transports.add(transport);
        }
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return transports;
    }
    
    public static int save(TransportationMode _transport){
        Integer stats = 0;
        try{
            Connection con = getConnection();
            Statement st = con.createStatement();
            
            String transCode = _transport.getTransportation_Code();
            String transName = _transport.getTransportation();
            Integer transVelocity = _transport.getVelocity();
            
            String sql = "INSERT INTO transportation VALUES(\"" + transCode + "\",\"" + transName + "\",\"" + transVelocity + "\");";
            stats = st.executeUpdate(sql);
        } catch (Exception ex){
            System.out.println(ex);
        }
        disconnect();
        return stats;
    }

    TransportationModeDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
