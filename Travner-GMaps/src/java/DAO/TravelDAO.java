/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
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
        List<Travel> Travel;
        Travel = new ArrayList<>();
        try {
            java.sql.Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM Travel");
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                Travel tra = new Travel();
                tra.setTravel_ID(rs.getInt("Travel_ID"));
                tra.setTransportation_Mode(rs.getString("Transportation_Mode"));
                Travel.add(tra);
            }
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return Travel;
    }
    
    public static int save(Travel _travel){
        Integer stats = 0;
        try{
            java.sql.Connection con = getConnection();
            Statement st = con.createStatement();
            
            Integer Travel_ID = _travel.getTravel_ID();
            Double StartLocation_Long = _travel.getStartLocation_Long();
            Double StartLocation_Lat = _travel.getStartLocation_Lat();
            Double DestLocation_Long = _travel.getDestLocation_Long();
            Double DestLocation_Lat = _travel.getDestLocation_Lat();
            String Transportation_Mode=_travel.getTransportation_Mode();
            java.sql.Date Departure_Time = (java.sql.Date) _travel.getDeparture_Time();
           
            
            String sql = "INSERT INTO travel (Travel_ID,StartLocation_Long,StartLocation_Lat,DestLocation_Long,DestLocation_Lat,Transportation_Mode,Departure_Time) VALUES(\"" + StartLocation_Long+ "\",\"" + StartLocation_Lat + "\",\"" + DestLocation_Long + "\",\"" + DestLocation_Lat + "\",\"" + Transportation_Mode  + "\",\"" +  "\",\"" + Departure_Time +  "\");";
            stats = st.executeUpdate(sql);
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return stats;
    }
}
    

