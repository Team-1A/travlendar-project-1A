/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Date;

/**
 *
 * @author Fadhil
 */
public class Travel {
    private Integer Travel_ID;
    private Double StartLocation_Lat;
    private Double StartLocation_Long;
    private Double DestLocation_Lat;
    private Double DestLocation_Long;
    private String Transportation_Mode;
    private Date Departure_Time;
    
    public Travel(){
        Travel_ID = 0;
        StartLocation_Lat = null;
        StartLocation_Long = null;
        DestLocation_Lat = null;
        DestLocation_Long = null;
        Transportation_Mode = null;
        Departure_Time = null;
    }

    /**
     * @return the Travel_ID
     */
    public Integer getTravel_ID() {
        return Travel_ID;
    }

    /**
     * @param Travel_ID the Travel_ID to set
     */
    public void setTravel_ID(Integer Travel_ID) {
        this.Travel_ID = Travel_ID;
    }

    /**
     * @return the StartLocation_Lat
     */
    public Double getStartLocation_Lat() {
        return StartLocation_Lat;
    }

    /**
     * @param StartLocation_Lat the StartLocation_Lat to set
     */
    public void setStartLocation_Lat(Double StartLocation_Lat) {
        this.StartLocation_Lat = StartLocation_Lat;
    }

    /**
     * @return the StartLocation_Long
     */
    public Double getStartLocation_Long() {
        return StartLocation_Long;
    }

    /**
     * @param StartLocation_Long the StartLocation_Long to set
     */
    public void setStartLocation_Long(Double StartLocation_Long) {
        this.StartLocation_Long = StartLocation_Long;
    }

    /**
     * @return the DestLocation_Lat
     */
    public Double getDestLocation_Lat() {
        return DestLocation_Lat;
    }

    /**
     * @param DestLocation_Lat the DestLocation_Lat to set
     */
    public void setDestLocation_Lat(Double DestLocation_Lat) {
        this.DestLocation_Lat = DestLocation_Lat;
    }

    /**
     * @return the DestLocation_Long
     */
    public Double getDestLocation_Long() {
        return DestLocation_Long;
    }

    /**
     * @param DestLocation_Long the DestLocation_Long to set
     */
    public void setDestLocation_Long(Double DestLocation_Long) {
        this.DestLocation_Long = DestLocation_Long;
    }

    /**
     * @return the Transportation_Mode
     */
    public String getTransportation_Mode() {
        return Transportation_Mode;
    }

    /**
     * @param Transportation_Mode the Transportation_Mode to set
     */
    public void setTransportation_Mode(String Transportation_Mode) {
        this.Transportation_Mode = Transportation_Mode;
    }

    /**
     * @return the Departure_Time
     */
    public Date getDeparture_Time() {
        return Departure_Time;
    }

    /**
     * @param Departure_Time the Departure_Time to set
     */
    public void setDeparture_Time(Date Departure_Time) {
        this.Departure_Time = Departure_Time;
    }
    
}
