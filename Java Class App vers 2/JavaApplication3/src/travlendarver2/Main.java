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
                                System.out.println((x+1) + listRoute.get(x).getLocation().getNameStartPoint() +listRoute.get(x).getLocation().getNamePointArrived());
                                System.out.println(listRoute.get(x).getLocation().getAddressPointArrived() +listRoute.get(x).getLocation().getAddressStartPoint());             
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
                                System.out.print("I want to create a schedue for (dd/MM/yyyy) : ");
                                Date calendar = (Date) formatDate.parseObject(scan.next());
                                loop = true;
                                do{
                                    System.out.println(calendar.getDay() + "/" + calendar.getMonth() + "/" + calendar.getYear());
                                    if(schedule.getListactivity() != null){
                                        for(int i = 0; i<schedule.getListactivity().size(); i++){
                                            System.out.println("Activity's name: " + schedule.getListactivity().get(i).getEventName());
                                            System.out.println("From: " + schedule.getListactivity().get(i).getLocation().getNameStartPoint() + "@" + schedule.getListactivity().get(i).getLocation().getAddressStartPoint());
                                            System.out.println("To: " + schedule.getListactivity().get(i).getLocation().getNamePointArrived() + "@" + schedule.getListactivity().get(i).getLocation().getAddressPointArrived());
                                            System.out.println("Priority Scale: " + schedule.getListactivity().get(i).getPriority());
                                        }
                                    }else{
                                        System.out.println("List is Empty");
                                    }//pertama input maupun tampilin datenya
                                    //kedua print list activity
                                    System.out.println("1. Add Activity");
                                    System.out.println("2. Finish ");
                                    System.out.println("3. Back");
                                    System.out.print("Choose : ");
                                    switch(Integer.parseInt(scan.next())){
                                        case 1:{
                                            schedule.addNewActivity(schedule.getListactivity(), listRoute);
                                            break;
                                        }
                                        case 2:{
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
                                        int choose = Integer.parseInt(scan.next());
                                        for(int i = 0; i<listSchedule.get(choose).getListactivity().size(); i++){
                                            System.out.println("Activity's name: " + listSchedule.get(choose).getListactivity().get(i).getEventName());
                                            System.out.println("From: " + listSchedule.get(choose).getListactivity().get(i).getLocation().getNameStartPoint() + "@" + listSchedule.get(choose).getListactivity().get(i).getLocation().getAddressStartPoint());
                                            System.out.println("To: " + listSchedule.get(choose).getListactivity().get(i).getLocation().getNamePointArrived() + "@" + listSchedule.get(choose).getListactivity().get(i).getLocation().getAddressPointArrived());
                                            System.out.println("Time: " + listSchedule.get(choose).getListactivity().get(i).getStartEventtime().getHours() + listSchedule.get(choose).getListactivity().get(i).getStartEventtime().getMinutes() + " - " + listSchedule.get(choose).getListactivity().get(i).getEndEventtime().getHours() + "." + listSchedule.get(choose).getListactivity().get(i).getEndEventtime().getMinutes());
        //                                    System.out.println("Priority Scale: " + listSchedule.get(choose).getListactivity().get(i).getPriority());
                                            System.out.println("Recommend Transportation mode");
                                            for(int j = 0; j<listTransportationmode.size(); j++){
                                                System.out.println(listTransportationmode.get(j).getTransportation());
                                            }//terjadi perhitungan
                                            System.out.println();
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
