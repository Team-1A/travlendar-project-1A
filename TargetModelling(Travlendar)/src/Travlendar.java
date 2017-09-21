
import static java.lang.System.exit;
import java.util.ArrayList;
import java.util.Scanner;
import java.time.Clock;

public class Travlendar {

    public static void main(String[] args) {
        // TODO code application logic here
        Scanner scan = new Scanner(System.in);
        ArrayList<User> listUser = new ArrayList<>();
        User Pengguna = new User();
        ArrayList<Kegiatan> listKegiatan = new ArrayList<>();
        Kegiatan Acara = new Kegiatan();
        
        System.out.println("1. Tambahkan Acara");
        System.out.println("2. Tampilkan list Acara");
        System.out.println("3. Exit");
        System.out.print("Pilihan: ");
        int pilihan = Integer.parseInt(scan.nextLine());
        do{
            switch(pilihan){
                case 1:{
                    listKegiatan.add(Acara.masukanAcara());
                    break;
                }
                case 2:{
                    System.out.println("List acara");
                    for(Kegiatan kegiatan : listKegiatan) {
                        System.out.println(kegiatan.getAcara());
                    }
                    break;
                }
                case 3:{
                    exit(0);
                }
                default:{
                    System.out.println("Pilihan salah");
                    break;
                }
            }
            if(pilihan == 1 || pilihan == 2) {
                System.out.println("1. Tambahkan Acara");
                System.out.println("2. Tampilkan list Acara");
                System.out.println("3. Exit");
                System.out.print("Pilihan: ");
                pilihan = Integer.parseInt(scan.nextLine());
            }
        }while(pilihan!=3);
    }
    
}
