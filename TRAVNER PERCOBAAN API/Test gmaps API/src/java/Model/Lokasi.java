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
    private Double startlat;
    private Double startlng;
    private String destinationloc;
    private Double destinationlat;
    private Double destinationlng;
    private Double distance;
    
    public Lokasi(){
        startloc = null;
        startlat = null;
        startlng = null;
        destinationloc = null;
        destinationlat = null;
        destinationlng = null;
        distance = null;
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
    public Double getStartlat() {
        return startlat;
    }

    /**
     * @param startlat the startlat to set
     */
    public void setStartlat(Double startlat) {
        this.startlat = startlat;
    }

    /**
     * @return the startlng
     */
    public Double getStartlng() {
        return startlng;
    }

    /**
     * @param startlng the startlng to set
     */
    public void setStartlng(Double startlng) {
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
    public Double getDestinationlat() {
        return destinationlat;
    }

    /**
     * @param destinationlat the destinationlat to set
     */
    public void setDestinationlat(Double destinationlat) {
        this.destinationlat = destinationlat;
    }

    /**
     * @return the destinationlng
     */
    public Double getDestinationlng() {
        return destinationlng;
    }

    /**
     * @param destinationlng the destinationlng to set
     */
    public void setDestinationlng(Double destinationlng) {
        this.destinationlng = destinationlng;
    }

    /**
     * @return the distance
     */
    public Double getDistance() {
        return distance;
    }

    /**
     * @param distance the distance to set
     */
    public void setDistance(Double distance) {
        this.distance = distance;
    }

}
