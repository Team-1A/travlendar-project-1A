/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendarver2;

import java.util.*;

/**
 *
 * @author Rohmat Dasuki
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner scan = new Scanner(System.in);
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
                            for(int x=0; x<=listRoute.size(); x++)
                            {
                                System.out.println((x+1) + listRoute.get(x).getLocation().getNameStartPoint() +listRoute.get(x).getLocation().getNamePointArrived());
                                System.out.println(listRoute.get(x).getLocation().getAddressPointArrived() +listRoute.get(x).getLocation().getAddressStartPoint());             
                            }
                        } else {
                        }
                        //Line ini khusus print list travel datanya
                        System.out.println("1. Input Travel Data");
                        System.out.println("2. Back");
                        System.out.print("Choose : ");
                        switch(Integer.parseInt(scan.next())){
                            case 1:{
                                travelData.inputTravelData();
                                break;
                            }
                            case 2:{
                                loop = false;
                                break;
                            }
                        }
                    }while(loop);
                    break;
                }
                case 2:{
                    do{
                        System.out.println("Travel Data");
                        //Line ini khusus print list travel datanya
                        System.out.println("1. Create Schedule");
                        System.out.println("2. Print My Schedule");
                        System.out.println("3. Back");
                        System.out.print("Choose : ");
                        switch(Integer.parseInt(scan.next())){
                            case 1:{
                                MySchedule schedule = new MySchedule();
                                do{
                                    loop = true;
                                    //pertama input maupun tampilin datenya
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
                                loop = true;
                                break;                                   
                            }
                            case 2:{
                                //Line ini khusus print list My Schedule nya
                                break;
                            }
                            case 3:{
                                loop = false;
                                break;
                            }
                        }
                    }while(loop);                  
                    break;
                }
                case 3 :{
                    loop = false;
                    break;
                }
            }
        }while(loop);
        
    }
    
}
