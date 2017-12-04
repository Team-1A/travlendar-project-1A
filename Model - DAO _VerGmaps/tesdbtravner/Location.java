/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Fadhil
 */
public class Location {
    private Double Location_Long;
    private Double Location_Lat;
    
    public Location(){
        Location_Long = null;
        Location_Lat = null;
    }

    /**
     * @return the Location_Long
     */
    public Double getLocation_Long() {
        return Location_Long;
    }

    /**
     * @param Location_Long the Location_Long to set
     */
    public void setLocation_Long(Double Location_Long) {
        this.Location_Long = Location_Long;
    }

    /**
     * @return the Location_Lat
     */
    public Double getLocation_Lat() {
        return Location_Lat;
    }

    /**
     * @param Location_Lat the Location_Lat to set
     */
    public void setLocation_Lat(Double Location_Lat) {
        this.Location_Lat = Location_Lat;
    }
    
}
