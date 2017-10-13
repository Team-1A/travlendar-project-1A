/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendarver2;

import java.text.*;
import java.util.*;

/**
 *
 * @author Rohmat Dasuki
 */
public class MySchedule {
    private Date time;
    private ArrayList<Activity> listactivity;
    
    public MySchedule(){
        time = null;
        listactivity = null;
    }
    
    public MySchedule input(){
        MySchedule schedule = new MySchedule();
        schedule.setListactivity(schedule.getListactivity());
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

    /**
     * @return the listactivity
     */
    ArrayList<Activity> getListactivity() {
        return listactivity;
    }

    /**
     * @param listactivity the listactivity to set
     */
    void setListactivity(ArrayList<Activity> listactivity) {
        this.listactivity = listactivity;
    }

    boolean isEmpty() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    void printActivity(ArrayList<Activity> listActivity)  {
        if(listActivity != null){
            for(int i = 0; i<listActivity.size(); i++){
                System.out.println("Activity's name: " + listActivity.get(i).getEventName());
                System.out.println("From: " + listActivity.get(i).getRoute().getStartPoint().getNamePoint() + "(" + listActivity.get(i).getRoute().getStartPoint().getAddressPoint() + ")");
                System.out.println("To: " + listActivity.get(i).getRoute().getPointArrived().getNamePoint() + "(" + listActivity.get(i).getRoute().getPointArrived().getAddressPoint() + ")");
                System.out.println("Priority Scale: " + listActivity.get(i).getPriority());
            }
        }else{
            System.out.println("List is Empty");
        }
        System.out.println();
    }
    
    public static Comparator<MySchedule> timeComparator = new Comparator<MySchedule>() {
        @Override
        public int compare(MySchedule mySchedule1, MySchedule mySchedule2) {
            Date time1 = mySchedule1.getTime();
            Date time2 = mySchedule2.getTime();
            
            return time1.compareTo(time2);
        }
    };
    
}
