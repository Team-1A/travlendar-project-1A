import static java.lang.System.exit;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class Travlendar {
    
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        ArrayList<Event> eventList = new ArrayList<>();
        Event event = new Event();
        
        System.out.println("1. Tambahkan Acara");
        System.out.println("2. Tampilkan list Acara");
        System.out.println("3. Exit");
        System.out.print("Pilihan : ");
        int choice = Integer.parseInt(scan.nextLine());
        System.out.println();
        do{
            switch(choice){
                case 1:{
                    eventList.add(event.inputEvent());
                    break;
                }
                case 2:{
                    Collections.sort(eventList, Event.eventComparator);
                    System.out.println("List acara(sorted by departure time)");
                    eventList.forEach(eventListElement -> System.out.println(eventListElement.getEvent()));
                    break;
                }
                case 3:{
                    exit(0);
                }
                default:{
                    System.out.println("Pilihan salah!\n");
                    System.out.print("1. Tambahkan Acara\n2. Tampilkan list Acara\n3. Exit\nPilihan : ");
                    choice = Integer.parseInt(scan.nextLine());
                    System.out.println();
                    if(choice > 0 && choice < 4) {
                        continue;
                    }
                    break;
                }
            }
            if(choice == 1 || choice == 2) {
                System.out.println("1. Tambahkan Acara");
                System.out.println("2. Tampilkan list Acara");
                System.out.println("3. Exit");
                System.out.print("Pilihan : ");
                choice = Integer.parseInt(scan.nextLine());
                System.out.println();
            }
        }while(choice!=3);
    }
}