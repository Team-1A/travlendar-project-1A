/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Kivlan Aziz Al-Falaah
 */
public class Activities {
        
    private String EventName;
    private String StartLoc;
    private String Destination;
    private String TransportationMode;
    private int distance;
    /**
     * @return the distance
     */
    public int getDistance() {
        return distance;
    }

    /**
     * @param distance the distance to set
     */
    public void setDistance(int distance) {
        this.distance = distance;
    }

    /**
     * @return the EventName
     */
    public String getEventName() {
        return EventName;
    }

    /**
     * @param EventName the EventName to set
     */
    public void setEventName(String EventName) {
        this.EventName = EventName;
    }

    /**
     * @return the StartLoc
     */
    public String getStartLoc() {
        return StartLoc;
    }

    /**
     * @param StartLoc the StartLoc to set
     */
    public void setStartLoc(String StartLoc) {
        this.StartLoc = StartLoc;
    }

    /**
     * @return the Destination
     */
    public String getDestination() {
        return Destination;
    }

    /**
     * @param Destination the Destination to set
     */
    public void setDestination(String Destination) {
        this.Destination = Destination;
    }

    /**
     * @return the TransportationMode
     */
    public String getTransportationMode() {
        return TransportationMode;
    }

    /**
     * @param TransportationMode the TransportationMode to set
     */
    public void setTransportationMode(String TransportationMode) {
        this.TransportationMode = TransportationMode;
    }
    
}
