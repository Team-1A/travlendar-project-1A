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

    public TravelData inputTravelData() {
        Scanner scan = new Scanner(System.in);
        TravelData travelData = new TravelData();
        Distance trip = new Distance();
        Location place = new Location();
        System.out.print("Start point name : ");
        place.setNamePoint(scan.nextLine());
        System.out.print("Start point address : ");
        place.setAddressPoint(scan.nextLine());
        trip.setStartPoint(place);
        System.out.print("Arrival point name : ");
        place.setNamePoint(scan.nextLine());
        System.out.print("Arrival point address : ");
        place.setAddressPoint(scan.nextLine());
        trip.setPointArrived(place);
        System.out.print("Distance(Km) : ");
        trip.setDistanceKM(Integer.parseInt(scan.nextLine()));
        System.out.print("Distance(m) : ");
        trip.setDistanceM(Integer.parseInt(scan.nextLine()));
        travelData.setRoute(trip);
        
        return travelData;
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
}
