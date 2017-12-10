package DAO;

import Model.Location;
import Model.Travel;
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

public class TravelDAO extends DAO{
    public static List<Travel> getAll(){
        List<Travel> travel = new ArrayList<>();
        try {
            java.sql.Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM travel");
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                Travel tra = new Travel();
                tra.setTravel_ID(rs.getInt("TRAVEL_ID"));
                tra.setStartLocation_Long(rs.getDouble("STARTLOCATION_LONG"));
                tra.setStartLocation_Lat(rs.getDouble("STARTLOCATION_LAT"));
                tra.setDestLocation_Long(rs.getDouble("DESTLOCATION_LONG"));
                tra.setDestLocation_Lat(rs.getDouble("DESTLOCATION_LAT"));
                tra.setTransportation_Mode(rs.getString("TRANSPORTATION_MODE"));
                tra.setDeparture_Time(rs.getTimestamp("DEPARTURE_TIME"));
                travel.add(tra);
            }
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return travel;
    }
    
    public static List<Integer> getID(){
        List<Integer> id = new ArrayList<>();
        try {
            java.sql.Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT TRAVEL_ID FROM travel");
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                int ID = rs.getInt("TRAVEL_ID");
                id.add(ID);
            }
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return id;
    }
    
    public static int save(Travel _travel){
        Integer stats = 0;
        try{
            java.sql.Connection con = getConnection();
            Statement st = con.createStatement();
            
            int Travel_ID = _travel.getTravel_ID();
            Double StartLocation_Long = _travel.getStartLocation_Long();
            Double StartLocation_Lat = _travel.getStartLocation_Lat();
            Double DestLocation_Long = _travel.getDestLocation_Long();
            Double DestLocation_Lat = _travel.getDestLocation_Lat();
            String Transportation_Mode=_travel.getTransportation_Mode();
            java.sql.Timestamp Departure_Time = _travel.getDeparture_Time();
           
            
            String sql = "INSERT INTO travel (TRAVEL_ID,STARTLOCATION_LONG,STARTLOCATION_LAT,DESTLOCATION_LONG,DESTLOCATION_LAT,TRANSPORTATION_MODE,DEPARTURE_TIME) VALUES(\"" + Travel_ID + "\",\"" + StartLocation_Long + "\",\"" + StartLocation_Lat + "\",\"" + DestLocation_Long + "\",\"" + DestLocation_Lat + "\",\"" + Transportation_Mode  + "\",\"" + Departure_Time +  "\");";
            stats = st.executeUpdate(sql);
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return stats;
    }
}