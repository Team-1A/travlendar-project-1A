/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

/**
 *
 * @author Fadhil
 */
public class Activity {
    private Integer Activity_ID;
    private Integer Travel_ID;
    private String Email;
    private String Activity_Name;
    private java.sql.Timestamp Time_Start;
    private java.sql.Timestamp Time_End;
    private Time Spare_Time;
    
    public Activity(){
        Activity_ID = 0;
        Travel_ID = 0;
        Email = null;
        Activity_Name = null;
        Time_Start = null;
        Time_End = null;
        Spare_Time = null;
    }

    /**
     * @return the Activity_ID
     */
    public Integer getActivity_ID() {
        return Activity_ID;
    }

    /**
     * @param Activity_ID the Activity_ID to set
     */
    public void setActivity_ID(Integer Activity_ID) {
        this.Activity_ID = Activity_ID;
    }

    /**
     * @return the Travel_ID
     */
    public Integer getTravel_ID() {
        return Travel_ID;
    }

    /**
     * @param Travel_ID the Travel_ID to set
     */
    public void setTravel_ID(Integer Travel_ID) {
        this.Travel_ID = Travel_ID;
    }

    /**
     * @return the Activity_Name
     */
    public String getActivity_Name() {
        return Activity_Name;
    }

    /**
     * @param Activity_Name the Activity_Name to set
     */
    public void setActivity_Name(String Activity_Name) {
        this.Activity_Name = Activity_Name;
    }

    /**
     * @return the Time_Start
     */
    public Timestamp getTime_Start() {
        return Time_Start;
    }

    /**
     * @param Time_Start the Time_Start to set
     */
    public void setTime_Start(java.sql.Timestamp Time_Start) {
        this.Time_Start = Time_Start;
    }

    /**
     * @return the Time_End
     */
    public Timestamp getTime_End() {
        return Time_End;
    }

    /**
     * @param Time_End the Time_End to set
     */
    public void setTime_End(java.sql.Timestamp Time_End) {
        this.Time_End = Time_End;
    }

    /**
     * @return the Spare_Time
     */
    public Time getSpare_Time() {
        return Spare_Time;
    }

    /**
     * @param Spare_Time the Spare_Time to set
     */
    public void setSpare_Time(Time Spare_Time) {
        this.Spare_Time = Spare_Time;
    }

    /**
     * @return the Username
     */
    public String getEmail() {
        return Email;
    }

    /**
     * @param Username the Username to set
     */
    public void setEmail(String Email) {
        this.Email = Email;
    }
    
}
