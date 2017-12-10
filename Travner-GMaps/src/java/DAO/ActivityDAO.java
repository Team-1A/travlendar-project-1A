package DAO;

import Model.Activity;
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

public class ActivityDAO extends DAO {
    
    public static List<Activity> getAll(int userID){
        List<Activity> activity = new ArrayList<>();
        try {
            java.sql.Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM activity WHERE USER_ID = " + userID + " ;");
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                Activity act = new Activity();
                act.setActivity_ID(rs.getInt("ACTIVITY_ID"));
                act.setTravel_ID(rs.getInt("TRAVEL_ID"));
                act.setUser_ID(rs.getInt("USER_ID"));
                act.setActivity_Name(rs.getString("ACTIVITY_NAME"));
                act.setTime_Start(rs.getDate("TIME_START"));
                act.setTime_End(rs.getDate("TIME_END"));
                act.setSpare_Time(rs.getTime("SPARE_TIME"));
                activity.add(act);
            }
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return activity;
    }
    
    public static int save(Activity _activity){
        Integer stats = 0;
        try{
            java.sql.Connection con = getConnection();
            Statement st = con.createStatement();
            
            Integer Activity_ID = _activity.getActivity_ID();
            Integer Travel_ID = _activity.getTravel_ID();
            Integer User_ID = _activity.getUser_ID();
            String Activity_Name = _activity.getActivity_Name();
            java.sql.Date Time_Start = (java.sql.Date) _activity.getTime_Start();
            java.sql.Date Time_End = (java.sql.Date) _activity.getTime_End();
            Time Spare_Time = _activity.getSpare_Time();
           
            
            String sql = "INSERT INTO activity (TRAVEL_ID,USER_ID,ACTIVITY_NAME,TIME_START,TIME_END,SPARE_TIME) VALUES(\"" + Travel_ID + "\",\"" + User_ID + "\",\"" + Activity_Name + "\",\"" + Time_Start + "\",\"" + Time_End + "\",\"" + Spare_Time + "\");";
            stats = st.executeUpdate(sql);
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return stats;
    }
}