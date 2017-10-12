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
public class Main {

    /**
     * @param args the command line arguments
     * @throws java.text.ParseException
     */
    public static void main(String[] args) throws ParseException {
        // TODO code application logic here        
        Scanner scan = new Scanner(System.in);
        SimpleDateFormat formatDate = new SimpleDateFormat("dd/M/yyyy");
        boolean loopMenu = true;
        boolean loop = true;
        ArrayList<TravelData> listRoute = new ArrayList<>();
        ArrayList<TransportationMode> listTransportationmode = new ArrayList<>();
        TransportationMode transportationMode = new TransportationMode();
        transportationMode.setTransportation("Plane");
        transportationMode.setVelocity(990);
        listTransportationmode.add(transportationMode);
        transportationMode.setTransportation("Car");
        transportationMode.setVelocity(60);
        listTransportationmode.add(transportationMode);
        transportationMode.setTransportation("Motorcycle");
        transportationMode.setVelocity(50);
        listTransportationmode.add(transportationMode);
        transportationMode.setTransportation("Bike");
        transportationMode.setVelocity(15);
        listTransportationmode.add(transportationMode);
        transportationMode.setTransportation("Walk");
        transportationMode.setVelocity(1);
        listTransportationmode.add(transportationMode);
        ArrayList<MySchedule> listSchedule = new ArrayList<>();
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
                        loop = true;
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
                        loop = true;
                        System.out.println("My Schedule");
                        System.out.println("1. Create Schedule");
                        System.out.println("2. Print My Schedule");
                        System.out.println("3. Back");
                        System.out.print("Choose : ");
                        switch(Integer.parseInt(scan.next())){
                            case 1:{
                                MySchedule schedule = new MySchedule();
                                Activity newActivity = new Activity();
                                ArrayList<Activity> listActivity = new ArrayList<>();
                                System.out.print("I want to create a schedue for (dd/MM/yyyy) : ");
                                Date calendar = (Date) formatDate.parseObject(scan.next());
                                schedule.setTime(calendar);
                                loop = true;
                                do{
                                    System.out.println(formatDate.format(schedule.getTime()));
                                    schedule.printActivity(schedule);//pertama input maupun tampilin datenya
                                    //kedua print list activity
                                    System.out.println("1. Add Activity");
                                    System.out.println("2. Finish ");
                                    System.out.println("3. Back");
                                    System.out.print("Choose : ");
                                    switch(Integer.parseInt(scan.next())){
                                        case 1:{
                                            newActivity.inputActivity(listRoute);
                                            listActivity.add(newActivity);
                                            break;
                                        }
                                        case 2:{
                                            schedule.setListactivity(listActivity);
                                            listSchedule.add(schedule);
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
                                break;                                   
                            }
                            case 2:{
                                loop = true;
                                if(!listSchedule.isEmpty()){
                                    do{
                                        for(int i = 0; i<listSchedule.size(); i++){
                                            System.out.println((i+1) + ". " + listSchedule.get(i).getTime());
                                        }
                                        System.out.print("Choose : ");
                                        int choose = Integer.parseInt(scan.next())-1;
                                        for(int i = 0; i<listSchedule.get(choose).getListactivity().size(); i++){
                                            System.out.println("Activity's name: " + listSchedule.get(choose).getListactivity().get(i).getEventName());
                                            System.out.println("From: " + listSchedule.get(choose).getListactivity().get(i).getRoute().getStartPoint().getNamePoint() + "@" + listSchedule.get(choose).getListactivity().get(i).getRoute().getStartPoint().getAddressPoint());
                                            System.out.println("To: " + listSchedule.get(choose).getListactivity().get(i).getRoute().getPointArrived().getNamePoint() + "@" + listSchedule.get(choose).getListactivity().get(i).getRoute().getPointArrived().getAddressPoint());
                                            System.out.println("Time: " + formatDate.format(listSchedule.get(choose).getListactivity().get(i).getStartEventtime()) + " - " + formatDate.format(listSchedule.get(choose).getListactivity().get(i).getEndEventtime()));
        //                                    System.out.println("Priority Scale: " + listSchedule.get(choose).getListactivity().get(i).getPriority());
                                            listSchedule.get(choose).getListactivity().get(i).getRoute().printRecommend(listTransportationmode, listSchedule, choose, i);
                                        }
                                        System.out.println("1. See Again");
                                        System.out.println("2. Back");
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
