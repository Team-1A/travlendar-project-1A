/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendarver2;

import java.util.ArrayList;

/**
 *
 * @author ACER
 */
public class Distance {
    private Location startPoint;
    private Location pointArrived;
    private int distanceKM;
    private int distanceM;
    
    public Distance(){
        startPoint= null;
        pointArrived = null;
        distanceKM = 0;
        distanceM = 0;
    }

    /**
     * @return the startPoint
     */
    public Location getStartPoint() {
        return startPoint;
    }

    /**
     * @param startPoint the startPoint to set
     */
    public void setStartPoint(Location startPoint) {
        this.startPoint = startPoint;
    }

    /**
     * @return the pointArrived
     */
    public Location getPointArrived() {
        return pointArrived;
    }

    /**
     * @param pointArrived the pointArrived to set
     */
    public void setPointArrived(Location pointArrived) {
        this.pointArrived = pointArrived;
    }

    /**
     * @return the distanceKM
     */
    public int getDistanceKM() {
        return distanceKM;
    }

    /**
     * @param distanceKM the distanceKM to set
     */
    public void setDistanceKM(int distanceKM) {
        this.distanceKM = distanceKM;
    }

    /**
     * @return the distanceM
     */
    public int getDistanceM() {
        return distanceM;
    }

    /**
     * @param distanceM the distanceM to set
     */
    public void setDistanceM(int distanceM) {
        this.distanceM = distanceM;
    }
    
    public void printRecommend(ArrayList<TransportationMode> listTransportationmode, ArrayList<Schedule> listSchedule, int choose, int index)    {
        System.out.println("Recommend Transportation mode");
        for(int j = 0; j<listTransportationmode.size(); j++){//to trace size listTransportationmode as counter j
            // keep value to hours
        int hours = listSchedule.get(choose).getListactivity().get(index).getRoute().getDistanceKM()/listTransportationmode.get(j).getVelocity();
            //keep value to minutes
        int minutes = listSchedule.get(choose).getListactivity().get(index).getRoute().getDistanceM()/(listTransportationmode.get(j).getVelocity()*(1000/60));
            // keep value to totslminutes
        int totalMinutes = (hours*60) + minutes;
        hours = hours + (minutes/60);//hours keep value from hours and minute
        minutes = minutes%60;//minutes keep value from minutes%60
        // keep value from start event time hours to hours
        hours = listSchedule.get(choose).getListactivity().get(index).getStartEventtime().getHours() - hours;
        // keep value from start event time minutes to minutes
        minutes = listSchedule.get(choose).getListactivity().get(index).getStartEventtime().getMinutes() - minutes;
        //print estimation transportation and depature
        System.out.println(listTransportationmode.get(j).getTransportation() + " estimation " + totalMinutes + ", Departure: " + hours + "." + minutes);
        }//terjadi perhitungan
         System.out.println();
    }
}
