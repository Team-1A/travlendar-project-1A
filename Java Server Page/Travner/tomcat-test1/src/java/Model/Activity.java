package Model;

import java.sql.Time;
import java.util.Comparator;

/**
 *
 * @author Rohmat Dasuki 
 */
public class Activity {
    
    private Integer id_Activity;
    private Integer id_StartLocation;
    private Integer id_Destination;
    private String TransportationCode;
    private String eventName;
    private Integer priority;
    private java.sql.Date eventDate;
    private Time startEventTime;
    private Time endEventTime;
    
    /*
        Constructor pada class Activity
    */
    public Activity(){
        id_Activity = null;
        id_StartLocation = 0;
        id_Destination = 0;
        TransportationCode = null;
        eventName = null;
        priority = 0;
        eventDate = null;
        startEventTime = null;
        endEventTime = null;
    }
    
    /**
     * @return the id_Activity
     */
    public Integer getId_Activity() {
        return id_Activity;
    }

    /**
     * @param id_Activity the id_Activity to set
     */
    public void setId_Activity(Integer id_Activity) {
        this.id_Activity = id_Activity;
    }

    /**
     * @return the id_StartLocation
     */
    public Integer getId_StartLocation() {
        return id_StartLocation;
    }

    /**
     * @param id_StartLocation the id_StartLocation to set
     */
    public void setId_StartLocation(Integer id_StartLocation) {
        this.id_StartLocation = id_StartLocation;
    }

    /**
     * @return the id_Destination
     */
    public Integer getId_Destination() {
        return id_Destination;
    }

    /**
     * @param id_Destination the id_Destination to set
     */
    public void setId_Destination(Integer id_Destination) {
        this.id_Destination = id_Destination;
    }

    /**
     * @return the TransportationCode
     */
    public String getTransportationCode() {
        return TransportationCode;
    }

    /**
     * @param TransportationCode the TransportationCode to set
     */
    public void setTransportationCode(String TransportationCode) {
        this.TransportationCode = TransportationCode;
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
     * @return the eventDate
     */
    public java.sql.Date getEventDate() {
        return eventDate;
    }

    /**
     * @param eventDate the eventDate to set
     */
    public void setEventDate(java.sql.Date eventDate) {
        this.eventDate = eventDate;
    }

    /**
     * @return the startEventTime
     */
    public Time getStartEventTime() {
        return startEventTime;
    }

    /**
     * @param startEventTime the startEventTime to set
     */
    public void setStartEventTime(Time startEventTime) {
        this.startEventTime = startEventTime;
    }

    /**
     * @return the endEventTime
     */
    public Time getEndEventTime() {
        return endEventTime;
    }

    /**
     * @param endEventTime the endEventTime to set
     */
    public void setEndEventTime(Time endEventTime) {
        this.endEventTime = endEventTime;
    }
    
    public static Comparator<Activity> activityComparator = (Activity activity1, Activity activity2) -> {
        Time startDate1 = activity1.getStartEventTime();// create object start event
        Time startDate2 = activity2.getStartEventTime();// create object end event
        
        return startDate1.compareTo(startDate2);
    } //public create new object from Comparator
    ;
    
}
