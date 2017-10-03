import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class Transportation {
    private String transportationMode;
    String[] mode={"Mobil","Motor","Jalan Kaki","Pesawat","Transportasi Umum Darat"} ;
    String[] kec ={"60 KMpH","50 KMpH","5 KMpH","990 KMpH"," "};
    String[] umum={"Mobil","Motor"};
    String[] kecumum={"60 KMpH","40 KMpH"};
     List<String> list1 = new ArrayList<String>(Arrays.asList(mode ));
     List<String> list2 = new ArrayList<String>(Arrays.asList(kec ));
     List<String> list3 = new ArrayList<String>(Arrays.asList(umum ));
     List<String> list4 = new ArrayList<String>(Arrays.asList(kecumum ));
     List<String> fieldPribadi = new ArrayList<String>() { { addAll(list1); addAll(list2); } };
     List<String> fieldUmum = new ArrayList<String>() { { addAll(list3); addAll(list4); } };
    /*
        Constructor pada class Transportation
    */
    public Transportation(){
        transportationMode = null;
    }
    /*
        Getter dan Setter pada class Transportation
    */
    public String getTransportationMode() {
        return transportationMode;
    }
    public void setTransportationMode(String transportationMode) {
        this.transportationMode = transportationMode;
    }
    /*
        Method inputTransportation() berfungsi untuk melakukan input moda transportasi dan kecepatan rata-rata
    */
    public Transportation inputTransportation() {
        Transportation transportation = new Transportation();
        Scanner scan = new Scanner(System.in);
        System.out.print("Masukan moda transportasi : ");
        String vehicle = scan.nextLine();
        transportation.setTransportationMode(vehicle);
        
        return transportation;
    }
}