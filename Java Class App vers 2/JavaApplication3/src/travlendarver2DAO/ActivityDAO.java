/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendarver2DAO;

import com.mysql.jdbc.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;
import travlendarver2.Activity;

/**
 *
 * @author kivla
 */
public class ActivityDAO extends DAO{
//    public static Connection getConnection(){
//        Connection con = null;
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/travlendar", "root", "");
//        } catch (ClassNotFoundException | SQLException ex){
//            System.out.println(ex);
//        }
//        return con;
//    }
    
    public static List<Activity> getAll(){
        List<Activity> Activity = new ArrayList<>();
        try {
        Connection con = getConnection();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM activity");
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()){
            Activity act = new Activity();
            // TODO : Set ID Start Loc & Destination & Transportation_Code
            act.setEventName(rs.getString("Activity_Name"));
            act.setStartEventTime(rs.getTime("Start_Time"));
            act.setEndEventTime(rs.getTime("End_Time"));
            act.setPriority(rs.getInt("Priority_Scale"));
            Activity.add(act);
        }
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return Activity;
    }
    
    public static int save(Activity _activity){
        int stats = 0;
        try{
            Connection con = getConnection();
            Statement st = con.createStatement();
            
            // TODO : Add ID Start Loc & Destination & Transportation_Code
            String eventName = _activity.getEventName();
            Time startTime = _activity.getStartEventTime();
            Time endTime = _activity.getEndEventTime();
            int priority = _activity.getPriority();
            String sql = "INSERT INTO activity (Activity_Name,Start_Time,End_Time,Priority_Scale) VALUES(\"" + eventName + "\",\"" + startTime +"\",\"" + endTime +"\",\"" + priority +"\");";
            stats = st.executeUpdate(sql);
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return stats;
    }
}
