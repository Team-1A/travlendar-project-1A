/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendarver2;

import static java.lang.System.exit;
import com.mysql.jdbc.Connection;
import static java.sql.Time.valueOf;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import travlendarver2DAO.TransportationModeDAO;
import travlendarver2DAO.DistanceDAO;
import travlendarver2DAO.ActivityDAO;
import travlendarver2DAO.LocationDAO;

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
        Connection con = TransportationModeDAO.getConnection();
        Scanner scan = new Scanner(System.in);
        SimpleDateFormat formatDate = new SimpleDateFormat("dd/M/yyyy");
        
        boolean loopMenu = true;
        boolean loop;
        
        ArrayList<TransportationMode> listTransportationmode = new ArrayList<>();
        ArrayList<Distance> listDistance = new ArrayList<>();
        ArrayList<Activity> listActivity = new ArrayList<>();
        ArrayList<Location> listLocation = new ArrayList<>();
        
        listTransportationmode = (ArrayList<TransportationMode>) TransportationModeDAO.getAll();
        
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
                        Location startLoc = new Location();
                        Location arriveLoc = new Location();
                        Distance route = new Distance();
                        
                        listLocation = (ArrayList<Location>) LocationDAO.getAll();
                        listDistance = (ArrayList<Distance>) DistanceDAO.getAll();
                        
                        System.out.println("Travel Data");
                        int x=0;
                        listLocation.forEach((Location location) -> {
                            System.out.println(location.getNamePoint() + " " + location.getAddressPoint());
                        });
                        listDistance.forEach((Distance distance) -> {
                            System.out.println(distance.getDistanceKM() + " " + distance.getDistanceM());
                        });
                        //Line ini khusus print list travel datanya
                        System.out.println("1. Input Travel Data");
                        System.out.println("2. Back");
                        System.out.print("Choose : ");
                        
                        switch(Integer.parseInt(scan.next())){
                            case 1:{
//                                listRoute.add(travelData.inputTravelData());
                                System.out.print("Start point name : ");
                                startLoc.setNamePoint(scan.nextLine());// take value name start event
                                System.out.print("Start point address : ");
                                startLoc.setAddressPoint(scan.nextLine());// take value name arrive event 
                                LocationDAO.save(startLoc);
                                
                                System.out.print("Arrival point name : ");
                                arriveLoc.setNamePoint(scan.nextLine());// take value from place name arrival 
                                System.out.print("Arrival point address : ");
                                arriveLoc.setAddressPoint(scan.nextLine());// take vlue from address name arrival
                                LocationDAO.save(arriveLoc);
                                
                                System.out.print("Distance(Km) : ");
                                route.setDistanceKM(Integer.parseInt(scan.nextLine())); //take value distance from DistanceKM
                                System.out.print("Distance(m) : ");
                                route.setDistanceM(Integer.parseInt(scan.nextLine()));//take value distance from DistanceM
                                DistanceDAO.save(route);
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
                        listLocation = (ArrayList<Location>) LocationDAO.getAll();
                        
                        System.out.println("My Schedule");
                        System.out.println("1. Create Schedule");
                        System.out.println("2. Print My Schedule");
                        System.out.println("3. Back");
                        System.out.print("Choose : ");
                        switch(Integer.parseInt(scan.next())){
                            case 1:{
                                System.out.print("I want to create a schedule for (dd/MM/yyyy) : ");
                                
                                java.sql.Date calendar = (java.sql.Date) formatDate.parseObject(scan.next());
                                loop = true;
                                
                                do{
                                    System.out.println(formatDate.format(calendar));
                                    if(listActivity != null){
                                        for(int i = 0; i<listActivity.size(); i++){// trace listActivity as counter i
                                            System.out.println("Activity's name: " + listActivity.get(i).getEventName());//print event name
                                            System.out.println("From: " + listLocation.get(listActivity.get(i).getId_StartLocation()).getNamePoint() + "(" + listLocation.get(listActivity.get(i).getId_StartLocation()).getAddressPoint() + ")");// print name start location
                                            System.out.println("To: " + listLocation.get(listActivity.get(i).getId_Destination()).getAddressPoint() + "(" + listLocation.get(listActivity.get(i).getId_Destination()).getAddressPoint() + ")");// print name arrive location
                                            System.out.println("Priority Scale: " + listActivity.get(i).getPriority());//print priority
                                        }
                                    }else{
                                        System.out.println("List is Empty");
                                    }
                                    System.out.println();
                                    //pertama input maupun tampilin datenya
                                    //kedua print list activity
                                    System.out.println("1. Add Activity");
                                    System.out.println("2. Finish ");
                                    System.out.println("3. Back");
                                    System.out.print("Choose : ");
                                    switch(Integer.parseInt(scan.next())){
                                        case 1:{
                                            Activity newActivity = new Activity();
                                            
                                            System.out.print("Activity's title : ");
                                            newActivity.setEventName(scan.nextLine());// input event name
                                            System.out.println();
                                            
                                            for(int i = 0; i<listLocation.size(); i++){
                                                // print name start location and address start location  //print name arrrive location and name arrive address location 
                                                System.out.println((i+1) + ". " + listLocation.get(i).getNamePoint() +" (" + listLocation.get(i).getAddressPoint() + ")");
                                            }
                                            System.out.print("Choose : ");
                                            //take array from travle data for start location and arrive location
                                            newActivity.setId_StartLocation(listLocation.get(Integer.parseInt(scan.nextLine())-1).getId_Location());

                                            System.out.print("\nInput start event(hh:mm) : ");
                                            //take Date time for start event
                                            newActivity.setStartEventTime(valueOf(scan.nextLine() + ":00"));

                                            System.out.print("\nInput end event(hh:mm) : ");
                                            //take Date time for end event
                                            newActivity.setEndEventTime(valueOf(scan.nextLine() + ":00"));

                                            System.out.print("Prioritas(1-5) : ");
                                            //take value priority 
                                            newActivity.setPriority(Integer.parseInt(scan.nextLine()));
                                            
                                            newActivity.setEventDate(calendar);
                                            
                                            listActivity.add(newActivity);
                                            
                                            break;
                                        }
                                        case 2:{
                                            Collections.sort(listActivity, Activity.activityComparator);
                                            
                                            listActivity.forEach((Activity activity) -> {
                                                ActivityDAO.save(activity);
                                            });
                                            
                                            loop = false;
                                            listActivity.clear();
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
                                listLocation = (ArrayList<Location>) LocationDAO.getAll();
                                java.sql.Date calendar = (java.sql.Date) formatDate.parseObject(scan.next());
                                listActivity = (ArrayList<Activity>) ActivityDAO.getByDate(calendar);
                                
                                if(listActivity != null){
                                        for(int i = 0; i<listActivity.size(); i++){// trace listActivity as counter i
                                            System.out.println("Activity's name: " + listActivity.get(i).getEventName());//print event name
                                            System.out.println("From: " + listLocation.get(listActivity.get(i).getId_StartLocation()).getNamePoint() + "(" + listLocation.get(listActivity.get(i).getId_StartLocation()).getAddressPoint() + ")");// print name start location
                                            System.out.println("To: " + listLocation.get(listActivity.get(i).getId_Destination()).getAddressPoint() + "(" + listLocation.get(listActivity.get(i).getId_Destination()).getAddressPoint() + ")");// print name arrive location
                                            System.out.println("Priority Scale: " + listActivity.get(i).getPriority());//print priority
                                            String sTime = String.format("%tR", listActivity.get(i).getStartEventTime());
                                            String[] split = sTime.split(":");
                                            int hours = Integer.parseInt(split[0]);
                                            int minutes = Integer.parseInt(split[1]);
                                            for(int j = 0; j<listTransportationmode.size(); j++){
                                                System.out.println((j+1) + ". " + listTransportationmode.get(j).getTransportation() + " Estimation");
                                            }
                                        }
                                }else{
                                    System.out.println("List is Empty");
                                }
                                System.out.println();
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
