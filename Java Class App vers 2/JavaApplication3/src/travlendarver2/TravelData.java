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
        Distance route = new Distance();
        System.out.print("Start point name : ");
        route.getStartPoint().setNamePoint(scan.nextLine());
        System.out.print("Start point address : ");
        route.getStartPoint().setAddressPoint(scan.nextLine());
        System.out.print("Arrival point name : ");
        route.getPointArrived().setNamePoint(scan.nextLine());
        System.out.print("Arrival point address : ");
        route.getPointArrived().setAddressPoint(scan.nextLine());
        System.out.print("Distance(Km) : ");
        route.setDistanceKM(Integer.parseInt(scan.nextLine()));
        System.out.print("Distance(m) : ");
        route.setDistanceM(Integer.parseInt(scan.nextLine()));
        travelData.setRoute(route);
        
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
