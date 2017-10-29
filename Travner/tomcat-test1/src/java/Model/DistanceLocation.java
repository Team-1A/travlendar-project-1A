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
public class DistanceLocation {

    
    private int ID_Start;
    private int ID_Destination;
    private String startLoc;
    private String destination;
    private int distKm;
    private int distM;
    /**
     * @return the ID_Start
     */
    public int getID_Start() {
        return ID_Start;
    }

    /**
     * @param ID_Start the ID_Start to set
     */
    public void setID_Start(int ID_Start) {
        this.ID_Start = ID_Start;
    }

    /**
     * @return the ID_Destination
     */
    public int getID_Destination() {
        return ID_Destination;
    }

    /**
     * @param ID_Destination the ID_Destination to set
     */
    public void setID_Destination(int ID_Destination) {
        this.ID_Destination = ID_Destination;
    }

    /**
     * @return the startLoc
     */
    public String getStartLoc() {
        return startLoc;
    }

    /**
     * @param startLoc the startLoc to set
     */
    public void setStartLoc(String startLoc) {
        this.startLoc = startLoc;
    }

    /**
     * @return the destination
     */
    public String getDestination() {
        return destination;
    }

    /**
     * @param destination the destination to set
     */
    public void setDestination(String destination) {
        this.destination = destination;
    }

    /**
     * @return the distKm
     */
    public int getDistKm() {
        return distKm;
    }

    /**
     * @param distKm the distKm to set
     */
    public void setDistKm(int distKm) {
        this.distKm = distKm;
    }

    /**
     * @return the distM
     */
    public int getDistM() {
        return distM;
    }

    /**
     * @param distM the distM to set
     */
    public void setDistM(int distM) {
        this.distM = distM;
    }

}
