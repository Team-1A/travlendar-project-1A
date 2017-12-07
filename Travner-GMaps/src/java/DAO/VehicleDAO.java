package DAO;

import Model.Vehicle;
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

public class VehicleDAO extends DAO {
    
    public static List<Vehicle> getAll(){
        List<Vehicle> vehicle = new ArrayList<>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM Vehicle");
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                Vehicle veh = new Vehicle();
                veh.setVehicle_Name(rs.getString("VEHICLE_NAME"));
                veh.setUser_ID(rs.getInt("USER_ID"));
                vehicle.add(veh);
            }
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return vehicle;
    }
    
    public static int save(Vehicle _vehicle){
        Integer stats = 0;
        try{
            Connection con = getConnection();
            Statement st = con.createStatement();
            
           
            String Vehicle_Name = _vehicle.getVehicle_Name();
            Integer User_ID =_vehicle.getUser_ID();
            
            String sql = "INSERT INTO Vehicle (VEHICLE_NAME,USER_ID) VALUES(\"" + Vehicle_Name + "\",\"" + User_ID + "\" );";
            stats = st.executeUpdate(sql);
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return stats;
    }  
}