/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendarver2;

import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 *
 * @author Rohmat Dasuki
 */
class Activity {
    private String eventName;
    private Integer priority;
    private Distance route;
    private Date eventDate;
    private Time startEventTime;
    private Time endEventTime;
    
    /*
        Constructor pada class Activity
    */
    public Activity(){
        eventName = null;
        priority = 0;
        route = null;
        eventDate = null;
        startEventTime = null;
        endEventTime = null;
    }   

    /**
     * @return the eventName
     */
    public String getEventName() {
        return eventName;
    }

    /**
     * @param eventName the eventName to set
     */
    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    /**
     * @return the priority
     */
    public int getPriority() {
        return priority;
    }

    /**
     * @param priority the priority to set
     */
    public void setPriority(int priority) {
        this.priority = priority;
    }
    
    /**
     * @return the route
     */
    public Distance getRoute() {
        return route;
    }

    /**
     * @param route the route to set
     */
    public void setRoute(Distance route) {
        this.route = route;
    }
    
    /**
     * @return the eventDate
     */
    public Date getEventDate() {
        return eventDate;
    }

    /**
     * @param eventDate the eventDate to set
     */
    public void setEventDate(Date eventDate) {
        this.eventDate = eventDate;
    }

    /**
     * @return the startEventtime
     */
    public Time getStartEventTime() {
        return startEventTime;
    }

    /**
     * @param startEventTime the startEventtime to set
     */
    public void setStartEventTime(Time startEventTime) {
        this.startEventTime = startEventTime;
    }

    /**
     * @return the endEventtime
     */
    public Date getEndEventTime() {
        return endEventTime;
    }

    /**
     * @param endEventTime the endEventtime to set
     */
    public void setEndEventTime(Time endEventTime) {
        this.endEventTime = endEventTime;
    }
    /**
     * @param SetTime the endEventtime to set
     */
    public void setTime(Time startEventTime, Time endEventTime){
        this.setStartEventTime(startEventTime);
        this.setEndEventTime(endEventTime);
    }
    
    public Activity inputActivity(ArrayList<TravelData> listRoute) throws ParseException {
        Activity activity = new Activity();// create new object activity from class Activity
        Scanner scan = new Scanner(System.in);//create new object scan 
        SimpleDateFormat formatTime = new SimpleDateFormat("hh.mm"); // create new object formatTime from library SimpleDateFormat 
        
        System.out.print("Activity's title : ");
        activity.setEventName(scan.nextLine());// input event name
        System.out.println();
        
        for(int i = 0; i<listRoute.size(); i++){
            // print name start location and address start location  //print name arrrive location and name arrive address location 
            System.out.println((i+1) + ". " + listRoute.get(i).getRoute().getStartPoint().getLocation_Name() +" (" + listRoute.get(i).getRoute().getStartPoint().getLocation_Address() + ") = " + listRoute.get(i).getRoute().getPointArrived().getLocation_Name()  + " (" + listRoute.get(i).getRoute().getPointArrived().getLocation_Address() + ") ");
        }
        System.out.print("Choose : ");
        //take array from travle data for start location and arrive location
        activity.setRoute(listRoute.get(Integer.parseInt(scan.nextLine())-1).getRoute());
        
        System.out.print("\nInput start event(hh.mm) : ");
        //take Date time for start event
        activity.setStartEventTime((Time) formatTime.parseObject(scan.nextLine()));
        
        System.out.print("\nInput end event(hh.mm) : ");
        //take Date time for end event
        activity.setEndEventTime((Time) formatTime.parseObject(scan.nextLine()));
        
        System.out.print("Prioritas(1-5) : ");
        //take value priority 
        activity.setPriority(Integer.parseInt(scan.nextLine()));
        
        return activity;
    }
    
    public static Comparator<Activity> activityComparator = new Comparator<Activity>() {//public create new object from Comparator
        @Override
        public int compare(Activity activity1, Activity activity2) {
            Time startDate1 = activity1.getStartEventTime();// create object start event
            Time startDate2 = activity2.getStartEventTime();// create object end event
            
            return startDate1.compareTo(startDate2);
        }
    };
    
}
