/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendarver2;

import static java.lang.System.exit;
import java.text.*;
import java.util.*;

/**
 *
 * @author Modelling
 */
public class Travner {

    /**
     * @param args the command line arguments
     * @throws java.text.ParseException
     */
    public static void main(String[] args) throws ParseException {
        // TODO code application logic here        
        Scanner scan = new Scanner(System.in);
        SimpleDateFormat formatDate = new SimpleDateFormat("dd/M/yyyy");
        boolean loopMenu = true;
        boolean loop;
        ArrayList<TravelData> listRoute = new ArrayList<>();
        ArrayList<TransportationMode> listTransportationmode = new ArrayList<>();
        TransportationMode transportationMode1 = new TransportationMode();
        transportationMode1.setTransportation("Plane");
        transportationMode1.setVelocity(990);
        listTransportationmode.add(transportationMode1);
        TransportationMode transportationMode2 = new TransportationMode();
        transportationMode2.setTransportation("Car");
        transportationMode2.setVelocity(60);
        listTransportationmode.add(transportationMode2);
        TransportationMode transportationMode3 = new TransportationMode();
        transportationMode3.setTransportation("Motorcycle");
        transportationMode3.setVelocity(50);
        listTransportationmode.add(transportationMode3);
        TransportationMode transportationMode4 = new TransportationMode();
        transportationMode4.setTransportation("Bike");
        transportationMode4.setVelocity(15);
        listTransportationmode.add(transportationMode4);
        TransportationMode transportationMode5 = new TransportationMode();
        transportationMode5.setTransportation("Walk");
        transportationMode5.setVelocity(1);
        listTransportationmode.add(transportationMode5);
        ArrayList<Schedule> listSchedule = new ArrayList<>();
        //File dimasukan ke array list diatas
        do{
            System.out.println("Menu");
            System.out.println("1. Travel Data");
            System.out.println("2. My Schedule");
            System.out.println("3. Exit");
            System.out.print("Choose : ");
            switch(Integer.parseInt(scan.next())){
                case 1:{
                    do{
                        TravelData travelData = new TravelData();
                        System.out.println("Travel Data");
                        if(!listRoute.isEmpty())
                        {
                            for(int x=0; x<listRoute.size(); x++)
                            {
                                System.out.println((x+1) + ". " + listRoute.get(x).getRoute().getStartPoint().getNamePoint() + "(" + listRoute.get(x).getRoute().getStartPoint().getAddressPoint() + ") - " + listRoute.get(x).getRoute().getPointArrived().getNamePoint() + "(" + listRoute.get(x).getRoute().getPointArrived().getAddressPoint() + ") = " + listRoute.get(x).getRoute().getDistanceKM() + "KM");
                            }
                        }else{
                            System.out.println("List is Empty");
                        }
                        //Line ini khusus print list travel datanya
                        System.out.println("1. Input Travel Data");
                        System.out.println("2. Back");
                        System.out.print("Choose : ");
                        switch(Integer.parseInt(scan.next())){
                            case 1:{
                                listRoute.add(travelData.inputTravelData());
                                break;
                            }
                            case 2:{
                                loopMenu = false;
                                break;
                            }
                        }
                    }while(loopMenu);
                    break;
                }
                case 2:{
                    do{
                        ArrayList<Activity> listActivity = new ArrayList<>();
                        System.out.println("My Schedule");
                        System.out.println("1. Create Schedule");
                        System.out.println("2. Print My Schedule");
                        System.out.println("3. Back");
                        System.out.print("Choose : ");
                        switch(Integer.parseInt(scan.next())){
                            case 1:{
                                Schedule schedule = new Schedule();
                                Activity newActivity = new Activity();
                                System.out.print("I want to create a schedue for (dd/MM/yyyy) : ");
                                Date calendar = (Date) formatDate.parseObject(scan.next());
                                schedule.setTime(calendar);
                                loop = true;
                                do{
                                    System.out.println(formatDate.format(schedule.getTime()));
                                    schedule.printActivity(listActivity);
                                    //pertama input maupun tampilin datenya
                                    //kedua print list activity
                                    System.out.println("1. Add Activity");
                                    System.out.println("2. Finish ");
                                    System.out.println("3. Back");
                                    System.out.print("Choose : ");
                                    switch(Integer.parseInt(scan.next())){
                                        case 1:{
                                            listActivity.add(newActivity.inputActivity(listRoute));
                                            break;
                                        }
                                        case 2:{
                                            schedule.setListactivity(listActivity);
                                            listSchedule.add(schedule);
                                            Collections.sort(listActivity, Activity.activityComparator);
                                            loop = false;
                                            break;
                                        }
                                        case 3:{
                                            System.out.println("You haven't finish, Go back otherwise your schedule will be gone?");
                                            System.out.println("1. Go back");
                                            System.out.println("2. No");
                                            System.out.print("Choose : ");
                                            if(Integer.parseInt(scan.next())==2){
                                                loop = false;
                                            }
                                            break;
                                        }
                                    }    
                                }while(loop);
                                Collections.sort(listSchedule, Schedule.timeComparator);
                                break;                                   
                            }
                            case 2:{
                                loop = true;
                                if(!listSchedule.isEmpty()){
                                    do{
                                        for(int i = 0; i<listSchedule.size(); i++){
                                            System.out.println((i+1) + ". " + formatDate.format(listSchedule.get(i).getTime()));
                                        }
                                        System.out.print("Choose : ");
                                        int choose = Integer.parseInt(scan.next())-1;
                                        for(int i = 0; i<listSchedule.get(choose).getListactivity().size(); i++){
                                            System.out.println("Activity's name: " + listSchedule.get(choose).getListactivity().get(i).getEventName());
                                            System.out.println("From: " + listSchedule.get(choose).getListactivity().get(i).getRoute().getStartPoint().getNamePoint() + "@" + listSchedule.get(choose).getListactivity().get(i).getRoute().getStartPoint().getAddressPoint());
                                            System.out.println("To: " + listSchedule.get(choose).getListactivity().get(i).getRoute().getPointArrived().getNamePoint() + "@" + listSchedule.get(choose).getListactivity().get(i).getRoute().getPointArrived().getAddressPoint());
                                            System.out.println("Time: " + formatDate.format(listSchedule.get(choose).getListactivity().get(i).getStartEventtime()) + " - " + formatDate.format(listSchedule.get(choose).getListactivity().get(i).getEndEventtime()));
                                            //System.out.println("Priority Scale: " + listSchedule.get(choose).getListactivity().get(i).getPriority());
                                            listSchedule.get(choose).getListactivity().get(i).getRoute().printRecommend(listTransportationmode, listSchedule, choose, i);
                                        }
                                        System.out.println("1. See Again");
                                        System.out.println("2. Back");
                                        System.out.print("Choose : ");
                                        if(Integer.parseInt(scan.next())==2){
                                            loop = false;
                                        }
                                    }while(loop);
                                }else{
                                    System.out.println("List is Empty");
                                }
                                //Line ini khusus print list My Schedule nya
                                break;
                            }
                            case 3:{
                                loopMenu = false;
                                break;
                            }
                        }
                    }while(loopMenu);                  
                    break;
                }
                case 3 :{
                    exit(0);
                }
            }
            loopMenu = true;
        }while(loopMenu);
        
    }
    
}
