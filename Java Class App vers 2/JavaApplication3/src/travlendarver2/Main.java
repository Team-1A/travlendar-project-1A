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
        boolean loop;
        ArrayList<TravelData> listRoute = new ArrayList<>();
        ArrayList<TransportationMode> listTransportationmode = new ArrayList<>();
        //File dimasukan ke array list diatas
        do{
            loop = true;
            System.out.println("Menu");
            System.out.println("1. Travel Data");
            System.out.println("2. My Schedule");
            System.out.println("3. Exit");
            System.out.print("Choose : ");
            switch(Integer.parseInt(scan.next())){
                case 1:{
                    do{
                        loop = true;
                        System.out.println("Travel Data");
                        //Line ini khusus print list travel datanya
                        System.out.println("1. Input Travel Data");
                        System.out.println("2. Back");
                        System.out.print("Choose : ");
                        switch(Integer.parseInt(scan.next())){
                            case 1:{
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
                        loop = true;
                        System.out.println("Travel Data");
                        //Line ini khusus print list travel datanya
                        System.out.println("1. Create Schedule");
                        System.out.println("2. Print My Schedule");
                        System.out.println("3. Back");
                        System.out.print("Choose : ");
                        switch(Integer.parseInt(scan.next())){
                            case 1:{
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
                                            //input activity
                                            break;
                                        }
                                        case 2:{
                                            //masukan ke dalam list
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
            }
        }while(loop);
        
    }
    
}
