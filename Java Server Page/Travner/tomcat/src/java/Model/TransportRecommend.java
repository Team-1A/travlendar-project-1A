/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author kivla
 */
public class TransportRecommend {

    private String TransportName;
    private int TransportVelocity;
    private int distance;
    private int Estimation;
    /**
     * @return the Estimation
     */
    public int getEstimation() {
        return Estimation;
    }

    /**
     * @param Estimation the Estimation to set
     */
    public void setEstimation(int Estimation) {
        this.Estimation = Estimation;
    }

    /**
     * @return the TransportName
     */
    public String getTransportName() {
        return TransportName;
    }

    /**
     * @param TransportName the TransportName to set
     */
    public void setTransportName(String TransportName) {
        this.TransportName = TransportName;
    }

    /**
     * @return the TransportVelocity
     */
    public int getTransportVelocity() {
        return TransportVelocity;
    }

    /**
     * @param TransportVelocity the TransportVelocity to set
     */
    public void setTransportVelocity(int TransportVelocity) {
        this.TransportVelocity = TransportVelocity;
    }

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

}
