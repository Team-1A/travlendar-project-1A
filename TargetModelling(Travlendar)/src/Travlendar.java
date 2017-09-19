
import static java.lang.System.exit;
import java.util.ArrayList;
import java.util.Scanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ACER
 */
public class Travlendar {
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner scan = new Scanner(System.in);
        ArrayList<user> listUser = new ArrayList<>();
        user Pengguna = new user();
        ArrayList<Kegiatan> listKegiatan = new ArrayList<Kegiatan>();
        Kegiatan Acara = new Kegiatan();
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
                    listAcara.forEach(Schedule -> System.out.println(Schedule.getAcara()));
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
