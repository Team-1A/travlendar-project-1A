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
    private Distance route;
    
    public TravelData(){
        route = null;
    }

    /**
     * @return the route
     */
    public Distance getRoute() {
        return route;
    }

    /**
     * @param route the route to set
     */
    public void setRoute(Distance route) {
        this.route = route;
    }

    public TravelData inputTravelData() {
        Scanner scan = new Scanner(System.in);//create new object scan
        TravelData travelData = new TravelData();// create new object from class TravleData
        Distance trip = new Distance();// create new object from class Distance
        Location placeStart = new Location();//create new object placeStart from class location
        Location placeArrival = new Location();// create new object placeArrival from location
        System.out.print("Start point name : ");
        placeStart.setNamePoint(scan.nextLine());// take value name start event
        System.out.print("Start point address : ");
        placeStart.setAddressPoint(scan.nextLine());// take value name arrive event 
        trip.setStartPoint(placeStart);//take value distance from place start
        System.out.print("Arrival point name : ");
        placeArrival.setNamePoint(scan.nextLine());// take value from place name arrival 
        System.out.print("Arrival point address : ");
        placeArrival.setAddressPoint(scan.nextLine());// take vlue from address name arrival
        trip.setPointArrived(placeArrival);//take value distance from place arrival
        System.out.print("Distance(Km) : ");
        trip.setDistanceKM(Integer.parseInt(scan.nextLine())); //take value distance from DistanceKM
        System.out.print("Distance(m) : ");
        trip.setDistanceM(Integer.parseInt(scan.nextLine()));//take value distance from DistanceM
        travelData.setRoute(trip);// take value travel as trip
        
        return travelData;
    }
    
}
