/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tesdbtravner;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;



/**
 *
 * @author A455LF-WIN10
 */
public class ActivityDAO extends TesDBTravner {
    
    public static List<Activity> getAll(){
        List<Activity> Activity;
        Activity = new ArrayList<>();
        try {
            java.sql.Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM activity");
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                Activity act = new Activity();
                act.setActivity_ID(rs.getInt("Activity_ID"));
                act.setTravel_ID(rs.getInt("Travel_ID"));
                act.setUser_ID(rs.getInt("User_ID"));
                act.setActivity_Name(rs.getString("Activity_Name"));
                act.setTime_Start(rs.getDate("Time_Start"));
                act.setTime_End(rs.getDate("Time_End"));
                act.setSpareTime(rs.getTime("Spare_Time"));
                Activity.add(act);
            }
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return Activity;
    }
    
    public static int save(Activity _activity){
        Integer stats = 0;
        try{
            java.sql.Connection con = getConnection();
            Statement st = con.createStatement();
            
            Integer Activity_ID = _activity.getActivity_ID();
            Integer Travel_ID = _activity.Travel_ID();
            Integer User_ID = _activity.User_ID();
            String Activity_Name = _activity.getActivityName();
            java.sql.Date Time_Start = (java.sql.Date) _activity.getTime_Start();
            java.sql.Date Time_End = (java.sql.Date) _activity.getTime_End();
            Time Spare_Time = _activity.getSpareTime();
           
            
            String sql = "INSERT INTO activity (Activity_ID,Travel_ID,User_ID,Activity_Name,Time_Start,Time_End_) VALUES(\"" + Activity_ID+ "\",\"" + Travel_ID + "\",\"" + User_ID + "\",\"" + Activity_Name + "\",\"" + Time_Start + "\",\"" + Time_End + "\",\"" + Spare_Time + "\");";
            stats = st.executeUpdate(sql);
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return stats;
    }
}