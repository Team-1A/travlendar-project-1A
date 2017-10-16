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
public class Schedule {
    private Date time;
    private ArrayList<Activity> listActivity;
    
    public Schedule(){
        time = null;
        listActivity = null;
    }
    
    public Schedule input(){
        Schedule schedule = new Schedule();// create new object schedule from class schedule
        schedule.setListactivity(schedule.getListactivity());// keep value from list getactivity to setactivity
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
     * @return the listActivity
     */
    ArrayList<Activity> getListactivity() {
        return listActivity;
    }

    /**
     * @param listActivity the listActivity to set
     */
    void setListactivity(ArrayList<Activity> listActivity) {
        this.listActivity = listActivity;
    }

    boolean isEmpty() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    void printActivity(ArrayList<Activity> listActivity)  {
        if(listActivity != null){
            for(int i = 0; i<listActivity.size(); i++){// trace listActivity as counter i
                System.out.println("Activity's name: " + listActivity.get(i).getEventName());//print event name
                System.out.println("From: " + listActivity.get(i).getRoute().getStartPoint().getNamePoint() + "(" + listActivity.get(i).getRoute().getStartPoint().getAddressPoint() + ")");// print name start location
                System.out.println("To: " + listActivity.get(i).getRoute().getPointArrived().getNamePoint() + "(" + listActivity.get(i).getRoute().getPointArrived().getAddressPoint() + ")");// print name arrive location
                System.out.println("Priority Scale: " + listActivity.get(i).getPriority());//print priority
            }
        }else{
            System.out.println("List is Empty");
        }
        System.out.println();
    }
    
    public static Comparator<Schedule> timeComparator = new Comparator<Schedule>() { // create new object timeComparator from Comparator
        @Override
        public int compare(Schedule mySchedule1, Schedule mySchedule2) {
            Date time1 = mySchedule1.getTime(); // object time 1 keep value from mySchedule1.getTime
            Date time2 = mySchedule2.getTime();// object time 2 keep value from mySchedule2.getTime
            
            return time1.compareTo(time2);
        }
    };
    
}
