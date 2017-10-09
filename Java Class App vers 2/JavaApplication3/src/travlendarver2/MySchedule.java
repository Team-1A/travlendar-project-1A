/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendarver2;

import java.util.*;

/**
 *
 * @author Rohmat Dasuki
 */
public class MySchedule {
    private Date time;
    private ArrayList<Activity> activity;
    
    public MySchedule(){
        time = null;
    }
    
    public MySchedule input(){
        MySchedule schedule = new MySchedule();
        
        return schedule;
    }

    /**
     * @return the time
     */
    public Date getTime() {
        return time;
    }

    /**
     * @param time the time to set
     */
    public void setTime(Date time) {
        this.time = time;
    }
}
