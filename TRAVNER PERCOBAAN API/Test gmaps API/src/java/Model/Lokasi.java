/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Hydrolyze
 */
public class Lokasi {
    private String startloc;
    private String startlat;
    private String startlng;
    private String destinationloc;
    private String destinationlat;
    private String destinationlng;
    private Integer distance;
    
    public Lokasi(){
        startloc = null;
        startlat = null;
        startlng = null;
        destinationloc = null;
        destinationlat = null;
        destinationlng = null;
        distance = 0;
    }

    /**
     * @return the startloc
     */
    public String getStartloc() {
        return startloc;
    }

    /**
     * @param startloc the startloc to set
     */
    public void setStartloc(String startloc) {
        this.startloc = startloc;
    }

    /**
     * @return the startlat
     */
    public String getStartlat() {
        return startlat;
    }

    /**
     * @param startlat the startlat to set
     */
    public void setStartlat(String startlat) {
        this.startlat = startlat;
    }

    /**
     * @return the startlng
     */
    public String getStartlng() {
        return startlng;
    }

    /**
     * @param startlng the startlng to set
     */
    public void setStartlng(String startlng) {
        this.startlng = startlng;
    }

    /**
     * @return the destinationloc
     */
    public String getDestinationloc() {
        return destinationloc;
    }

    /**
     * @param destinationloc the destinationloc to set
     */
    public void setDestinationloc(String destinationloc) {
        this.destinationloc = destinationloc;
    }

    /**
     * @return the destinationlat
     */
    public String getDestinationlat() {
        return destinationlat;
    }

    /**
     * @param destinationlat the destinationlat to set
     */
    public void setDestinationlat(String destinationlat) {
        this.destinationlat = destinationlat;
    }

    /**
     * @return the destinationlng
     */
    public String getDestinationlng() {
        return destinationlng;
    }

    /**
     * @param destinationlng the destinationlng to set
     */
    public void setDestinationlng(String destinationlng) {
        this.destinationlng = destinationlng;
    }

    /**
     * @return the distance
     */
    public Integer getDistance() {
        return distance;
    }

    /**
     * @param distance the distance to set
     */
    public void setDistance(Integer distance) {
        this.distance = distance;
    }
}
