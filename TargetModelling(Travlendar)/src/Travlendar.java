
import static java.lang.System.exit;
import java.util.ArrayList;
import java.util.Scanner;
import java.time.*;

public class Travlendar {

    public static void main(String[] args) {
        // TODO code application logic here
        Scanner scan = new Scanner(System.in);
        ArrayList<user> listUser = new ArrayList<>();
        user Pengguna = new user();
        ArrayList<kegiatan> listKegiatan = new ArrayList<>();
        kegiatan Acara = new kegiatan();
        ArrayList<lokasi> listLokasi = new ArrayList<>();
        lokasi tempat = new lokasi();
        ArrayList<transportasi> listKendaraan = new ArrayList<>();
        transportasi kendaraan = new transportasi();
        
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
                    listKegiatan.forEach(Schedule -> System.out.println(Schedule.getAcara()));
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
                System.out.println("1. Tambahkan Acara hari ini");
                System.out.println("2. Tampilkan list Acara hari ini");
                System.out.println("3. Exit");
                System.out.print("Pilihan: ");
                pilihan = Integer.parseInt(scan.nextLine());
            }
        }while(pilihan!=3);
    }
    
}
