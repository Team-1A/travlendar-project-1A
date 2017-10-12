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
    
    void addNewActivity(ArrayList<Activity> activity, ArrayList<TravelData> listRoute) throws ParseException{
        Activity newActivity = new Activity();
        newActivity.inputActivity(listRoute);
        activity.add(newActivity);
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
    
    public void printActivity(MySchedule schedule)  {
        if(schedule.getListactivity() != null){
            for(int i = 0; i<schedule.getListactivity().size(); i++){
                System.out.println("Activity's name: " + schedule.getListactivity().get(i).getEventName());
                System.out.println("From: " + schedule.getListactivity().get(i).getRoute().getStartPoint().getNamePoint() + "@" + schedule.getListactivity().get(i).getRoute().getStartPoint().getAddressPoint());
                System.out.println("To: " + schedule.getListactivity().get(i).getRoute().getPointArrived().getNamePoint() + "@" + schedule.getListactivity().get(i).getRoute().getPointArrived().getAddressPoint());
                System.out.println("Priority Scale: " + schedule.getListactivity().get(i).getPriority());
            }
        }else{
            System.out.println("List is Empty");
        }
    }
}
