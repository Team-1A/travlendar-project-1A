/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendarver2;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 *
 * @author Rohmat Dasuki
 */
class Activity {
    private String eventName;
    private int priority;
    private Location location;
    private Date startEventtime;
    private Date endEventtime;
    
    /*
        Constructor pada class Activity
    */
    public Activity(){
        eventName = null;
        priority = 0;
        location = null;
        startEventtime = null;
        endEventtime = null;
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
     * @return the startEventtime
     */
    public Date getStartEventtime() {
        return startEventtime;
    }

    /**
     * @param startEventtime the startEventtime to set
     */
    public void setStartEventtime(Date startEventtime) {
        this.startEventtime = startEventtime;
    }

    /**
     * @return the endEventtime
     */
    public Date getEndEventtime() {
        return endEventtime;
    }

    /**
     * @param endEventtime the endEventtime to set
     */
    public void setEndEventtime(Date endEventtime) {
        this.endEventtime = endEventtime;
    }

    /**
     * @return the location
     */
    public Location getLocation() {
        return location;
    }

    /**
     * @param location the location to set
     */
    public void setLocation(Location location) {
        this.location = location;
    }
    
    public void setTime(Date startEventtime, Date endEventtime){
        this.setStartEventtime(startEventtime);
        this.setEndEventtime(endEventtime);
    }
    
    public Activity inputActivity(ArrayList<TravelData> listRoute) throws ParseException {
        Activity activity = new Activity();
        Scanner scan = new Scanner(System.in);
        SimpleDateFormat formatTime = new SimpleDateFormat("hh.mm");
        
        System.out.print("Activity's title : ");
        activity.setEventName(scan.nextLine());
        System.out.println();
        
        for(int i = 0; i<listRoute.size(); i++){
            System.out.println((i+1) + ". " + listRoute.get(i).getLocation().getNameStartPoint() + " (" + listRoute.get(i).getLocation().getAddressStartPoint() + ") = " + listRoute.get(i).getLocation().getNamePointArrived()  + " (" + listRoute.get(i).getLocation().getAddressPointArrived() + ") ");
        }
        System.out.print("Choose : ");
        activity.setLocation(listRoute.get(Integer.parseInt(scan.next())-1).getLocation());
        
        System.out.print("\nInput start event(hh.mm) : ");
        activity.startEventtime = formatTime.parse(scan.nextLine());
        
        System.out.print("\nInput start event(hh.mm) : ");
        activity.endEventtime = formatTime.parse(scan.nextLine());
        
        activity.setTime(activity.startEventtime, activity.endEventtime);
        
        System.out.print("Prioritas(1-5) : ");
        activity.setPriority(Integer.parseInt(scan.nextLine()));
        
        return activity;
    }
}
