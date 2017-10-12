/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendarver2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

/**
 *
 * @author Rohmat Dasuki
 */
public class Location {
    private String nameStartPoint;
    private String addressStartPoint;
    private String namePointArrived;
    private String addressPointArrived;
    private int distanceKM;
    private int distanceM;
    private int estimation;
    /*
        Getter dan Settter pada class Location
    */
    public Location(){
        nameStartPoint = null;
        addressStartPoint = null;
        namePointArrived = null;
        addressPointArrived = null;
        distanceM = 0;
        distanceKM = 0;
        estimation = 0;
    }

    /**
     * @return the distanceKM
     */
    public int getDistanceKM() {
        return distanceKM;
    }  /**
     * @param distanceKM the distanceKM to set
     */
     public void setDistanceKM(int distanceKM) {
        this.distanceKM = distanceKM;
    }

    /**
     * @param distanceM the distanceM to set
     */
    public int getDistanceM() {
        return distanceM;
    }
    /**
     * @return the distanceM
     */
    public void setDistanceM(int distanceM) {
        this.distanceM = distanceM;
    }

    public void setEstimation(int timeEstimation) {
        this.estimation = timeEstimation;
    }
    
    public double geTimeEstimation() {
        return estimation;
    }    
    
    public int inputEstimation(){
        Scanner scan = new Scanner(System.in);
        System.out.print("Masukan estimasi(menit) : ");
        int guess = Integer.parseInt(scan.nextLine());
        
        return guess;
    }  

    /**
     * @return the nameStartPoint
     */
    public String getNameStartPoint() {
        return nameStartPoint;
    }

    /**
     * @param nameStartPoint the nameStartPoint to set
     */
    public void setNameStartPoint(String nameStartPoint) {
        this.nameStartPoint = nameStartPoint;
    }

    /**
     * @return the addressStartPoint
     */
  
    public String getAddressStartPoint() {
        return addressStartPoint;
    }

    /**
     * @param addressStartPoint the addressStartPoint to set
     */
    public void setAddressStartPoint(String addressStartPoint) {
        this.addressStartPoint = addressStartPoint;
    }

    /**
     * @return the namePointArrived
     */
    public String getNamePointArrived() {
        return namePointArrived;
    }

    /**
     * @param namePointArrived the namePointArrived to set
     */
    public void setNamePointArrived(String namePointArrived) {
        this.namePointArrived = namePointArrived;
    }

    /**
     * @return the addressPointArrived
     */
    public String getAddressPointArrived() {
        return addressPointArrived;
    }

    /**
     * @param addressPointArrived the addressPointArrived to set
     */
    public void setAddressPointArrived(String addressPointArrived) {
        this.addressPointArrived = addressPointArrived;
    }
   
}
