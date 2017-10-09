/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendarver2;

import java.util.Scanner;

/**
 *
 * @author Fadhil
 */
public class TravelData {  
    private Location location;
    
    public TravelData(){
        location = null;
    }

    /**
     * @return the location
     */
    public Location getLocation() {
        return location;
    }

    /**
     * @param location the location to set
     */
    public void setLocation(Location location) {
        this.location = location;
    }
    public TravelData inputTravelData() {
        Scanner scan = new Scanner(System.in);
        TravelData travelData = new TravelData();
        Location input = new Location();
        System.out.print("Start point name : ");
        input.setNameStartPoint(scan.nextLine());
        System.out.print("Start point address : ");
        input.setAddressStartPoint(scan.nextLine());
        System.out.print("Arrival point name : ");
        input.setNamePointArrived(scan.nextLine());
        System.out.print("Arrival point address : ");
        input.setAddressPointArrived(scan.nextLine());
        System.out.print("Distance(Km) : ");
        input.setDistanceKM(Integer.parseInt(scan.nextLine()));
        System.out.print("Distance(m) : ");
        input.setDistanceM(Integer.parseInt(scan.nextLine()));
        travelData.setLocation(input);
        
        return travelData;
    }
}
