package Model;

/***********************************************************************
 * Module:  Steps.java
 * Author:  Fadhil
 * Purpose: Defines the Class Steps
 ***********************************************************************/

import java.util.*;

public class Steps {
    private Distance distance;
    private Duration duration;
    private Point start_location;
    private Point end_location;
    private String html_instructions;
    private String maneuver;
    private String travelMode;

    /**
     * @return the distance
     */
    public Distance getDistance() {
        return distance;
    }

    /**
     * @param distance the distance to set
     */
    public void setDistance(Distance distance) {
        this.distance = distance;
    }

    /**
     * @return the duration
     */
    public Duration getDuration() {
        return duration;
    }

    /**
     * @param duration the duration to set
     */
    public void setDuration(Duration duration) {
        this.duration = duration;
    }

    /**
     * @return the travelMode
     */
    public String getTravelMode() {
        return travelMode;
    }

    /**
     * @param travelMode the travelMode to set
     */
    public void setTravelMode(String travelMode) {
        this.travelMode = travelMode;
    }

    /**
     * @return the start_location
     */
    public Point getStart_location() {
        return start_location;
    }

    /**
     * @param start_location the start_location to set
     */
    public void setStart_location(Point start_location) {
        this.start_location = start_location;
    }

    /**
     * @return the end_location
     */
    public Point getEnd_location() {
        return end_location;
    }

    /**
     * @param end_location the end_location to set
     */
    public void setEnd_location(Point end_location) {
        this.end_location = end_location;
    }

    /**
     * @return the html_instructions
     */
    public String getHtml_instructions() {
        return html_instructions;
    }

    /**
     * @param html_instructions the html_instructions to set
     */
    public void setHtml_instructions(String html_instructions) {
        this.html_instructions = html_instructions;
    }

}