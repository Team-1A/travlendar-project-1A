package Model;

/***********************************************************************
 * Module:  Legs.java
 * Author:  Fadhil
 * Purpose: Defines the Class Legs
 ***********************************************************************/

import java.util.*;

public class Legs {
    private Distance distance;
    private Duration duration;
    private String start_address;
    private Point start_location;
    private String end_address;
    private Point end_location;
    private Steps[] steps;

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
     * @return the steps
     */
    public Steps[] getSteps() {
        return steps;
    }

    /**
     * @param steps the steps to set
     */
    public void setSteps(Steps[] steps) {
        this.setSteps(steps);
    }

    /**
     * @return the start_address
     */
    public String getStart_address() {
        return start_address;
    }

    /**
     * @param start_address the start_address to set
     */
    public void setStart_address(String start_address) {
        this.start_address = start_address;
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
     * @return the end_address
     */
    public String getEnd_address() {
        return end_address;
    }

    /**
     * @param end_address the end_address to set
     */
    public void setEnd_address(String end_address) {
        this.end_address = end_address;
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

}