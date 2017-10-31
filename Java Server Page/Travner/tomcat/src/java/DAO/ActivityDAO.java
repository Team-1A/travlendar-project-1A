package DAO;

import Model.Activity;
import Model.Location;
import com.mysql.jdbc.Connection;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Kivlan Aziz Al-Falaah
 */
public class ActivityDAO extends DAO {
    
    public static List<Activity> getAll(){
        List<Activity> Activity = new ArrayList<>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM activity");
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                Activity act = new Activity();
                act.setId_Activity(rs.getInt("ID_Activity"));
                act.setId_StartLocation(rs.getInt("ID_StartLocation"));
                act.setId_Destination(rs.getInt("ID_Dastination"));
                act.setTransportationCode(rs.getString("TransportationCode"));
                act.setEventName(rs.getString("Activity_Name"));
                act.setEventDate(rs.getDate("Date"));
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
        Integer stats = 0;
        try{
            Connection con = getConnection();
            Statement st = con.createStatement();
            
            Integer id_StartLocation = _activity.getId_StartLocation();
            Integer id_Destination = _activity.getId_Destination();
            String transportationCode = _activity.getTransportationCode();
            String eventName = _activity.getEventName();
            java.sql.Date eventDate = (java.sql.Date) _activity.getEventDate();
            Time startTime = _activity.getStartEventTime();
            Time endTime = _activity.getEndEventTime();
            Integer priority = _activity.getPriority();
            
            String sql = "INSERT INTO activity (ID_StartLocation,ID_Destination,TransportationCode,Activity_Name,Start_Time,End_Time,Priority_Scale) VALUES(\"" + id_StartLocation + "\",\"" + id_Destination + "\",\"" + transportationCode + "\",\"" + eventName + "\",\"" + eventDate + "\",\"" + startTime + "\",\"" + endTime + "\",\"" + priority + "\");";
            stats = st.executeUpdate(sql);
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return stats;
    }
    
    public static List<Activity> getByDate(java.sql.Date calendar){
        List<Activity> Activity = new ArrayList<>();
        try {
        Connection con = getConnection();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM activity WHERE Date ="+calendar);
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
            Activity act = new Activity();
            act.setId_Activity(rs.getInt("ID_Activity"));
            act.setId_StartLocation(rs.getInt("ID_StartLocation"));
            act.setId_Destination(rs.getInt("ID_Dastination"));
            act.setTransportationCode(rs.getString("TransportationCode"));
            act.setEventName(rs.getString("Activity_Name"));
            act.setEventDate(rs.getDate("Date"));
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

    ActivityDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    boolean simpan(Activity myActivity) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    List<Activity> listAllActivity(int halaman, int batasJmlItem) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    int getPageCount(int batasJmlItem) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
